.class Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;
.super Landroid/content/BroadcastReceiver;
.source "IccFileFetcherBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;->this$0:Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 151
    if-nez p2, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 157
    const-string/jumbo v3, "phone"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 158
    .local v1, "phoneId":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;->this$0:Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;

    iget v3, v3, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhoneId:I

    if-ne v3, v1, :cond_1

    .line 159
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;->this$0:Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;->this$0:Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IccFileFetcherBase ACTION_SIM_STATE_CHANGED phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 161
    const-string/jumbo v5, "phonetype: "

    .line 160
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 161
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;->this$0:Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 160
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 162
    const-string/jumbo v5, ", No need to read omh file, return."

    .line 160
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 163
    return-void

    .line 165
    :cond_2
    const-string/jumbo v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "simStatus":Ljava/lang/String;
    const-string/jumbo v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;->this$0:Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IccFileFetcherBase ACTION_SIM_STATE_CHANGED simStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;->this$0:Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->exchangeSimInfo()V

    .line 150
    .end local v1    # "phoneId":I
    .end local v2    # "simStatus":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 170
    :cond_4
    const-string/jumbo v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;->this$0:Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IccFileFetcherBase Receive action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;->this$0:Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mData:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    .line 173
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;->this$0:Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 174
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;->this$0:Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;

    const-string/jumbo v4, "IccFileFetcherBase hashmap is cleared!"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
