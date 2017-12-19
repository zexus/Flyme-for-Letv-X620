.class public interface abstract Lcom/android/server/power/plug/IPowerXtendPlugIn;
.super Ljava/lang/Object;
.source "IPowerXtendPlugIn.java"

# interfaces
.implements Lcom/android/server/power/plug/IPlugIn;


# virtual methods
.method public abstract handleBatteryStateChanged()V
.end method

.method public abstract handleLowPowerModeChanged()V
.end method

.method public abstract onBootCompleted()V
.end method

.method public abstract setXTendModeForTest(I)Z
.end method

.method public abstract systemReady(Lcom/android/server/power/PowerManagerService;Landroid/os/BatteryManagerInternal;)V
.end method
