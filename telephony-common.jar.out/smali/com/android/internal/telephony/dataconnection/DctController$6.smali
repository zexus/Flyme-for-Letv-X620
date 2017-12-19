.class Lcom/android/internal/telephony/dataconnection/DctController$6;
.super Landroid/content/BroadcastReceiver;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 1773
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$6;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1776
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1777
    .local v0, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap7(Ljava/lang/String;)V

    .line 1778
    const-string/jumbo v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1779
    const-string/jumbo v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1778
    if-eqz v2, :cond_2

    .line 1781
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$6;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->-get4(Lcom/android/internal/telephony/dataconnection/DctController;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1782
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$6;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->-get3(Lcom/android/internal/telephony/dataconnection/DctController;)[Landroid/net/NetworkFactory;

    move-result-object v2

    aget-object v2, v2, v1

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->updateGroupId()V

    .line 1781
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1784
    :cond_1
    const-string/jumbo v2, "receive set radio tech done, update group DSDS/DSDA mode"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap7(Ljava/lang/String;)V

    .line 1775
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
