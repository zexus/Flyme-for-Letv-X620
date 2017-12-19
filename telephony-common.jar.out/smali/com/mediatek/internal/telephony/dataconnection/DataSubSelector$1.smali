.class Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;
.super Landroid/content/BroadcastReceiver;
.source "DataSubSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onReceive: action="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v12, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 117
    const-string/jumbo v12, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, "simStatus":Ljava/lang/String;
    const-string/jumbo v12, "slot"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 119
    .local v11, "slotId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "slotId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " simStatus: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " mIsNeedWaitImsi: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 120
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v14

    .line 119
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 120
    const-string/jumbo v14, " mIsNeedWaitUnlock: "

    .line 119
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 121
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v15, "persist.radio.unlock"

    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v14

    .line 119
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v12, "IMSI"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 124
    const-string/jumbo v12, "1"

    .line 123
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 126
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 127
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 128
    const-string/jumbo v12, "OP01"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 129
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "get imsi and need to check op01 again"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)Landroid/content/Intent;

    .line 134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 144
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 145
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "get imsi and need to check op02Roaming again"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    move-result v12

    if-nez v12, :cond_3

    .line 148
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 189
    :cond_3
    :goto_1
    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->clearRilMccMnc(I)V

    .line 110
    .end local v10    # "simStatus":Ljava/lang/String;
    .end local v11    # "slotId":I
    :cond_4
    :goto_2
    return-void

    .line 137
    .restart local v10    # "simStatus":Ljava/lang/String;
    .restart local v11    # "slotId":I
    :cond_5
    const-string/jumbo v12, "OP02"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "get imsi and need to check op02 again"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 140
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    goto :goto_0

    .line 151
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock.roaming"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    .line 151
    if-eqz v12, :cond_3

    .line 153
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "get imsi because unlock"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v12, "phoneEx"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    .line 155
    invoke-static {v12}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v6

    .line 157
    .local v6, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v6, :cond_3

    .line 159
    :try_start_0
    invoke-interface {v6}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isCapabilitySwitching()Z

    move-result v12

    if-nez v12, :cond_3

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock"

    const-string/jumbo v14, "false"

    invoke-static {v12, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap10(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v12, "OP01"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap13(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 179
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock.roaming"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock.roaming"

    const-string/jumbo v14, "false"

    invoke-static {v12, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap10(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 184
    :catch_0
    move-exception v3

    .line 185
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 166
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_9
    :try_start_1
    const-string/jumbo v12, "OP02"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 168
    const-string/jumbo v12, "ro.mtk_disable_cap_switch"

    const/4 v13, 0x0

    .line 167
    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap15(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_3

    .line 171
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap14(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    goto :goto_3

    .line 173
    :cond_b
    const-string/jumbo v12, "OM"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap12(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_3

    .line 175
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap16(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 190
    .end local v6    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_d
    const-string/jumbo v12, "ABSENT"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 192
    const-string/jumbo v12, "0"

    .line 191
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    .line 193
    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->clearRilMccMnc(I)V

    goto/16 :goto_2

    .line 194
    :cond_e
    const-string/jumbo v12, "NOT_READY"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 196
    const-string/jumbo v12, "0"

    .line 195
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 198
    .end local v10    # "simStatus":Ljava/lang/String;
    .end local v11    # "slotId":I
    :cond_f
    const-string/jumbo v12, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 199
    const-string/jumbo v12, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 198
    if-eqz v12, :cond_17

    .line 200
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mIsNeedWaitUnlock = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v15, "persist.radio.unlock"

    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 201
    const-string/jumbo v14, ", mIsNeedWaitUnlockRoaming = "

    .line 200
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 201
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .line 202
    const-string/jumbo v15, "persist.radio.unlock.roaming"

    .line 201
    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v14

    .line 200
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock.roaming"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    .line 203
    if-eqz v12, :cond_4

    .line 205
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock"

    const-string/jumbo v14, "false"

    invoke-static {v12, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap10(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v12, "OP01"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap13(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 222
    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock.roaming"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 223
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock.roaming"

    const-string/jumbo v14, "false"

    invoke-static {v12, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap10(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    goto/16 :goto_2

    .line 209
    :cond_13
    const-string/jumbo v12, "OP02"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 210
    const-string/jumbo v12, "ro.mtk_disable_cap_switch"

    .line 211
    const/4 v13, 0x0

    .line 210
    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap15(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_4

    .line 214
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap14(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    goto :goto_4

    .line 216
    :cond_15
    const-string/jumbo v12, "OM"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap12(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_4

    .line 218
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 219
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap16(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 227
    :cond_17
    const-string/jumbo v12, "mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 228
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "ACTION_LOCATED_PLMN_CHANGED"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 229
    const-string/jumbo v12, "ro.mtk_disable_cap_switch"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_4

    .line 230
    const-string/jumbo v12, "OP02"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 231
    const-string/jumbo v12, "plmn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 232
    .local v8, "plmn":Ljava/lang/String;
    if-eqz v8, :cond_4

    const-string/jumbo v12, ""

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "plmn = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v12, "first_time_roaming"

    const/4 v13, 0x0

    .line 234
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 236
    .local v9, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 238
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v12, "need_to_execute_roaming"

    const/4 v13, 0x1

    .line 237
    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 239
    .local v5, "firstTimeRoaming":Z
    const-string/jumbo v12, "460"

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_19

    .line 240
    if-eqz v5, :cond_4

    .line 241
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-nez v12, :cond_18

    .line 242
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    goto/16 :goto_2

    .line 246
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    goto/16 :goto_2

    .line 251
    :cond_19
    if-nez v5, :cond_4

    .line 253
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "reset roaming flag"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 254
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 261
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "firstTimeRoaming":Z
    .end local v8    # "plmn":Ljava/lang/String;
    .end local v9    # "preference":Landroid/content/SharedPreferences;
    :cond_1a
    const-string/jumbo v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v12, "state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1c

    const/4 v12, 0x1

    :goto_5
    invoke-static {v13, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 263
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ACTION_AIRPLANE_MODE_CHANGED, enabled = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 265
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get2(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set2(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 267
    const-string/jumbo v12, "OP01"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 268
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap13(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 282
    :cond_1b
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 283
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 284
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    goto/16 :goto_2

    .line 262
    :cond_1c
    const/4 v12, 0x0

    goto :goto_5

    .line 269
    :cond_1d
    const-string/jumbo v12, "OP02"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 270
    const-string/jumbo v12, "ro.mtk_disable_cap_switch"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 272
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap15(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_6

    .line 274
    :cond_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap14(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    goto :goto_6

    .line 276
    :cond_1f
    const-string/jumbo v12, "OM"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap12(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_6

    .line 278
    :cond_20
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap16(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 287
    :cond_21
    const-string/jumbo v12, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 288
    const-string/jumbo v12, "subscription"

    .line 289
    const/4 v13, -0x1

    .line 288
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 290
    .local v7, "nDefaultDataSubId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mIsUserConfirmDefaultData/nDefaultDataSubId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 291
    const-string/jumbo v14, "/"

    .line 290
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 293
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v12

    .line 292
    if-eqz v12, :cond_22

    .line 294
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 298
    :cond_22
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)V

    goto/16 :goto_2

    .line 299
    .end local v7    # "nDefaultDataSubId":I
    :cond_23
    const-string/jumbo v12, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 304
    const-string/jumbo v12, "ro.mtk_c2k_support"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 306
    const-string/jumbo v12, "simDetectStatus"

    .line 307
    const/4 v13, 0x4

    .line 305
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 308
    .local v2, "detectedType":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DataSubSelector detectedType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "OP01"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 310
    const/4 v12, 0x4

    if-ne v2, v12, :cond_24

    .line 311
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap13(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 314
    :cond_24
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "OM"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 315
    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap2(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 316
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 317
    const/4 v12, 0x4

    if-ne v2, v12, :cond_4

    .line 318
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap11(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 321
    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap11(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_2
.end method
