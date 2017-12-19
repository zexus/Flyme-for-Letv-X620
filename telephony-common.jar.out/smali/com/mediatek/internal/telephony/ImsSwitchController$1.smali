.class Lcom/mediatek/internal/telephony/ImsSwitchController$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 423
    if-nez p2, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIntentReceiver Receive action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap4(Ljava/lang/String;)V

    .line 427
    const-string/jumbo v5, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 428
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap3(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    .line 429
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v5, v8}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-set1(Lcom/mediatek/internal/telephony/ImsSwitchController;Z)Z

    .line 422
    :cond_1
    :goto_0
    return-void

    .line 430
    :cond_2
    const-string/jumbo v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 431
    const-string/jumbo v5, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 430
    if-eqz v5, :cond_4

    .line 432
    :cond_3
    const-string/jumbo v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "state":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 434
    const-string/jumbo v5, "phone"

    const/4 v7, -0x1

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 435
    const-string/jumbo v5, "phoneType"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 436
    const-class v5, Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {v5, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneConstants$State;

    .line 433
    invoke-static {v6, v7, v8, v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap5(Lcom/mediatek/internal/telephony/ImsSwitchController;IILcom/android/internal/telephony/PhoneConstants$State;)V

    goto :goto_0

    .line 437
    .end local v3    # "state":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 438
    const-string/jumbo v5, "wifi_state"

    .line 439
    const/4 v6, 0x4

    .line 438
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 440
    .local v4, "wifiState":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v5, v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap6(Lcom/mediatek/internal/telephony/ImsSwitchController;I)V

    goto :goto_0

    .line 441
    .end local v4    # "wifiState":I
    :cond_5
    const-string/jumbo v5, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 442
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v5

    .line 443
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v6

    .line 442
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->getDcSwitchState(I)Ljava/lang/String;

    move-result-object v3

    .line 444
    .restart local v3    # "state":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap1(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z

    move-result v1

    .line 445
    .local v1, "isVoLTEEnable":Z
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap2(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z

    move-result v2

    .line 446
    .local v2, "isVoWiFiEnable":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handle ACTION_SET_RADIO_CAPABILITY_DONE: data state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 447
    const-string/jumbo v6, " isVoLTEEnable:"

    .line 446
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 447
    const-string/jumbo v6, " isVoWiFiEnable:"

    .line 446
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap4(Ljava/lang/String;)V

    .line 449
    if-nez v1, :cond_6

    if-eqz v2, :cond_1

    .line 450
    :cond_6
    const-string/jumbo v5, "attaching"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 451
    const-string/jumbo v5, "attached"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 449
    if-eqz v5, :cond_1

    .line 452
    :cond_7
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 453
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v6

    .line 452
    const/4 v7, 0x1

    invoke-static {v5, v7, v6}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap7(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V

    goto/16 :goto_0

    .line 455
    .end local v1    # "isVoLTEEnable":Z
    .end local v2    # "isVoWiFiEnable":Z
    .end local v3    # "state":Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 456
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/ImsSwitchController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/ImsSwitchController;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
