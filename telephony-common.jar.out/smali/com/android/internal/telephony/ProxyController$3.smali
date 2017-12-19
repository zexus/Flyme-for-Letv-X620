.class Lcom/android/internal/telephony/ProxyController$3;
.super Landroid/content/BroadcastReceiver;
.source "ProxyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ProxyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ProxyController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ProxyController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController$3;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 1007
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "action":Ljava/lang/String;
    const/4 v2, -0x1

    .line 1009
    .local v2, "wmState":I
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$3;->this$0:Lcom/android/internal/telephony/ProxyController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mWorldModeReceiver: action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ProxyController;->-wrap0(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 1010
    const-string/jumbo v3, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    const-string/jumbo v3, "worldModeState"

    .line 1012
    const/4 v4, -0x1

    .line 1011
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1013
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$3;->this$0:Lcom/android/internal/telephony/ProxyController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wmState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ProxyController;->-wrap0(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 1014
    if-ne v2, v6, :cond_0

    .line 1015
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$3;->this$0:Lcom/android/internal/telephony/ProxyController;

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v3, :cond_0

    .line 1016
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$3;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {v3}, Lcom/android/internal/telephony/ProxyController;->-get0(Lcom/android/internal/telephony/ProxyController;)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1018
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$3;->this$0:Lcom/android/internal/telephony/ProxyController;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController$3;->this$0:Lcom/android/internal/telephony/ProxyController;

    iget-object v4, v4, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1019
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$3;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {v3}, Lcom/android/internal/telephony/ProxyController;->-wrap6(Lcom/android/internal/telephony/ProxyController;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 1021
    :catch_0
    move-exception v1

    .line 1022
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$3;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {v3}, Lcom/android/internal/telephony/ProxyController;->-wrap6(Lcom/android/internal/telephony/ProxyController;)V

    goto :goto_0
.end method
