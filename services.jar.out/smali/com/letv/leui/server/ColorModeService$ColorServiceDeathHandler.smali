.class Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
.super Ljava/lang/Object;
.source "ColorModeService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/server/ColorModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorServiceDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/letv/leui/server/ColorModeService;


# direct methods
.method public constructor <init>(Lcom/letv/leui/server/ColorModeService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/server/ColorModeService;
    .param p2, "Cb"    # Landroid/os/IBinder;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;->this$0:Lcom/letv/leui/server/ColorModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p2, p0, Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;->mCb:Landroid/os/IBinder;

    .line 208
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 214
    const-string/jumbo v0, "ColorModeService"

    const-string/jumbo v1, "ColorModeService Client binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;->this$0:Lcom/letv/leui/server/ColorModeService;

    invoke-virtual {v0}, Lcom/letv/leui/server/ColorModeService;->revertToSettingsActiveMode()V

    .line 212
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
