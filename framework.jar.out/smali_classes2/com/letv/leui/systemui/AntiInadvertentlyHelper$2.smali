.class Lcom/letv/leui/systemui/AntiInadvertentlyHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "AntiInadvertentlyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/systemui/AntiInadvertentlyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$2;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$2;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-static {v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->-get3(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$2;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-static {v1}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->-get4(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    :cond_0
    return-void
.end method
