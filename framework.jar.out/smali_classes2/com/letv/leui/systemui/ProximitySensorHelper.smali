.class public Lcom/letv/leui/systemui/ProximitySensorHelper;
.super Ljava/lang/Object;
.source "ProximitySensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;,
        Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;,
        Lcom/letv/leui/systemui/ProximitySensorHelper$1;,
        Lcom/letv/leui/systemui/ProximitySensorHelper$2;,
        Lcom/letv/leui/systemui/ProximitySensorHelper$3;
    }
.end annotation


# static fields
.field private static final PROXIMITY_THRESHOLD:F = 0.5f

.field private static final SENSOR_TIME_OUT:J = 0x12cL

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private SensorTimeOutRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

.field private mStateCallback:Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;

.field private taskFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/systemui/ProximitySensorHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->SensorTimeOutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/systemui/ProximitySensorHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    return-object v0
.end method

.method static synthetic -get4(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mStateCallback:Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;

    return-object v0
.end method

.method static synthetic -get5(Lcom/letv/leui/systemui/ProximitySensorHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->taskFinishedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/leui/systemui/ProximitySensorHelper;Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;)Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;
    .locals 0

    iput-object p1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->NONE:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    .line 75
    new-instance v0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/systemui/ProximitySensorHelper$1;-><init>(Lcom/letv/leui/systemui/ProximitySensorHelper;)V

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 100
    new-instance v0, Lcom/letv/leui/systemui/ProximitySensorHelper$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/systemui/ProximitySensorHelper$2;-><init>(Lcom/letv/leui/systemui/ProximitySensorHelper;)V

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->SensorTimeOutRunnable:Ljava/lang/Runnable;

    .line 113
    new-instance v0, Lcom/letv/leui/systemui/ProximitySensorHelper$3;

    invoke-direct {v0, p0}, Lcom/letv/leui/systemui/ProximitySensorHelper$3;-><init>(Lcom/letv/leui/systemui/ProximitySensorHelper;)V

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->taskFinishedRunnable:Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 44
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mProximitySensor:Landroid/hardware/Sensor;

    .line 45
    sget-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->STANDBY:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    .line 40
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProximitySensorHelper.mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public setStateCallback(Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mStateCallback:Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;

    .line 71
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 49
    sget-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start(),mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    sget-object v2, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->STANDBY:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    if-ne v0, v2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 53
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->SensorTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->SensorTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    sget-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->LISTENING:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 48
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop(),mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    sget-object v2, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->LISTENING:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    sget-object v2, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->RELEASE:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    if-ne v0, v2, :cond_2

    .line 64
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 65
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->SensorTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    sget-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->STANDBY:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 60
    return-void

    .line 63
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    sget-object v2, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->TIME_OUT:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
