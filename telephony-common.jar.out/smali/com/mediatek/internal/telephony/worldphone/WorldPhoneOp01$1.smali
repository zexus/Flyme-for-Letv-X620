.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOp01.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 199
    const-string/jumbo v6, "[Receiver]+"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "action":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 203
    const-string/jumbo v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 204
    const-string/jumbo v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "simStatus":Ljava/lang/String;
    const-string/jumbo v6, "slot"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 206
    .local v4, "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set5(I)I

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " simStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "sMajorSim:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get14()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v6, "IMSI"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 209
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get14()I

    move-result v6

    const/16 v7, -0x63

    if-ne v6, v7, :cond_0

    .line 210
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set5(I)I

    .line 212
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set15(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 213
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get27()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 214
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get10()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get27()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7, v4, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v7

    aput-object v7, v6, v4

    .line 219
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get10()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    aget-object v6, v6, v4

    if-eqz v6, :cond_5

    .line 220
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get11()[Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get10()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 225
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get9()[I

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-static {v7, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap2(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)I

    move-result v7

    aput v7, v6, v4

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sImsi["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get11()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get12()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get14()I

    move-result v6

    if-ne v4, v6, :cond_b

    .line 230
    const-string/jumbo v6, "Major SIM"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 231
    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get11()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap3(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set16(I)I

    .line 232
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get8()[Z

    move-result-object v6

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_2

    .line 233
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get8()[Z

    move-result-object v6

    aput-boolean v8, v6, v4

    .line 234
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get28()I

    move-result v6

    if-eq v6, v9, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get28()I

    move-result v6

    if-ne v6, v11, :cond_8

    .line 235
    :cond_1
    invoke-static {v8}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set13(I)I

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sSwitchModemCauseType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get25()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get17()I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 238
    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    const/16 v7, 0x65

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap6(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)V

    .line 254
    :cond_2
    :goto_0
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get24()[Z

    move-result-object v6

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_3

    .line 255
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get24()[Z

    move-result-object v6

    aput-boolean v8, v6, v4

    .line 256
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get15()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IMSI fot slot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " now ready, resuming PLMN:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 258
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get15()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v8

    .line 257
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 258
    const-string/jumbo v7, " with ID:"

    .line 257
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 258
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get23()[I

    move-result-object v7

    aget v7, v7, v4

    .line 257
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 259
    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-static {v6, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap9(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)V

    .line 390
    .end local v3    # "simStatus":Ljava/lang/String;
    .end local v4    # "slotId":I
    :cond_3
    :goto_1
    const-string/jumbo v6, "[Receiver]-"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 198
    return-void

    .line 216
    .restart local v3    # "simStatus":Ljava/lang/String;
    .restart local v4    # "slotId":I
    :cond_4
    const-string/jumbo v6, "Null sUiccController"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 217
    return-void

    .line 222
    :cond_5
    const-string/jumbo v6, "Null sIccRecordsInstance"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 223
    return-void

    .line 239
    :cond_6
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get17()I

    move-result v6

    if-ne v6, v11, :cond_7

    .line 240
    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    const/16 v7, 0x64

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap6(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)V

    goto :goto_0

    .line 242
    :cond_7
    const-string/jumbo v6, "Region unknown"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_8
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get28()I

    move-result v6

    if-ne v6, v12, :cond_2

    .line 245
    const/16 v6, 0xff

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set13(I)I

    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sSwitchModemCauseType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get25()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 247
    const-string/jumbo v6, "ro.mtk_world_phone_policy"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 248
    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    const/16 v7, 0x64

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap6(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)V

    goto/16 :goto_0

    .line 250
    :cond_9
    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    const/16 v7, 0x65

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap6(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)V

    goto/16 :goto_0

    .line 261
    :cond_a
    const-string/jumbo v6, "sNwPlmnStrings is Null"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :cond_b
    const-string/jumbo v6, "Not major SIM"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 266
    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get11()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap3(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;Ljava/lang/String;)I

    .line 267
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get24()[Z

    move-result-object v6

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_3

    .line 268
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get24()[Z

    move-result-object v6

    aput-boolean v8, v6, v4

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IMSI fot slot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " now ready, resuming with ID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 270
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get23()[I

    move-result-object v7

    aget v7, v7, v4

    .line 269
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get4()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get23()[I

    move-result-object v7

    aget v7, v7, v4

    invoke-interface {v6, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 274
    :cond_c
    const-string/jumbo v6, "ABSENT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 275
    invoke-static {v10}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set4(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get11()[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    aput-object v7, v6, v4

    .line 277
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get8()[Z

    move-result-object v6

    aput-boolean v9, v6, v4

    .line 278
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get13()[Z

    move-result-object v6

    aput-boolean v8, v6, v4

    .line 279
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get24()[Z

    move-result-object v6

    aput-boolean v8, v6, v4

    .line 280
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get9()[I

    move-result-object v6

    aput v8, v6, v4

    .line 281
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get14()I

    move-result v6

    if-ne v4, v6, :cond_d

    .line 282
    const-string/jumbo v6, "Major SIM removed, no world phone service"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 283
    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap8(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    .line 284
    invoke-static {v8}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set16(I)I

    .line 285
    invoke-static {v9}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set2(I)I

    .line 286
    const/16 v6, -0x63

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set5(I)I

    goto/16 :goto_1

    .line 288
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SIM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not major SIM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 291
    .end local v3    # "simStatus":Ljava/lang/String;
    .end local v4    # "slotId":I
    :cond_e
    const-string/jumbo v6, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 292
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 293
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set12(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 294
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get22()Landroid/telephony/ServiceState;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 295
    const-string/jumbo v6, "slot"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 296
    .restart local v4    # "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get22()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set6(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get22()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set17(I)I

    .line 298
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get22()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set11(I)I

    .line 299
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get22()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set10(I)I

    .line 300
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get22()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set1(I)I

    .line 301
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get22()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set9(I)I

    .line 302
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get22()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set8(I)I

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get9()[I

    move-result-object v7

    aget v7, v7, v4

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->iccCardTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sMajorSim: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get14()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sPlmnSs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get16()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sVoiceRegState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get29()I

    move-result v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sRilVoiceRegState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get21()I

    move-result v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sRilVoiceRadioTech: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get22()Landroid/telephony/ServiceState;

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get20()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sDataRegState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get5()I

    move-result v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sRilDataRegState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get19()I

    move-result v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 312
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sRilDataRadioTech: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get22()Landroid/telephony/ServiceState;

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get18()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 313
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sIsAutoSelectEnable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get12()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get12()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get14()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 317
    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap1(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 318
    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap4(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    goto/16 :goto_1

    .line 319
    :cond_f
    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap0(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 320
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get16()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set4(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap8(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    .line 322
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get13()[Z

    move-result-object v6

    aput-boolean v8, v6, v4

    goto/16 :goto_1

    .line 326
    .end local v4    # "slotId":I
    :cond_10
    const-string/jumbo v6, "Null sServiceState"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 329
    :cond_11
    const-string/jumbo v6, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 330
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get6()I

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_13

    .line 331
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 332
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get4()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v6

    aget-object v6, v6, v8

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 333
    const-string/jumbo v6, "Reload to FDD CSFB modem"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 335
    :cond_12
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get4()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-static {v6, v12}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 336
    const-string/jumbo v6, "Reload to WG modem"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 338
    :cond_13
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get6()I

    move-result v6

    const/16 v7, 0x65

    if-ne v6, v7, :cond_3

    .line 339
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 340
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get4()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v6

    aget-object v6, v6, v8

    const/4 v7, 0x6

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 341
    const-string/jumbo v6, "Reload to TDD CSFB modem"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 343
    :cond_14
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get4()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v6

    aget-object v6, v6, v8

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 344
    const-string/jumbo v6, "Reload to TG modem"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 347
    :cond_15
    const-string/jumbo v6, "android.intent.action.ACTION_ADB_SWITCH_MODEM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 348
    const-string/jumbo v6, "mdType"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 349
    .local v5, "toModem":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "toModem: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 350
    if-eq v5, v12, :cond_16

    .line 351
    const/4 v6, 0x4

    if-ne v5, v6, :cond_17

    .line 354
    :cond_16
    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-virtual {v6, v8, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->setModemSelectionMode(II)V

    goto/16 :goto_1

    .line 352
    :cond_17
    const/4 v6, 0x5

    if-eq v5, v6, :cond_16

    .line 353
    const/4 v6, 0x6

    if-eq v5, v6, :cond_16

    .line 356
    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-virtual {v6, v9, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->setModemSelectionMode(II)V

    goto/16 :goto_1

    .line 358
    .end local v5    # "toModem":I
    :cond_18
    const-string/jumbo v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 359
    const-string/jumbo v6, "state"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_19

    .line 360
    const-string/jumbo v6, "Leave flight mode"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 361
    invoke-static {v10}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set4(Ljava/lang/String;)Ljava/lang/String;

    .line 362
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get1()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 363
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get13()[Z

    move-result-object v6

    aput-boolean v8, v6, v1

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 366
    .end local v1    # "i":I
    :cond_19
    const-string/jumbo v6, "Enter flight mode"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 367
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get1()I

    move-result v6

    if-ge v1, v6, :cond_1a

    .line 368
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get8()[Z

    move-result-object v6

    aput-boolean v9, v6, v1

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 370
    :cond_1a
    invoke-static {v8}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set7(I)I

    goto/16 :goto_1

    .line 372
    .end local v1    # "i":I
    :cond_1b
    const-string/jumbo v6, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 374
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set5(I)I

    .line 376
    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap5(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    goto/16 :goto_1

    .line 378
    :cond_1c
    const-string/jumbo v6, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 379
    const-string/jumbo v6, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 380
    .local v2, "sapState":I
    if-ne v2, v11, :cond_1d

    .line 381
    const-string/jumbo v6, "BT_SAP connection state is CONNECTED"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 382
    invoke-static {v9}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set0(I)I

    goto/16 :goto_1

    .line 383
    :cond_1d
    if-nez v2, :cond_1e

    .line 384
    const-string/jumbo v6, "BT_SAP connection state is DISCONNECTED"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 385
    invoke-static {v8}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set0(I)I

    goto/16 :goto_1

    .line 387
    :cond_1e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BT_SAP connection state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
