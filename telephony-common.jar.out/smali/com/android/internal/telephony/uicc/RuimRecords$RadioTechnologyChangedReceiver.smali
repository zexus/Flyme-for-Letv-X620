.class Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioTechnologyChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 1427
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1433
    const-string/jumbo v5, "phone"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1434
    .local v3, "phoneid":I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[ACTION_RADIO_TECHNOLOGY_CHANGED] phoneid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1435
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 1436
    const-string/jumbo v2, "CDMA"

    .line 1438
    .local v2, "cdmaPhoneName":Ljava/lang/String;
    const-string/jumbo v5, "phoneName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1439
    .local v1, "activePhoneName":Ljava/lang/String;
    const-string/jumbo v5, "subscription"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1440
    .local v4, "subid":I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[ACTION_RADIO_TECHNOLOGY_CHANGED] activePhoneName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1441
    const-string/jumbo v7, " | subid : "

    .line 1440
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1443
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/16 v7, 0xc8

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1444
    const-wide/16 v8, 0x1f4

    .line 1443
    invoke-virtual {v5, v6, v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1445
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 1426
    .end local v1    # "activePhoneName":Ljava/lang/String;
    .end local v2    # "cdmaPhoneName":Ljava/lang/String;
    .end local v3    # "phoneid":I
    .end local v4    # "subid":I
    :cond_0
    return-void
.end method
