.class public Lcom/mediatek/internal/telephony/ImsSwitchController;
.super Landroid/os/Handler;
.source "ImsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;,
        Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;,
        Lcom/mediatek/internal/telephony/ImsSwitchController$1;
    }
.end annotation


# static fields
.field static final DEFAULT_IMS_STATE:I = 0x0

.field static final DEFAULT_INVALID_PHONE_ID:I = -0x1

.field static final DEFAULT_MAJOR_CAPABILITY_PHONE_ID:I = 0x0

.field static final DISABLE_WIFI_FLIGHTMODE:I = 0x1

.field protected static final EVENT_CONNECTIVITY_CHANGE:I = 0x6

.field protected static final EVENT_DC_SWITCH_STATE_CHANGE:I = 0x5

.field protected static final EVENT_RADIO_AVAILABLE_PHONE1:I = 0x2

.field protected static final EVENT_RADIO_AVAILABLE_PHONE2:I = 0x4

.field protected static final EVENT_RADIO_NOT_AVAILABLE_PHONE1:I = 0x1

.field protected static final EVENT_RADIO_NOT_AVAILABLE_PHONE2:I = 0x3

.field public static final IMS_SERVICE:Ljava/lang/String; = "ims"

.field static final LOG_TAG:Ljava/lang/String; = "ImsSwitchController"

.field public static final NW_SUB_TYPE_IMS:Ljava/lang/String; = "IMS"

.field public static final NW_TYPE_WIFI:Ljava/lang/String; = "MOBILE_IMS"

.field private static final PROPERTY_IMS_VIDEO_ENALBE:Ljava/lang/String; = "persist.mtk.ims.video.enable"

.field private static final PROPERTY_VOLTE_ENALBE:Ljava/lang/String; = "persist.mtk.volte.enable"

.field private static final PROPERTY_WFC_ENALBE:Ljava/lang/String; = "persist.mtk.wfc.enable"

.field private static mImsService:Lcom/android/ims/internal/IImsService;


# instance fields
.field private REASON_INVALID:I

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

.field private mDeathRecipient:Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsInVoLteCall:Z

.field protected final mLock:Ljava/lang/Object;

.field private mNeedTurnOffWifi:Z

.field private mPhoneCount:I

.field private mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

.field private mReason:I


# direct methods
.method static synthetic -get0(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/internal/telephony/ImsSwitchController;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/ims/internal/IImsService;)Lcom/android/ims/internal/IImsService;
    .locals 0

    sput-object p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    return-object p0
.end method

