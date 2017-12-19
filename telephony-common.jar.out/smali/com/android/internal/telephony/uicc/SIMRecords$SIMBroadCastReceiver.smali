.class Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/SIMRecords;

    .prologue
    .line 3138
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/SIMRecords;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 3140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3141
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3142
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->-wrap1(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    .line 3139
    :cond_0
    :goto_0
    return-void

    .line 3144
    :cond_1
    const-string/jumbo v5, "action_pin_dismiss"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3145
    const-string/jumbo v5, "simslot"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3146
    .local v2, "simId":I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget v5, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    if-ne v2, v5, :cond_0

    .line 3147
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SIMRecords receive pin dismiss intent for slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3150
    .end local v2    # "simId":I
    :cond_2
    const-string/jumbo v5, "action_melock_dismiss"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3151
    const-string/jumbo v5, "simslot"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3152
    .restart local v2    # "simId":I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget v5, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    if-ne v2, v5, :cond_0

    .line 3153
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SIMRecords receive SIM ME lock dismiss intent for slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3156
    .end local v2    # "simId":I
    :cond_3
    const-string/jumbo v5, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3157
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->-wrap0(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    .line 3164
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->-get0(Lcom/android/internal/telephony/uicc/SIMRecords;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget v6, v6, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    aget-object v5, v5, v6

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3167
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string/jumbo v6, "wipeAllSIMContacts ACTION_SHUTDOWN_IPO: reset mCspPlmnEnabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3168
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 3172
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->-get3(Lcom/android/internal/telephony/uicc/SIMRecords;)Lcom/mediatek/common/telephony/ITelephonyExt;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/common/telephony/ITelephonyExt;->isSetLanguageBySIM()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3173
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-static {v5, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->-set1(Lcom/android/internal/telephony/uicc/SIMRecords;Z)Z

    .line 3174
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-static {v5, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->-set0(Lcom/android/internal/telephony/uicc/SIMRecords;[B)[B

    .line 3177
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 3178
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string/jumbo v6, "wipeAllSIMContacts ACTION_SHUTDOWN_IPO"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3184
    :cond_5
    const-string/jumbo v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3185
    const-string/jumbo v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3186
    .local v1, "reasonExtra":Ljava/lang/String;
    const-string/jumbo v5, "slot"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3187
    .local v3, "slot":I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SIM_STATE_CHANGED: slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3188
    const-string/jumbo v5, "PUK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3189
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget v5, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    if-ne v3, v5, :cond_0

    .line 3190
    const/4 v4, 0x0

    .line 3191
    .local v4, "strPuk1Count":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/uicc/SIMRecords;->SIMRECORD_PROPERTY_RIL_PUK1:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget v6, v6, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    aget-object v5, v5, v6

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3192
    .local v4, "strPuk1Count":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SIM_STATE_CHANGED: strPuk1Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3197
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string/jumbo v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 3199
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
