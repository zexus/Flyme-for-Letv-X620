.class Lcom/android/server/camera/CameraService$2;
.super Landroid/hardware/ICameraServiceProxy$Stub;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraService;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/camera/CameraService;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/camera/CameraService$2;->this$0:Lcom/android/server/camera/CameraService;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public pingForUserUpdate()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/camera/CameraService$2;->this$0:Lcom/android/server/camera/CameraService;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/android/server/camera/CameraService;->-wrap0(Lcom/android/server/camera/CameraService;I)V

    .line 102
    return-void
.end method
