.class public Lcom/mediatek/internal/telephony/AirplaneRequestHandler;
.super Landroid/os/Handler;
.source "AirplaneRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/AirplaneRequestHandler$1;
    }
.end annotation


# static fields
.field private static final EVENT_GSM_RADIO_CHANGE_FOR_AVALIABLE:I = 0x65

.field private static final EVENT_GSM_RADIO_CHANGE_FOR_OFF:I = 0x64

.field private static final EVENT_WAIT_RADIO_CHANGE_FOR_AVALIABLE:I = 0x66

.field private static final EXTRA_AIRPLANE_MODE:Ljava/lang/String; = "airplaneMode"

.field private static final INTENT_ACTION_AIRPLANE_CHANGE_DONE:Ljava/lang/String; = "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

.field private static final LOG_TAG:Ljava/lang/String; = "AirplaneRequestHandler"

.field private static sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mForceSwitch:Z

.field private mHasRegisterWorldModeReceiver:Z

.field private mNeedIgnoreMessageForChangeDone:Z

.field private mNeedIgnoreMessageForWait:Z

.field private mPendingAirplaneModeRequest:Ljava/lang/Boolean;

.field private mPhoneCount:I

.field private mWorldModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mHasRegisterWorldModeReceiver:Z

    return v0
.end method

