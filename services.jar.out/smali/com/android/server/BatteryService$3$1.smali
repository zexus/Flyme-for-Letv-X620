.class Lcom/android/server/BatteryService$3$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$3;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/BatteryService$3;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/server/BatteryService$3$1;->this$1:Lcom/android/server/BatteryService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/server/BatteryService$3$1;->this$1:Lcom/android/server/BatteryService$3;

    iget-object v0, v0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get10(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 249
    return-void
.end method
