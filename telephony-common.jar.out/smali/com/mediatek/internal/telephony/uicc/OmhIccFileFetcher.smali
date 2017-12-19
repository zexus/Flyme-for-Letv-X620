.class public final Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;
.super Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;
.source "OmhIccFileFetcher.java"


# static fields
.field private static final OMH_CARD_NO:Ljava/lang/String; = "0"

.field private static final OMH_CARD_QUERY:I = 0x3e9

.field private static final OMH_CARD_RETRY_COUNT:I = 0x5

.field private static final OMH_CARD_RETRY_INTERVAL:I = 0x3e8

.field private static final OMH_CARD_UNKNOWN:Ljava/lang/String; = "-1"

.field private static final OMH_CARD_YES:Ljava/lang/String; = "1"

.field private static final OMH_INFO_READY:Ljava/lang/String; = "omh_info_ready"

.field private static final TAG:Ljava/lang/String; = "OmhIccFileFetcher"


# instance fields
.field mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryTimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mRetryTimes:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    .line 71
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    const-string/jumbo v1, "omh_info_ready"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method private notifyOmhCardDone(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyOmhCardDone, check omh card is done with state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->log(Ljava/lang/String;)V

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.mediatek.internal.omh.cardcheck"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "subid"

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string/jumbo v2, "is_ready"

    if-eqz p1, :cond_0

    const-string/jumbo v1, "yes"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    return-void

    .line 125
    :cond_0
    const-string/jumbo v1, "no"

    goto :goto_0
.end method


# virtual methods
.method protected exchangeSimInfo()V
    .locals 3

    .prologue
    .line 130
    const-string/jumbo v1, "exchangeSimInfo, just check the property."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->log(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v1, "ril.cdma.card.omh"

    const-string/jumbo v2, "-1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "omh":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exchangeSimInfo, ril.cdma.card.omh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->log(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->retryCheckOmhCard()V

    .line 136
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mRetryTimes:I

    .line 129
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v2, "omh_info_ready"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->notifyOmhCardDone(Z)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 150
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->handleMessage(Landroid/os/Message;)V

    .line 144
    :goto_0
    return-void

    .line 147
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->retryCheckOmhCard()V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method protected isOmhCard()Z
    .locals 4

    .prologue
    .line 156
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v3, "omh_info_ready"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v3, "omh_info_ready"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    .local v1, "omhState":Ljava/lang/String;
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 162
    .end local v1    # "omhState":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "ril.cdma.card.omh"

    const-string/jumbo v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "omhCard":Ljava/lang/String;
    const-string/jumbo v2, "-1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    const-string/jumbo v2, "isOmhCard(), omh info maybe not ready, but the card check is done!!!!!!"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->log(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 168
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public onGetFilePara(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "transparent"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p3, "linearfixed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    return-void
.end method

.method retryCheckOmhCard()V
    .locals 4

    .prologue
    .line 101
    const-string/jumbo v1, "ril.cdma.card.omh"

    const-string/jumbo v2, "-1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "omh":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryCheckOmhCard with omh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mRetryTimes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mRetryTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->log(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mRetryTimes:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 104
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mRetryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mRetryTimes:I

    .line 105
    const-wide/16 v2, 0x3e8

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->sendEmptyMessageDelayed(IJ)Z

    .line 106
    const-string/jumbo v1, "retryCheckOmhCard, retry again."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->log(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string/jumbo v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v2, "omh_info_ready"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->notifyOmhCardDone(Z)V

    .line 117
    const-string/jumbo v1, "retryCheckOmhCard, notify app the check is ready."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v2, "omh_info_ready"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