.method static synthetic -set1(Lcom/mediatek/internal/telephony/ImsSwitchController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    return p1
.end method

.method static synthetic -set2(Lcom/mediatek/internal/telephony/ImsSwitchController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z

    return p1
.end method

.method static synthetic -set3(Lcom/mediatek/internal/telephony/ImsSwitchController;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isImsDeregisterRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoLTEEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoWiFiEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->confirmPreCheckDetachIfNeed()V

    return-void
.end method

.method static synthetic -wrap4(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/mediatek/internal/telephony/ImsSwitchController;IILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "phoneType"    # I
    .param p3, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/mediatek/internal/telephony/ImsSwitchController;I)V
    .locals 0
    .param p1, "wifiState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveWifiStateChange(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    .line 76
    return-void
.end method

.method constructor <init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 89
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 91
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    .line 92
    new-instance v1, Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;

    invoke-direct {v1, p0, v3}, Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDeathRecipient:Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;

    .line 94
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z

    .line 95
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->REASON_INVALID:I

    .line 96
    iget v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->REASON_INVALID:I

    iput v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    .line 98
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    .line 421
    new-instance v1, Lcom/mediatek/internal/telephony/ImsSwitchController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$1;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    const-string/jumbo v1, "Initialize ImsSwitchController"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 122
    iput-object p3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 123
    iput p2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mPhoneCount:I

    .line 126
    const-string/jumbo v1, "ro.mtk_ims_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string/jumbo v1, "ro.mtk_tc1_feature"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v1, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v1, "ro.mtk_wfc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    new-instance v1, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    .line 140
    const-string/jumbo v1, "ImsSwitchController"

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->registerForRadioPowerChange(Ljava/lang/String;Lcom/mediatek/internal/telephony/IRadioPower;)V

    .line 142
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v4

    invoke-interface {v1, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 143
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v4

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 145
    iget v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mPhoneCount:I

    if-le v1, v5, :cond_0

    .line 146
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v5

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 147
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v5

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private checkAndBindImsService(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 189
    const-string/jumbo v2, "ims"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 191
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDeathRecipient:Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAndBindImsService: mImsService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 188
    return-void

    .line 194
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private confirmPreCheckDetachIfNeed()V
    .locals 3

    .prologue
    .line 412
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    if-eqz v0, :cond_0

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "confirmPreCheckDetachIfNeed, phoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->confirmPreCheckDetach()Z

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 411
    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private eventIdtoString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 483
    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 465
    .restart local v0    # "str":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "RADIO_NOT_AVAILABLE_PHONE1"

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 468
    .local v0, "str":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "RADIO_NOT_AVAILABLE_PHONE2"

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 471
    .local v0, "str":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "RADIO_AVAILABLE_PHONE1"

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 474
    .local v0, "str":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "RADIO_AVAILABLE_PHONE2"

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 477
    .local v0, "str":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "DC_SWITCH_STATE_CHANGE"

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleConnectivityChange()V
    .locals 10

    .prologue
    .line 587
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 588
    const-string/jumbo v9, "connectivity"

    .line 587
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 590
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v8, 0xb

    .line 589
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 591
    .local v3, "nwInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    .line 592
    .local v6, "typeName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    .line 593
    .local v5, "subTypeName":Ljava/lang/String;
    const/4 v1, 0x1

    .line 594
    .local v1, "isEpdgConnected":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoLTEEnable()Z

    move-result v2

    .line 595
    .local v2, "isVoLTEEnable":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleConnectivityChange typeName ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 596
    const-string/jumbo v9, " subTypeName = "

    .line 595
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 596
    const-string/jumbo v9, " isVoLTEEnable = "

    .line 595
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 597
    const-string/jumbo v9, " mNeedTurnOffWifi = "

    .line 595
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 597
    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z

    .line 595
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 599
    iget-boolean v8, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "MOBILE_IMS"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 601
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 602
    .local v1, "isEpdgConnected":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleConnectivityChange isEpdgConnected ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 603
    if-nez v1, :cond_0

    .line 604
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 605
    const-string/jumbo v9, "wifi"

    .line 604
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 606
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    iget v8, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->setWifiDisabled(I)Z

    .line 607
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z

    .line 610
    if-eqz v2, :cond_0

    .line 611
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v4

    .line 612
    .local v4, "phoneId":I
    const/4 v8, 0x1

    invoke-direct {p0, v8, v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    .line 586
    .end local v1    # "isEpdgConnected":Z
    .end local v4    # "phoneId":I
    .end local v7    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method private handleDcStateAttaching(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 5
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 297
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 298
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDcStateAttaching param.getPhoneId():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoLTEEnable()Z

    move-result v0

    .line 303
    .local v0, "isVoLTEEnable":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoWiFiEnable()Z

    move-result v1

    .line 305
    .local v1, "isVoWiFiEnable":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDcStateAttaching, isVoLTEEnable:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 306
    const-string/jumbo v4, " isVoWiFiEnable:"

    .line 305
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 308
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 309
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v2

    const/4 v4, 0x1

    invoke-direct {p0, v4, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "isVoLTEEnable":Z
    .end local v1    # "isVoWiFiEnable":Z
    :cond_1
    monitor-exit v3

    .line 296
    return-void

    .line 297
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleDcStatePreCheckDisconnect(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 5
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 316
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 317
    :try_start_0
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    if-eqz v2, :cond_0

    .line 318
    const-string/jumbo v2, "handleDcStatePreCheckDisconnect, in volte call, suspend DcState preCheck"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 319
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 320
    return-void

    .line 323
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDcStatePreCheckDisconnect, param.getPhoneId():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v2

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v4

    if-ne v2, v4, :cond_4

    .line 326
    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    if-nez v2, :cond_1

    .line 327
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->checkAndBindImsService(I)V

    .line 330
    :cond_1
    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 331
    const/4 v1, 0x0

    .line 333
    .local v1, "state":I
    :try_start_2
    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsService;->getImsState()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 338
    :goto_0
    if-eqz v1, :cond_2

    .line 340
    :try_start_3
    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    :goto_1
    :try_start_4
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "state":I
    :goto_2
    monitor-exit v3

    .line 315
    return-void

    .line 334
    .restart local v1    # "state":I
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "RemoteException can\'t get ims state"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "state":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 341
    .restart local v1    # "state":I
    :catch_1
    move-exception v0

    .line 342
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v2, "RemoteException can\'t turn off ims"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 346
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v2, "handleDcStatePreCheckDisconnect: ims is disable and confirm directly"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->confirmPreCheckDetach()Z

    goto :goto_2

    .line 350
    .end local v1    # "state":I
    :cond_3
    const-string/jumbo v2, "handleDcStatePreCheckDisconnect: ImsService not ready !!!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 351
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    goto :goto_2

    .line 354
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->confirmPreCheckDetach()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method private isImsDeregisterRequired()Z
    .locals 11

    .prologue
    const/16 v10, 0x63

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 551
    const/16 v4, 0x3e7

    .line 552
    .local v4, "regStat":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 553
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v7

    .line 552
    invoke-static {v6, v7}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 554
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 555
    const-string/jumbo v7, "phone"

    .line 554
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 556
    .local v5, "telephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoLTEEnable()Z

    move-result v1

    .line 557
    .local v1, "isVoLTeEnable":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    .line 559
    .local v3, "phoneId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 558
    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v2

    .line 561
    .local v2, "netType":I
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getWfcStatusCode()I

    move-result v4

    .line 563
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isImsDeregisterRequired regStat = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mReason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 564
    iget v7, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    .line 563
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 564
    const-string/jumbo v7, "netType = "

    .line 563
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 564
    const-string/jumbo v7, " phoneId = "

    .line 563
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 565
    const-string/jumbo v7, " isVoLTeEnable = "

    .line 563
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 570
    if-ne v10, v4, :cond_1

    iget v6, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    if-ne v6, v9, :cond_1

    .line 573
    :cond_0
    invoke-direct {p0, v8, v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    .line 574
    return v9

    .line 571
    :cond_1
    if-ne v10, v4, :cond_2

    .line 572
    const/16 v6, 0xd

    if-ne v2, v6, :cond_0

    if-eqz v1, :cond_0

    .line 577
    :cond_2
    const-string/jumbo v6, "IMS registration false"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 578
    return v8
.end method

.method private isVoLTEEnable()Z
    .locals 2

    .prologue
    .line 218
    const-string/jumbo v0, "ro.mtk_ims_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string/jumbo v0, "persist.mtk.volte.enable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 218
    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x1

    return v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isVoWiFiEnable()Z
    .locals 2

    .prologue
    .line 231
    const-string/jumbo v0, "ro.mtk_wfc_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const-string/jumbo v0, "persist.mtk.wfc.enable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 231
    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x1

    return v0

    .line 235
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 618
    const-string/jumbo v0, "ImsSwitchController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void
.end method

.method private onReceiveDcSwitchStateChange(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 2
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage param.getState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " param.getReason(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "predetachcheck"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->handleDcStatePreCheckDisconnect(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    const-string/jumbo v1, "attaching"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Lost Connection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->handleDcStateAttaching(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_0
.end method

.method private onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "phoneType"    # I
    .param p3, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 376
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 377
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceivePhoneStateChange phoneId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    const-string/jumbo v3, " phoneType: "

    .line 377
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    const-string/jumbo v3, " phoneState: "

    .line 377
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsInVoLteCall: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 382
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    if-eqz v1, :cond_3

    .line 383
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 384
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p3, v1, :cond_1

    .line 385
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    .line 386
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    if-eqz v1, :cond_1

    .line 387
    sget-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    if-nez v1, :cond_0

    .line 388
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->checkAndBindImsService(I)V

    .line 391
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 393
    :try_start_1
    sget-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    .line 375
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "RemoteException can\'t turn on ims"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 376
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 398
    :cond_2
    :try_start_3
    const-string/jumbo v1, "onReceivePhoneStateChange: ImsService not ready !!!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_3
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 404
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p3, v1, :cond_1

    .line 405
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private onReceiveWifiStateChange(I)V
    .locals 3
    .param p1, "wifiState"    # I

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoWiFiEnable()Z

    move-result v0

    .line 537
    .local v0, "isVoWiFiEnable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceiveWifiStateChange wifiState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 538
    const-string/jumbo v2, " isVoWiFiEnable:"

    .line 537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 540
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 541
    if-eqz v0, :cond_0

    .line 542
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    .line 534
    :cond_0
    return-void
.end method

.method private registerEvent()V
    .locals 6

    .prologue
    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerEvent, major phoneid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    .line 268
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "ImsSwitchController"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;Z)V

    .line 267
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v3, v4, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->registerForDcSwitchStateChange(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    .line 270
    const-string/jumbo v1, "ro.mtk_wfc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 272
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveWifiStateChange(I)V

    .line 273
    new-instance v1, Lcom/mediatek/internal/telephony/ImsSwitchController$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$2;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->addWifiOffListener(Landroid/net/wifi/WifiManager$WifiOffListener;)V

    .line 264
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method private switchImsCapability(ZI)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchImsCapability, on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 241
    sget-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    if-nez v1, :cond_0

    .line 242
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->checkAndBindImsService(I)V

    .line 245
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    if-eqz v1, :cond_2

    .line 246
    if-eqz p1, :cond_1

    .line 248
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v1, p2}, Lcom/android/ims/internal/IImsService;->turnOnIms(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemoteException can\'t turn on ims"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v1, p2}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 255
    :catch_1
    move-exception v0

    .line 256
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemoteException can\'t turn off ims"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v1, "switchImsCapability: ImsService not ready !!!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterEvent()V
    .locals 2

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterEvent, major phoneid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DctController;->unregisterForDcSwitchStateChange(Landroid/os/Handler;)V

    .line 290
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 488
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 489
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage msg.what: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->eventIdtoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 490
    const/4 v2, 0x0

    .line 491
    .local v2, "phoneId":I
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 524
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 494
    :pswitch_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-nez v3, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->unregisterEvent()V

    goto :goto_0

    .line 500
    :pswitch_1
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->unregisterEvent()V

    goto :goto_0

    .line 506
    :pswitch_2
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-nez v3, :cond_0

    .line 507
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->registerEvent()V

    goto :goto_0

    .line 512
    :pswitch_3
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 513
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->registerEvent()V

    goto :goto_0

    .line 517
    :pswitch_4
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 518
    .local v1, "param":Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveDcSwitchStateChange(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_0

    .line 521
    .end local v1    # "param":Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    :pswitch_5
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->handleConnectivityChange()V

    goto :goto_0

    .line 491
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
