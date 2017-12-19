.class public Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;
.super Ljava/lang/Object;
.source "DefaultVoiceCallSubSettings.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DefaultVoiceCallSubSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMTKBspSupported()Z
    .locals 3

    .prologue
    .line 54
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 55
    .local v0, "isSupport":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMTKBspSupported(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 56
    return v0
.end method

.method private static isoldDefaultVoiceSubIdActive(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    .line 61
    .local v0, "oldDefaultVoiceSubId":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 62
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 63
    const/4 v3, 0x1

    return v3

    .line 66
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string/jumbo v0, "DefaultVoiceCallSubSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public static setVoiceCallDefaultSub(Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 24
    invoke-static {}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->isMTKBspSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    .line 26
    .local v0, "oldDefaultVoiceSubId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oldDefaultVoiceSubId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 28
    if-nez p0, :cond_1

    .line 29
    const-string/jumbo v1, "subInfos == null, set to : INVALID_SUBSCRIPTION_ID"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 31
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    .line 23
    .end local v0    # "oldDefaultVoiceSubId":I
    :cond_0
    :goto_0
    return-void

    .line 33
    .restart local v0    # "oldDefaultVoiceSubId":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subInfos size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_3

    .line 35
    invoke-static {p0}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->isoldDefaultVoiceSubIdActive(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subInfos size > 1 & old available, set to :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    goto :goto_0

    .line 39
    :cond_2
    const-string/jumbo v1, "subInfos size > 1, set to : ASK_USER"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    goto :goto_0

    .line 42
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subInfos size == 1, set to :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    goto/16 :goto_0

    .line 46
    :cond_4
    const-string/jumbo v1, "subInfos size = 0 set of : INVALID_SUBSCRIPTION_ID"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    goto/16 :goto_0
.end method