.method static synthetic -get1()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->checkPendingRequest()V

    return-void
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->unRegisterWorldModeReceiver()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mHasRegisterWorldModeReceiver:Z

    .line 45
    new-instance v0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$1;-><init>(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mContext:Landroid/content/Context;

    .line 85
    iput p2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    .line 83
    return-void
.end method

.method private checkPendingRequest()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkPendingRequest, mPendingAirplaneModeRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPendingAirplaneModeRequest:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPendingAirplaneModeRequest:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPendingAirplaneModeRequest:Ljava/lang/Boolean;

    .line 197
    .local v0, "pendingAirplaneModeRequest":Ljava/lang/Boolean;
    iput-object v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPendingAirplaneModeRequest:Ljava/lang/Boolean;

    .line 198
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    .line 199
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 198
    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->notifyAirplaneModeChange(Z)V

    .line 193
    .end local v0    # "pendingAirplaneModeRequest":Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method private static final isCdmaLteDcSupport()Z
    .locals 2

    .prologue
    .line 321
    const-string/jumbo v0, "ro.mtk_svlte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    const-string/jumbo v0, "ro.mtk_srlte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 321
    if-eqz v0, :cond_1

    .line 323
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 325
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isRadioAvaliable()Z
    .locals 5

    .prologue
    .line 271
    const/4 v1, 0x1

    .line 272
    .local v1, "isRadioAvaliable":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    if-ge v0, v3, :cond_0

    .line 273
    move v2, v0

    .line 274
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->isRadioAvaliable(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRadioAvaliable=false, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 276
    const/4 v1, 0x0

    .line 280
    .end local v2    # "phoneId":I
    :cond_0
    return v1

    .line 272
    .restart local v2    # "phoneId":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isRadioAvaliable(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 183
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 183
    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRadioOff(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 189
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 190
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 189
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiOnly()Z
    .locals 4

    .prologue
    .line 314
    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mContext:Landroid/content/Context;

    .line 315
    const-string/jumbo v3, "connectivity"

    .line 314
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 316
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 317
    .local v1, "isWifiOnly":Z
    :goto_0
    return v1

    .line 316
    .end local v1    # "isWifiOnly":Z
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "isWifiOnly":Z
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string/jumbo v0, "AirplaneRequestHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[RadioManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method private registerWorldModeReceiver()V
    .locals 3

    .prologue
    .line 302
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mHasRegisterWorldModeReceiver:Z

    .line 301
    return-void
.end method

.method private unRegisterWorldModeReceiver()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mHasRegisterWorldModeReceiver:Z

    .line 308
    return-void
.end method

.method private unWaitRadioAvaliable()V
    .locals 4

    .prologue
    .line 260
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForWait:Z

    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, "phoneId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    if-ge v0, v2, :cond_0

    .line 263
    move v1, v0

    .line 264
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unWaitRadioAvaliable, for gsm phone,  phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method private waitRadioAvaliable(Z)Z
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 239
    invoke-static {}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->isWifiOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 240
    .local v2, "wait":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitRadioAvaliable, enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", wait="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 241
    if-eqz v2, :cond_2

    .line 243
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->pendingAirplaneModeRequest(Z)V

    .line 246
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForWait:Z

    .line 247
    sget-object v3, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "phoneId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    if-ge v0, v3, :cond_2

    .line 250
    move v1, v0

    .line 251
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 252
    const/16 v4, 0x66

    .line 253
    const/4 v5, 0x0

    .line 251
    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    .end local v0    # "i":I
    .end local v1    # "phoneId":I
    .end local v2    # "wait":Z
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->isRadioAvaliable()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .restart local v2    # "wait":Z
    goto :goto_0

    .line 256
    :cond_2
    return v2
.end method

.method private waitWorlModeSwitching(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 284
    invoke-static {}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->isWifiOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 286
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitWorlModeSwitching, enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", wait="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 287
    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->pendingAirplaneModeRequest(Z)V

    .line 292
    sget-object v1, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 294
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mHasRegisterWorldModeReceiver:Z

    if-nez v1, :cond_1

    .line 295
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->registerWorldModeReceiver()V

    .line 298
    :cond_1
    return v0

    .line 285
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSwitching()Z

    move-result v0

    .local v0, "wait":Z
    goto :goto_0
.end method


# virtual methods
.method protected allowSwitching()Z
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mForceSwitch:Z

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 68
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 111
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->isWifiOnly()Z

    move-result v1

    .line 113
    .local v1, "isWifiOnly":Z
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForChangeDone:Z

    if-nez v3, :cond_0

    .line 116
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 117
    const-string/jumbo v3, "handle EVENT_GSM_RADIO_CHANGE_FOR_OFF"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 119
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    if-ge v0, v3, :cond_2

    .line 120
    move v2, v0

    .line 122
    .local v2, "phoneId":I
    if-eqz v1, :cond_3

    .line 123
    const-string/jumbo v3, "wifi-only, don\'t judge radio off"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 133
    .end local v2    # "phoneId":I
    :cond_2
    const-string/jumbo v3, "All radio off"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 134
    sget-object v3, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->unMonitorAirplaneChangeDone(Z)V

    .line 136
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->checkPendingRequest()V

    goto :goto_0

    .line 127
    .restart local v2    # "phoneId":I
    :cond_3
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->isRadioOff(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "radio state change, radio not off, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 130
    return-void

    .line 119
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "i":I
    .end local v2    # "phoneId":I
    :pswitch_1
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForChangeDone:Z

    if-nez v3, :cond_0

    .line 141
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x65

    if-ne v3, v4, :cond_5

    .line 142
    const-string/jumbo v3, "handle EVENT_GSM_RADIO_CHANGE_FOR_AVALIABLE"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 144
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    if-ge v0, v3, :cond_6

    .line 145
    move v2, v0

    .line 147
    .restart local v2    # "phoneId":I
    if-eqz v1, :cond_7

    .line 148
    const-string/jumbo v3, "wifi-only, don\'t judge radio avaliable"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 158
    .end local v2    # "phoneId":I
    :cond_6
    const-string/jumbo v3, "All radio avaliable"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 159
    sget-object v3, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 160
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->unMonitorAirplaneChangeDone(Z)V

    .line 161
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->checkPendingRequest()V

    goto/16 :goto_0

    .line 152
    .restart local v2    # "phoneId":I
    :cond_7
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->isRadioAvaliable(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "radio state change, radio not avaliable, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 155
    return-void

    .line 144
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 165
    .end local v0    # "i":I
    .end local v2    # "phoneId":I
    :pswitch_2
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForWait:Z

    if-nez v3, :cond_0

    .line 166
    const-string/jumbo v3, "handle EVENT_WAIT_RADIO_CHANGE_FOR_AVALIABLE"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->isRadioAvaliable()Z

    move-result v3

    if-nez v3, :cond_9

    .line 168
    return-void

    .line 170
    :cond_9
    const-string/jumbo v3, "All radio avaliable"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->unWaitRadioAvaliable()V

    .line 172
    sget-object v3, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 173
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->checkPendingRequest()V

    goto/16 :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected monitorAirplaneChangeDone(Z)V
    .locals 5
    .param p1, "power"    # Z

    .prologue
    const/4 v4, 0x0

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForChangeDone:Z

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "monitorAirplaneChangeDone, power = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 91
    const-string/jumbo v3, " mNeedIgnoreMessageForChangeDone = "

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 91
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForChangeDone:Z

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 92
    sget-object v2, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "phoneId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 95
    move v1, v0

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 99
    const/16 v3, 0x65

    .line 97
    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 94
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 102
    const/16 v3, 0x64

    .line 101
    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 88
    :cond_1
    return-void
.end method

.method protected pendingAirplaneModeRequest(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pendingAirplaneModeRequest, enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPendingAirplaneModeRequest:Ljava/lang/Boolean;

    .line 73
    return-void
.end method

.method public setForceSwitch(Z)V
    .locals 2
    .param p1, "forceSwitch"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mForceSwitch:Z

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForceSwitch, forceSwitch ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method protected unMonitorAirplaneChangeDone(Z)V
    .locals 5
    .param p1, "airplaneMode"    # Z

    .prologue
    .line 204
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mNeedIgnoreMessageForChangeDone:Z

    .line 205
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "airplaneMode"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    iget-object v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, "phoneId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPhoneCount:I

    if-ge v0, v3, :cond_0

    .line 210
    move v2, v0

    .line 211
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unMonitorAirplaneChangeDone, for gsm phone,  phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method protected waitForReady(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 227
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->waitRadioAvaliable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string/jumbo v0, "waitForReady, wait radio avaliable"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 229
    return v1

    .line 230
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->waitWorlModeSwitching(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    const-string/jumbo v0, "waitForReady, wait world mode switching"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V

    .line 232
    return v1

    .line 234
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
