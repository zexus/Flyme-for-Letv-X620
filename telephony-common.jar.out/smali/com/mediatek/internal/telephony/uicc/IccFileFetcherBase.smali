.class public abstract Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;
.super Landroid/os/Handler;
.source "IccFileFetcherBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;
    }
.end annotation


# static fields
.field protected static final APP_TYPE_3GPP:I = 0x1

.field protected static final APP_TYPE_3GPP2:I = 0x2

.field protected static final APP_TYPE_ACTIVE:I = 0x0

.field protected static final APP_TYPE_IMS:I = 0x3

.field protected static final EF_TYPE_LINEARFIXED:I = 0x0

.field protected static final EF_TYPE_TRANSPARENT:I = 0x1

.field protected static final EVENT_GET_LINEARFIXED_RECORD_SIZE_DONE:I = 0x0

.field protected static final EVENT_LOAD_LINEARFIXED_ALL_DONE:I = 0x1

.field protected static final EVENT_LOAD_TRANSPARENT_DONE:I = 0x2

.field protected static final EVENT_UPDATE_LINEARFIXED_DONE:I = 0x3

.field protected static final EVENT_UPDATE_TRANSPARENT_DONE:I = 0x4

.field protected static final INVALID_INDEX:I = -0x1

.field private static final TAG:Ljava/lang/String; = "IccFileFetcherBase"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field protected mPhoneId:I

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mData:Ljava/util/HashMap;

    .line 149
    new-instance v1, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase$1;-><init>(Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    const-string/jumbo v1, "IccFileFetcherBase Creating!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 118
    iput-object p2, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 119
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhoneId:I

    .line 120
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mContext:Landroid/content/Context;

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    return-void
.end method


# virtual methods
.method protected exchangeSimInfo()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 182
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 183
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->onGetKeys()Ljava/util/ArrayList;

    move-result-object v2

    .line 184
    .local v2, "mKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 186
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->onGetFilePara(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    move-result-object v3

    .line 189
    .local v3, "mRq":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    if-nez v3, :cond_1

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exchangeSimInfo mPhoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 191
    const-string/jumbo v5, "  get Para failed!"

    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    .line 180
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "mRq":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    :cond_0
    return-void

    .line 194
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v3    # "mRq":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exchangeSimInfo key:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " mEfid:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " mEfType:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 195
    const-string/jumbo v6, " mAppType :"

    .line 194
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 195
    iget v6, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mAppType:I

    .line 194
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 195
    const-string/jumbo v6, " mEfPath:"

    .line 194
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 195
    iget-object v6, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfPath:Ljava/lang/String;

    .line 194
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 195
    const-string/jumbo v6, " mData:"

    .line 194
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 196
    iget-object v6, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mData:[B

    .line 194
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 196
    const-string/jumbo v6, " mRecordNum:"

    .line 194
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 196
    iget v6, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mRecordNum:I

    .line 194
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 196
    const-string/jumbo v6, " mPin2:"

    .line 194
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 196
    iget-object v6, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mPin2:Ljava/lang/String;

    .line 194
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 197
    iget v4, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mAppType:I

    if-nez v4, :cond_5

    .line 198
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v4, v5

    :goto_1
    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 203
    :goto_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v4, :cond_7

    .line 204
    iput-object v1, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    .line 205
    const-string/jumbo v4, ""

    iget-object v6, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfPath:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 206
    :cond_2
    const-string/jumbo v4, "exchangeSimInfo path is null, it may get an invalid reponse!"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 208
    :cond_3
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mData:[B

    if-nez v4, :cond_6

    .line 209
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loadSimInfo(Lcom/mediatek/internal/telephony/uicc/IccFileRequest;)V

    goto/16 :goto_0

    .line 199
    :cond_4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v4

    goto :goto_1

    .line 201
    :cond_5
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v6, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhoneId:I

    iget v7, v3, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mAppType:I

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    goto :goto_2

    .line 211
    :cond_6
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->updateSimInfo(Lcom/mediatek/internal/telephony/uicc/IccFileRequest;)V

    goto/16 :goto_0

    .line 214
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exchangeSimInfo mFh["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhoneId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "] is null, read failed!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMessage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 253
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 307
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 244
    :goto_0
    return-void

    .line 255
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 256
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EVENT_GET_LINEARFIXED_RECORD_SIZE_DONE Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 258
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 257
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v3

    .line 311
    .local v3, "exc":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception parsing file record"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    .end local v3    # "exc":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_0
    :try_start_1
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 262
    .local v5, "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .local v4, "recordsize":[I
    goto :goto_0

    .line 265
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "recordsize":[I
    .end local v5    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 266
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 267
    .restart local v5    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EVENT_LOAD_LINEARFIXED_ALL_DONE Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    .line 269
    iget-object v6, v5, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 273
    .local v2, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EVENT_LOAD_LINEARFIXED_ALL_DONE key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  datas: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 274
    iget-object v6, v5, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v2}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 277
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v5    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 278
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 279
    .restart local v5    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 280
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EVENT_LOAD_TRANSPARENT_DONE Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    .line 281
    iget-object v6, v5, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 284
    :cond_2
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 285
    .local v1, "data":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EVENT_LOAD_TRANSPARENT_DONE key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    .line 286
    iget-object v6, v5, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v1, v7}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 289
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "data":[B
    .end local v5    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 290
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_3

    .line 291
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EVENT_UPDATE_LINEARFIXED_DONE Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :cond_3
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 295
    .restart local v5    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EVENT_UPDATE_LINEARFIXED_DONE key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mData:[B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 299
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_4

    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EVENT_UPDATE_TRANSPARENT_DONE Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    :cond_4
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 304
    .restart local v5    # "sr":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EVENT_UPDATE_TRANSPARENT_DONE key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mData:[B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected loadSimInfo(Lcom/mediatek/internal/telephony/uicc/IccFileRequest;)V
    .locals 4
    .param p1, "req"    # Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .prologue
    const/4 v3, 0x1

    .line 220
    iget v0, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfType:I

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v1, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfid:I

    iget-object v2, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfPath:Ljava/lang/String;

    .line 222
    invoke-virtual {p0, v3, p1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 221
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 219
    :goto_0
    return-void

    .line 223
    :cond_0
    iget v0, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfType:I

    if-ne v0, v3, :cond_1

    .line 224
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v1, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfid:I

    iget-object v2, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfPath:Ljava/lang/String;

    .line 225
    const/4 v3, 0x2

    invoke-virtual {p0, v3, p1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 224
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loadSimInfo req.mEfType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 316
    const-string/jumbo v0, "IccFileFetcherBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 319
    const-string/jumbo v0, "IccFileFetcherBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method

.method public abstract onGetFilePara(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
.end method

.method public abstract onGetKeys()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation
.end method

.method protected updateSimInfo(Lcom/mediatek/internal/telephony/uicc/IccFileRequest;)V
    .locals 7
    .param p1, "req"    # Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .prologue
    .line 232
    iget v0, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfType:I

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v1, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfid:I

    iget-object v2, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfPath:Ljava/lang/String;

    iget v3, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mRecordNum:I

    iget-object v4, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mData:[B

    iget-object v5, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mPin2:Ljava/lang/String;

    .line 234
    const/4 v6, 0x3

    invoke-virtual {p0, v6, p1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 233
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    .line 231
    :goto_0
    return-void

    .line 235
    :cond_0
    iget v0, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v1, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfid:I

    iget-object v2, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mData:[B

    .line 237
    const/4 v4, 0x4

    invoke-virtual {p0, v4, p1}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 236
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(ILjava/lang/String;[BLandroid/os/Message;)V

    goto :goto_0

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSimInfo req.mEfType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
