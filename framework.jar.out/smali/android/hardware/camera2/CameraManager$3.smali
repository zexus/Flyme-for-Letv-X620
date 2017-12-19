.class Landroid/hardware/camera2/CameraManager$3;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager;->closeFlashlightWhenShutdown(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/CameraManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/CameraManager;

    .prologue
    .line 1264
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$3;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1266
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$3;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->-get0(Landroid/hardware/camera2/CameraManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$3;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v1}, Landroid/hardware/camera2/CameraManager;->-get2(Landroid/hardware/camera2/CameraManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1265
    return-void
.end method
