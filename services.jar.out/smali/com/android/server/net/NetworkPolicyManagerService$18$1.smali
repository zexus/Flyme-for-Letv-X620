.class Lcom/android/server/net/NetworkPolicyManagerService$18$1;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkPolicyManagerService$18;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/net/NetworkPolicyManagerService$18;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService$18;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/net/NetworkPolicyManagerService$18;

    .prologue
    .line 3040
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$18$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3043
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3044
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3045
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$18$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$18;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3046
    const-string/jumbo v1, "com.letv.android.supermanager"

    const-string/jumbo v2, "com.letv.android.supermanager.activity.FlowNetworkControlActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3049
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$18$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$18;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3042
    return-void

    .line 3048
    :cond_0
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
