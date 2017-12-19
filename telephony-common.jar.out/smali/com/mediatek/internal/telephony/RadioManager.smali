.class public Lcom/mediatek/internal/telephony/RadioManager;
.super Landroid/os/Handler;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$1;
    }
.end annotation


# static fields
.field private static synthetic -android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I = null

.field public static final ACTION_FORCE_SET_RADIO_POWER:Ljava/lang/String; = "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

.field private static final ACTION_WIFI_ONLY_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_WIFI_ONLY_MODE"

.field protected static final AIRPLANE_MODE_OFF:Z = false

.field protected static final AIRPLANE_MODE_ON:Z = true

.field private static final EVENT_RADIO_AVAILABLE:I = 0x1

.field private static final EVENT_VIRTUAL_SIM_ON:I = 0x2

.field private static final ICC_READ_NOT_READY:Z = false

.field private static final ICC_READ_READY:Z = true

.field protected static final INITIAL_RETRY_INTERVAL_MSEC:I = 0xc8

.field protected static final INVALID_PHONE_ID:I = -0x1

.field private static final IS_NOT_SILENT_REBOOT:Ljava/lang/String; = "0"

.field protected static final IS_SILENT_REBOOT:Ljava/lang/String; = "1"

.field static final LOG_TAG:Ljava/lang/String; = "RadioManager"

.field protected static final MODEM_POWER_OFF:Z = false

.field protected static final MODEM_POWER_ON:Z = true

.field protected static final MODE_PHONE1_ONLY:I = 0x1

.field private static final MODE_PHONE2_ONLY:I = 0x2

.field private static final MODE_PHONE3_ONLY:I = 0x4

.field private static final MODE_PHONE4_ONLY:I = 0x8

.field private static final MTK_C2K_SUPPORT:Ljava/lang/String; = "ro.mtk_c2k_support"

.field protected static final NO_SIM_INSERTED:I = 0x0

.field private static final PREF_CATEGORY_RADIO_STATUS:Ljava/lang/String; = "RADIO_STATUS"

.field protected static PROPERTY_ICCID_SIM:[Ljava/lang/String; = null

.field protected static PROPERTY_RADIO_OFF:[Ljava/lang/String; = null

.field private static final PROPERTY_SILENT_REBOOT_CDMA:Ljava/lang/String; = "cdma.ril.eboot"

.field protected static final PROPERTY_SILENT_REBOOT_MD1:Ljava/lang/String; = "gsm.ril.eboot"

.field protected static final PROPERTY_SILENT_REBOOT_MD2:Ljava/lang/String; = "gsm.ril.eboot.2"

.field protected static final RADIO_POWER_OFF:Z = false

.field protected static final RADIO_POWER_ON:Z = true

.field private static final REGISTRANTS_WITH_NO_NAME:Ljava/lang/String; = "NO_NAME"

.field protected static final SIM_INSERTED:I = 0x1

.field private static final SIM_NOT_INITIALIZED:I = -0x1

.field protected static final STRING_NO_SIM_INSERTED:Ljava/lang/String; = "N/A"

.field private static final WIFI_ONLY_MODE_OFF:Z = false

.field private static final WIFI_ONLY_MODE_ON:Z = true

.field protected static mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/mediatek/internal/telephony/IRadioPower;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sIccidPreference:Landroid/content/SharedPreferences;

.field private static sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;


# instance fields
.field private bIsInIpoShutdown:Z

.field private bIsQueueIpoPreboot:Z

.field private bIsQueueIpoShutdown:Z

.field protected mAirplaneMode:Z

.field private mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

.field protected mBitmapForPhoneCount:I

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mImsSwitchController:Lcom/mediatek/internal/telephony/ImsSwitchController;

.field private mInitializeWaitCounter:[I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsEccCall:Z

.field protected mPhoneCount:I

.field protected mSimInsertedStatus:[I

.field private mSimModeSetting:I

.field private mWifiOnlyMode:Z


# direct methods
.method private static synthetic -getandroid_telephony_TelephonyManager$MultiSimVariantsSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->-android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->-android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager$MultiSimVariants;->values()[Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->-android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/internal/telephony/RadioManager;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->onReceiveForceSetRadioPowerIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 146
    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 150
    const-string/jumbo v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    .line 151
    const-string/jumbo v1, "ril.iccid.sim2"

    aput-object v1, v0, v4

    .line 152
    const-string/jumbo v1, "ril.iccid.sim3"

    aput-object v1, v0, v5

    .line 153
    const-string/jumbo v1, "ril.iccid.sim4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 149
    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 156
    new-array v0, v5, [Ljava/lang/String;

    .line 157
    const-string/jumbo v1, "ril.ipo.radiooff"

    aput-object v1, v0, v3

    .line 158
    const-string/jumbo v1, "ril.ipo.radiooff.2"

    aput-object v1, v0, v4

    .line 156
    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_RADIO_OFF:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 184
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 99
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 103
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    .line 144
    iput-object v10, p0, Lcom/mediatek/internal/telephony/RadioManager;->mImsSwitchController:Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 242
    new-instance v5, Lcom/mediatek/internal/telephony/RadioManager$1;

    invoke-direct {v5, p0}, Lcom/mediatek/internal/telephony/RadioManager$1;-><init>(Lcom/mediatek/internal/telephony/RadioManager;)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "airplane_mode_on"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 187
    .local v0, "airplaneMode":I
    invoke-static {p1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v4

    .line 189
    .local v4, "wifionlyMode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Initialize RadioManager under airplane mode:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 190
    const-string/jumbo v8, " wifi only mode:"

    .line 189
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 192
    new-array v5, p2, [I

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    .line 193
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 194
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    const/4 v8, -0x1

    aput v8, v5, v2

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_0
    new-array v5, p2, [I

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mInitializeWaitCounter:[I

    .line 197
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 198
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mInitializeWaitCounter:[I

    aput v6, v5, v2

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 201
    :cond_1
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    .line 202
    if-nez v0, :cond_2

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 204
    if-nez v4, :cond_3

    move v5, v7

    :goto_3
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    .line 206
    iput-object p3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 207
    iput p2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    .line 208
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->convertPhoneCountIntoBitmap(I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    .line 209
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "RADIO_STATUS"

    invoke-virtual {v5, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    sput-object v5, Lcom/mediatek/internal/telephony/RadioManager;->sIccidPreference:Landroid/content/SharedPreferences;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 211
    const-string/jumbo v6, "msim_mode_setting"

    iget v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    .line 210
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    .line 212
    new-instance v5, Lcom/mediatek/internal/telephony/ImsSwitchController;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    iget-object v9, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v5, v6, v8, v9}, Lcom/mediatek/internal/telephony/ImsSwitchController;-><init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mImsSwitchController:Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 214
    const-string/jumbo v5, "ro.mtk_bsp_package"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 215
    const-string/jumbo v5, "Not BSP Package, register intent!!!"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 216
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v5, "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v5, "android.intent.action.ACTION_WIFI_ONLY_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    const/4 v2, 0x0

    :goto_4
    if-ge v2, p2, :cond_4

    .line 224
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 225
    .local v3, "index":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v2

    const/4 v6, 0x2

    invoke-interface {v5, p0, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 226
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v2

    invoke-interface {v5, p0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "index":Ljava/lang/Integer;
    :cond_2
    move v5, v7

    .line 202
    goto/16 :goto_2

    :cond_3
    move v5, v6

    .line 204
    goto/16 :goto_3

    .line 230
    :cond_4
    new-instance v5, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    invoke-direct {v5, v6, v7}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    .line 184
    return-void
.end method

.method private convertPhoneCountIntoBitmap(I)I
    .locals 4
    .param p1, "phoneCount"    # I

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 236
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Convert phoneCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " into bitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 239
    return v1
.end method

.method private eventIdtoString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1106
    const/4 v0, 0x0

    .line 1107
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1117
    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1109
    .restart local v0    # "str":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "EVENT_RADIO_AVAILABLE"

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 1112
    .local v0, "str":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "EVENT_VIRTUAL_SIM_ON"

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 1107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAirplaneMode()Z
    .locals 1

    .prologue
    .line 1061
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    return v0
.end method

.method private getCiIndex(Landroid/os/Message;)I
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1122
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1129
    .local v1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 1130
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1131
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 1139
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 1132
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 1133
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1134
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1135
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "index":Ljava/lang/Integer;
    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/RadioManager;
    .locals 2

    .prologue
    .line 179
    const-class v0, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v0

    .line 180
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static init(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/RadioManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneCount"    # I
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 166
    const-class v1, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;-><init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    .line 170
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isFlightModePowerOffModemEnabled()Z
    .locals 5

    .prologue
    .line 1018
    const-string/jumbo v3, "ril.testmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1019
    const-string/jumbo v3, "ril.test.poweroffmd"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 1024
    :cond_0
    const-string/jumbo v3, "ro.operator.optr"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1025
    .local v2, "optr":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v3, "op01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1026
    :goto_0
    const-string/jumbo v3, "gsm.sim.ril.testsim"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1027
    const-string/jumbo v3, "gsm.sim.ril.testsim.2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1026
    if-nez v3, :cond_2

    .line 1028
    const-string/jumbo v3, "gsm.sim.ril.testsim.3"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1026
    if-nez v3, :cond_2

    .line 1029
    const-string/jumbo v3, "gsm.sim.ril.testsim.4"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1030
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1031
    const/4 v3, 0x1

    return v3

    .line 1025
    :cond_1
    const/4 v0, 0x0

    .local v0, "isOP01":Z
    goto :goto_0

    .line 1026
    .end local v0    # "isOP01":Z
    :cond_2
    const/4 v1, 0x1

    .local v1, "isTestSim":Z
    goto :goto_1

    .line 1036
    .end local v1    # "isTestSim":Z
    :cond_3
    const-string/jumbo v3, "ro.mtk_flight_mode_power_off_md"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public static isMSimModeSupport()Z
    .locals 2

    .prologue
    .line 1048
    const-string/jumbo v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    const/4 v0, 0x0

    return v0

    .line 1051
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isModemPowerOff(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 1043
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/RadioManager;->isModemOff(I)Z

    move-result v0

    return v0
.end method

.method public static isPowerOnFeatureAllClosed()Z
    .locals 2

    .prologue
    .line 1001
    const/4 v0, 0x1

    .line 1002
    .local v0, "ret":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1003
    const/4 v0, 0x0

    .line 1009
    :cond_0
    :goto_0
    return v0

    .line 1004
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isRadioOffPowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1005
    const/4 v0, 0x0

    goto :goto_0

    .line 1006
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1007
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRadioOffPowerOffModemEnabled()Z
    .locals 2

    .prologue
    .line 1013
    const-string/jumbo v0, "ro.mtk_radiooff_power_off_md"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1196
    const-string/jumbo v0, "RadioManager"

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

    .line 1195
    return-void
.end method

.method private static declared-synchronized notifyRadioPowerChange(ZI)V
    .locals 6
    .param p0, "power"    # Z
    .param p1, "phoneId"    # I

    .prologue
    const-class v4, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v4

    .line 1188
    :try_start_0
    sget-object v3, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1189
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mediatek/internal/telephony/IRadioPower;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyRadioPowerChange: user:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/IRadioPower;

    .line 1191
    .local v2, "iRadioPower":Lcom/mediatek/internal/telephony/IRadioPower;
    invoke-interface {v2, p0, p1}, Lcom/mediatek/internal/telephony/IRadioPower;->notifyRadioPowerChange(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mediatek/internal/telephony/IRadioPower;Ljava/lang/String;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "iRadioPower":Lcom/mediatek/internal/telephony/IRadioPower;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    .line 1187
    return-void
.end method

.method private onReceiveForceSetRadioPowerIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 330
    const/4 v1, 0x0

    .line 331
    .local v1, "phoneId":I
    const-string/jumbo v3, "mode"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 332
    .local v0, "mode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "force set radio power, mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 333
    if-ne v0, v5, :cond_0

    .line 334
    const-string/jumbo v3, "Invalid mode, MSIM_MODE intent has no extra value"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 335
    return-void

    .line 337
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v3, :cond_3

    .line 339
    shl-int v3, v6, v1

    and-int/2addr v3, v0

    if-nez v3, :cond_2

    const/4 v2, 0x0

    .line 340
    .local v2, "singlePhonePower":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 341
    invoke-virtual {p0, v6, v1}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    .line 337
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    .end local v2    # "singlePhonePower":Z
    :cond_2
    const/4 v2, 0x1

    .restart local v2    # "singlePhonePower":Z
    goto :goto_1

    .line 329
    .end local v2    # "singlePhonePower":Z
    :cond_3
    return-void
.end method

.method private putIccIdToPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 970
    if-eqz p2, :cond_0

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Add radio off SIM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 972
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 969
    :cond_0
    return-void
.end method

.method public static declared-synchronized registerForRadioPowerChange(Ljava/lang/String;Lcom/mediatek/internal/telephony/IRadioPower;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "iRadioPower"    # Lcom/mediatek/internal/telephony/IRadioPower;

    .prologue
    const-class v1, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v1

    .line 1175
    if-nez p0, :cond_0

    .line 1176
    :try_start_0
    const-string/jumbo p0, "NO_NAME"

    .line 1178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " registerForRadioPowerChange"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1179
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1174
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeIccIdFromPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 977
    if-eqz p2, :cond_0

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Remove radio off SIM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 979
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 976
    :cond_0
    return-void
.end method

.method public static sendRequestBeforeSetRadioPower(ZI)V
    .locals 2
    .param p0, "power"    # Z
    .param p1, "phoneId"    # I

    .prologue
    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Send request before EFUN, power:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 991
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->notifyRadioPowerChange(ZI)V

    .line 988
    return-void
.end method

.method private setAirplaneMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set mAirplaneMode as:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1057
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 1055
    return-void
.end method

.method private turnOffCTARadioIfNecessary()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 732
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v1, :cond_2

    .line 733
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v1, v1, v0

    if-nez v1, :cond_1

    .line 734
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    const-string/jumbo v1, "modem off, not to handle CTA"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 736
    return-void

    .line 738
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "turn off phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " radio because we are no longer in CTA mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 739
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 732
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_2
    return-void
.end method

.method public static declared-synchronized unregisterForRadioPowerChange(Lcom/mediatek/internal/telephony/IRadioPower;)V
    .locals 3
    .param p0, "iRadioPower"    # Lcom/mediatek/internal/telephony/IRadioPower;

    .prologue
    const-class v1, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v1

    .line 1183
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " unregisterForRadioPowerChange"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1184
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1182
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected checkForCTACase()Z
    .locals 4

    .prologue
    .line 708
    const/4 v1, 0x1

    .line 709
    .local v1, "isCTACase":Z
    const-string/jumbo v2, "Check For CTA case!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 710
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    if-nez v2, :cond_2

    .line 711
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v2, :cond_3

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Check For CTA case: mSimInsertedStatus["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 713
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 714
    :cond_0
    const/4 v1, 0x0

    .line 711
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    .line 721
    :cond_3
    if-nez v1, :cond_4

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsEccCall:Z

    if-nez v2, :cond_4

    .line 722
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->turnOffCTARadioIfNecessary()V

    .line 724
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CTA case: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 725
    return v1
.end method

.method protected findMainCapabilityPhoneId()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 567
    const/4 v0, 0x0

    .line 569
    .local v0, "result":I
    const-string/jumbo v2, "persist.radio.simswitch"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 568
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 570
    .local v1, "switchStatus":I
    add-int/lit8 v0, v1, -0x1

    .line 571
    if-ltz v0, :cond_0

    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-lt v0, v2, :cond_1

    .line 572
    :cond_0
    return v4

    .line 574
    :cond_1
    return v0
.end method

.method public forceAllowAirplaneModeChange(Z)V
    .locals 1
    .param p1, "forceSwitch"    # Z

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->setForceSwitch(Z)V

    .line 1207
    return-void
.end method

.method public forceSetRadioPower(ZI)V
    .locals 5
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "force set radio power for phone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,power: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 790
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-eqz v2, :cond_0

    .line 791
    const-string/jumbo v2, "Force Set Radio Power under airplane mode, ignore"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 792
    return-void

    .line 795
    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsInIpoShutdown:Z

    if-eqz v2, :cond_1

    .line 796
    const-string/jumbo v2, "Force Set Radio Power under ipo shutdown, ignore"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 797
    return-void

    .line 800
    :cond_1
    invoke-static {p2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 801
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Modem Power Off for phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Power on modem first"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 803
    shl-int v2, v4, p2

    invoke-virtual {p0, v4, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 804
    return-void

    .line 811
    :cond_2
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 812
    const-string/jumbo v2, "force set radio power, read iccid not ready, wait for200ms"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 815
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 817
    .local v0, "forceSetRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;
    const-wide/16 v2, 0xc8

    .line 816
    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 818
    return-void

    .line 821
    .end local v0    # "forceSetRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;
    :cond_3
    move v1, p1

    .line 822
    .local v1, "radioPower":Z
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 823
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 787
    return-void
.end method

.method public forceSetRadioPower(ZIZ)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I
    .param p3, "isEccOn"    # Z

    .prologue
    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "force set radio power isEccOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 835
    iput-boolean p3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsEccCall:Z

    .line 836
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    .line 833
    return-void
.end method

.method protected getSimInsertedStatus(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 676
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v0, v0, p1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1076
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->getCiIndex(Landroid/os/Message;)I

    move-result v0

    .line 1078
    .local v0, "phoneIdForMsg":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage msg.what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->eventIdtoString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1079
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1100
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1081
    :pswitch_0
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoShutdown:Z

    if-eqz v1, :cond_1

    .line 1082
    const-string/jumbo v1, "bIsQueueIpoShutdown is true"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1083
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoShutdown:Z

    .line 1085
    const-string/jumbo v1, "IPO shut down retry!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1086
    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v3, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 1088
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoPreboot:Z

    if-eqz v1, :cond_0

    .line 1089
    const-string/jumbo v1, "bIsQueueIpoPreboot is true"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1090
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoPreboot:Z

    .line 1092
    const-string/jumbo v1, "IPO reboot retry!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1093
    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v4, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    goto :goto_0

    .line 1097
    :pswitch_1
    invoke-virtual {p0, v4, v0}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    goto :goto_0

    .line 1079
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isAllowAirplaneModeChange()Z
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->allowSwitching()Z

    move-result v0

    return v0
.end method

.method protected isIccIdReady(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 689
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "iccId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 691
    .local v1, "ret":Z
    if-eqz v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 692
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ICC read not ready for phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 693
    const/4 v1, 0x0

    .line 698
    :goto_0
    return v1

    .line 695
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ICC read ready, iccid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 696
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isModemOff(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1143
    const/4 v1, 0x0

    .line 1145
    .local v1, "powerOff":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 1146
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->-getandroid_telephony_TelephonyManager$MultiSimVariantsSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1168
    const-string/jumbo v2, "ril.ipo.radiooff"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    .line 1171
    :goto_0
    return v1

    .line 1148
    :pswitch_0
    const-string/jumbo v2, "ril.ipo.radiooff"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1151
    :pswitch_1
    packed-switch p1, :pswitch_data_1

    .line 1159
    const/4 v1, 0x1

    .line 1160
    goto :goto_0

    .line 1153
    :pswitch_2
    const-string/jumbo v2, "ril.ipo.radiooff"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1156
    :pswitch_3
    const-string/jumbo v2, "ril.ipo.radiooff.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1165
    :pswitch_4
    const-string/jumbo v2, "ril.ipo.radiooff"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 1168
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 1146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 1151
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected isUnderCryptKeeper()Z
    .locals 2

    .prologue
    .line 423
    const-string/jumbo v0, "ro.crypto.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "encrypted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 423
    if-eqz v0, :cond_0

    .line 425
    const-string/jumbo v0, "[Special Case] Under CryptKeeper, Not to turn on/off modem"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 426
    const/4 v0, 0x1

    return v0

    .line 428
    :cond_0
    const-string/jumbo v0, "[Special Case] Not Under CryptKeeper"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method protected isValidPhoneId(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 347
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 348
    :cond_0
    return v1

    .line 350
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public notifyAirplaneModeChange(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 378
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->allowSwitching()Z

    move-result v3

    if-nez v3, :cond_0

    .line 379
    const-string/jumbo v3, "airplane mode switching, not allow switch now "

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->pendingAirplaneModeRequest(Z)V

    .line 381
    return-void

    .line 383
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->waitForReady(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    const-string/jumbo v3, "airplane mode switching, wait for ready, not allow switch now"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 385
    return-void

    .line 390
    :cond_1
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne p1, v3, :cond_2

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mAirplaneMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "is not expected (the same)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 392
    return-void

    .line 395
    :cond_2
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Airplane mode changed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 397
    const-string/jumbo v4, "persist.radio.airplane.mode.on"

    if-eqz p1, :cond_4

    const-string/jumbo v3, "true"

    :goto_0
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 407
    :cond_3
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 408
    const-string/jumbo v3, "Airplane mode changed: turn on/off all radio"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 409
    if-eqz p1, :cond_8

    const/4 v2, 0x0

    .line 410
    .local v2, "radioPower":Z
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v3, :cond_9

    .line 411
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 397
    .end local v0    # "i":I
    .end local v2    # "radioPower":Z
    :cond_4
    const-string/jumbo v3, "false"

    goto :goto_0

    .line 400
    :cond_5
    const-string/jumbo v3, "Airplane mode changed: turn on/off all modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 401
    if-eqz p1, :cond_7

    const/4 v1, 0x0

    .line 402
    .local v1, "modemPower":Z
    :goto_3
    const-string/jumbo v3, "1"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 403
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v1, v3}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 405
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, v1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->monitorAirplaneChangeDone(Z)V

    .line 376
    .end local v1    # "modemPower":Z
    :cond_6
    :goto_4
    return-void

    .line 401
    :cond_7
    const/4 v1, 0x1

    .restart local v1    # "modemPower":Z
    goto :goto_3

    .line 409
    .end local v1    # "modemPower":Z
    :cond_8
    const/4 v2, 0x1

    .restart local v2    # "radioPower":Z
    goto :goto_1

    .line 414
    .restart local v0    # "i":I
    :cond_9
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->monitorAirplaneChangeDone(Z)V

    goto :goto_4
.end method

.method public notifyIpoPreBoot()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 491
    const-string/jumbo v1, "IPO preboot!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 492
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsInIpoShutdown:Z

    .line 493
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoShutdown:Z

    .line 494
    const-string/jumbo v1, "0"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCi["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "].getRadioState().isAvailable(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 500
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    .line 499
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoPreboot:Z

    .line 496
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_1
    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v3, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 490
    return-void
.end method

.method public notifyIpoShutDown()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 472
    const-string/jumbo v1, "notify IPO shutdown!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 473
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsInIpoShutdown:Z

    .line 474
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoPreboot:Z

    .line 476
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCi["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "].getRadioState().isAvailable(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 480
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    .line 479
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoShutdown:Z

    .line 476
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    :cond_1
    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v3, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 471
    return-void
.end method

.method public notifyMSimModeChange(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 917
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MSIM mode changed, mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 918
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 919
    const-string/jumbo v4, "Invalid mode, MSIM_MODE intent has no extra value"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 920
    return-void

    .line 922
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-eqz v4, :cond_2

    .line 923
    :cond_1
    const-string/jumbo v4, "Airplane mode on or MSIM Mode option is closed, do nothing!"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 924
    return-void

    .line 927
    :cond_2
    const/4 v2, 0x0

    .line 928
    .local v2, "phoneId":I
    const/4 v0, 0x1

    .line 929
    .local v0, "iccIdReady":Z
    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v4, :cond_3

    .line 930
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 931
    const/4 v0, 0x0

    .line 935
    :cond_3
    if-nez v0, :cond_5

    .line 936
    const-string/jumbo v4, "msim mode read iccid not ready, wait for 200ms"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 939
    new-instance v1, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;I)V

    .line 940
    .local v1, "notifyMSimModeChangeRunnable":Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;
    const-wide/16 v4, 0xc8

    invoke-virtual {p0, v1, v4, v5}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 941
    return-void

    .line 929
    .end local v1    # "notifyMSimModeChangeRunnable":Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 944
    :cond_5
    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v4, :cond_8

    .line 945
    const/4 v4, 0x1

    shl-int/2addr v4, v2

    and-int/2addr v4, p1

    if-nez v4, :cond_7

    const/4 v3, 0x0

    .line 946
    .local v3, "singlePhonePower":Z
    :goto_2
    const-string/jumbo v4, "N/A"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 947
    const/4 v3, 0x0

    .line 948
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " sim not insert, set  power  to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 950
    :cond_6
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 951
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Set Radio Power due to MSIM mode change, power: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 952
    const-string/jumbo v5, ", phoneId: "

    .line 951
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setPhoneRadioPower(ZI)V

    .line 944
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 945
    .end local v3    # "singlePhonePower":Z
    :cond_7
    const/4 v3, 0x1

    .restart local v3    # "singlePhonePower":Z
    goto :goto_2

    .line 916
    .end local v3    # "singlePhonePower":Z
    :cond_8
    return-void
.end method

.method public notifyRadioAvailable(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " notifies radio available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 465
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    const-string/jumbo v0, "Power off modem because boot up under airplane mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 467
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    goto :goto_0
.end method

.method public notifySimModeChange(ZI)V
    .locals 4
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SIM mode changed, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", phoneId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 864
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 865
    :cond_0
    const-string/jumbo v1, "Airplane mode on or MSIM Mode option is closed, do nothing!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 866
    return-void

    .line 868
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 869
    const-string/jumbo v1, "sim mode read iccid not ready, wait for 200ms"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 872
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 873
    .local v0, "notifySimModeChangeRunnable":Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 874
    return-void

    .line 877
    .end local v0    # "notifySimModeChangeRunnable":Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;
    :cond_2
    const-string/jumbo v1, "N/A"

    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 878
    const/4 p1, 0x0

    .line 879
    .local p1, "power":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " sim not insert, set  power  to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 881
    .end local p1    # "power":Z
    :cond_3
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set Radio Power due to SIM mode change, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->setPhoneRadioPower(ZI)V

    .line 862
    return-void
.end method

.method protected onReceiveSimStateChangedIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 259
    const-string/jumbo v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "simStatus":Ljava/lang/String;
    const-string/jumbo v4, "phone"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 264
    .local v2, "phoneId":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "INTENT:Invalid phone id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", do nothing!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 266
    return-void

    .line 269
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "INTENT:SIM_STATE_CHANGED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", sim status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x1

    .line 273
    .local v0, "desiredRadioPower":Z
    const-string/jumbo v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 274
    const-string/jumbo v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 273
    if-nez v4, :cond_1

    .line 275
    const-string/jumbo v4, "LOADED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 273
    if-eqz v4, :cond_4

    .line 276
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v7, v4, v2

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Phone["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/RadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "iccid":Ljava/lang/String;
    const-string/jumbo v4, "N/A"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":SIM ready but ICCID not ready, do nothing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 283
    return-void

    .line 286
    :cond_2
    const/4 v0, 0x1

    .line 287
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v4, :cond_3

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Set Radio Power due to SIM_STATE_CHANGED, power: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 258
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 293
    :cond_4
    const-string/jumbo v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 294
    iget-object v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v6, v4, v2

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Phone["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/RadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x0

    .line 297
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v4, :cond_3

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Set Radio Power due to SIM_STATE_CHANGED, power: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto :goto_0
.end method

.method public onReceiveWifiOnlyModeStateChangedIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 310
    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 311
    .local v0, "enabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mReceiver: ACTION_WIFI_ONLY_MODE_CHANGED, enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 314
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    if-ne v0, v3, :cond_0

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mWifiOnlyMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 316
    const-string/jumbo v4, "is not expected (the same)"

    .line 315
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 317
    return-void

    .line 320
    :cond_0
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    .line 321
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v3, :cond_2

    .line 322
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 323
    .local v2, "radioPower":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v3, :cond_2

    .line 324
    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 322
    .end local v1    # "i":I
    .end local v2    # "radioPower":Z
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "radioPower":Z
    goto :goto_0

    .line 308
    .end local v2    # "radioPower":Z
    :cond_2
    return-void
.end method

.method protected readIccIdUsingPhoneId(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 702
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ICCID for phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 704
    return-object v0
.end method

.method protected refreshIccIdPreference(ZLjava/lang/String;)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 959
    const-string/jumbo v1, "refresh iccid preference"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 960
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->sIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 961
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    const-string/jumbo v1, "N/A"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 964
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->removeIccIdFromPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 966
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 958
    return-void

    .line 962
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->putIccIdToPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected refreshSimSetting(ZI)V
    .locals 6
    .param p1, "radioPower"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const/4 v5, 0x1

    .line 750
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 751
    const-string/jumbo v3, "msim_mode_setting"

    iget v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    .line 750
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 752
    .local v1, "simMode":I
    move v0, v1

    .line 754
    .local v0, "oldMode":I
    if-nez p1, :cond_1

    .line 755
    shl-int v2, v5, p2

    not-int v2, v2

    and-int/2addr v1, v2

    .line 760
    :goto_0
    if-eq v1, v0, :cond_0

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Refresh MSIM mode setting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 762
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 763
    const-string/jumbo v3, "msim_mode_setting"

    .line 762
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 749
    :cond_0
    return-void

    .line 757
    :cond_1
    shl-int v2, v5, p2

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method protected resetSimInsertedStatus(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset Sim InsertedStatus for Phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 1065
    return-void
.end method

.method public setModemPower(ZI)V
    .locals 6
    .param p1, "power"    # Z
    .param p2, "phoneBitMap"    # I

    .prologue
    const/4 v5, 0x0

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Modem Power according to bitmap, Power:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", PhoneBitMap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 519
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 521
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    const/4 v2, 0x0

    .line 522
    .local v2, "phoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->-getandroid_telephony_TelephonyManager$MultiSimVariantsSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 559
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Modem Power under SS mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 561
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 517
    :cond_0
    return-void

    .line 524
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v2

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Modem Power under DSDS mode, Power:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 526
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 527
    if-nez p1, :cond_0

    .line 528
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v3, :cond_0

    .line 529
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->resetSimInsertedStatus(I)V

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v1    # "i":I
    :pswitch_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v3, :cond_0

    .line 536
    move v2, v1

    .line 537
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p2

    if-eqz v3, :cond_1

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Modem Power under DSDA mode, Power:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 539
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 540
    if-nez p1, :cond_1

    .line 541
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->resetSimInsertedStatus(I)V

    .line 535
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 548
    .end local v1    # "i":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v2

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Modem Power under TSTS mode, Power:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 550
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 551
    if-nez p1, :cond_0

    .line 552
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v3, :cond_0

    .line 553
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->resetSimInsertedStatus(I)V

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected setPhoneRadioPower(ZI)V
    .locals 1
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 888
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 887
    return-void
.end method

.method public setRadioPower(ZI)V
    .locals 10
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const/4 v9, 0x0

    .line 598
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRadioPower, power="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  phoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 600
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-eqz v7, :cond_0

    .line 601
    const-string/jumbo v7, "Set Radio Power under airplane mode, ignore"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 602
    return-void

    .line 606
    :cond_0
    iget-object v7, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    .line 607
    const-string/jumbo v8, "connectivity"

    .line 606
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 608
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v9}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 609
    const-string/jumbo v7, "wifi-only device, so return"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 610
    return-void

    .line 614
    :cond_1
    invoke-static {p2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 615
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "modem for phone "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " off, do not set radio again"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 616
    return-void

    .line 623
    :cond_2
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 624
    const-string/jumbo v7, "RILD initialize not completed, wait for 200ms"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 625
    new-instance v6, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v6, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 626
    .local v6, "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    const-wide/16 v8, 0xc8

    invoke-virtual {p0, v6, v8, v9}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 627
    return-void

    .line 630
    .end local v6    # "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    :cond_3
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->setSimInsertedStatus(I)V

    .line 632
    move v5, p1

    .line 633
    .local v5, "radioPower":Z
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, "iccId":Ljava/lang/String;
    sget-object v7, Lcom/mediatek/internal/telephony/RadioManager;->sIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 636
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Adjust radio to off because once manually turned off, iccid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , phone: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 637
    const/4 v5, 0x0

    .line 640
    .end local v5    # "radioPower":Z
    :cond_4
    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsEccCall:Z

    if-nez v7, :cond_5

    .line 641
    const-string/jumbo v7, "setradiopower but wifi only, turn off"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 642
    const/4 v5, 0x0

    .line 645
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->checkForCTACase()Z

    move-result v4

    .line 647
    .local v4, "isCTACase":Z
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->getSimInsertedStatus(I)I

    move-result v7

    if-nez v7, :cond_a

    .line 648
    if-eqz v4, :cond_7

    .line 649
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v0

    .line 650
    .local v0, "capabilityPhoneId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No SIM inserted, force to turn on 3G/4G phone "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 651
    const-string/jumbo v8, " radio if no any sim radio is enabled!"

    .line 650
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 652
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 653
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v7, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v7, :cond_8

    .line 654
    if-eq v2, v0, :cond_6

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsEccCall:Z

    if-nez v7, :cond_6

    .line 655
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7, v9}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 653
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 659
    .end local v0    # "capabilityPhoneId":I
    .end local v2    # "i":I
    :cond_7
    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsEccCall:Z

    if-eqz v7, :cond_9

    .line 660
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ECC call Radio Power, power: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", phoneId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 661
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 597
    :cond_8
    :goto_1
    return-void

    .line 663
    :cond_9
    const-string/jumbo v7, "No SIM inserted, turn Radio off!"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 664
    const/4 v5, 0x0

    .line 665
    .local v5, "radioPower":Z
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_1

    .line 668
    .end local v5    # "radioPower":Z
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Trigger set Radio Power, power: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", phoneId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0, v5, p2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshSimSetting(ZI)V

    .line 671
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_1
.end method

.method public setSilentRebootPropertyForAllModem(Ljava/lang/String;)V
    .locals 3
    .param p1, "isSilentReboot"    # Ljava/lang/String;

    .prologue
    .line 433
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 434
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->-getandroid_telephony_TelephonyManager$MultiSimVariantsSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 449
    const-string/jumbo v1, "set eboot under SS"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 450
    const-string/jumbo v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :goto_0
    const-string/jumbo v1, "ro.mtk_c2k_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "C2K project, set cdma.ril.eboot to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 456
    const-string/jumbo v1, "cdma.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_0
    return-void

    .line 436
    :pswitch_0
    const-string/jumbo v1, "set eboot under DSDS"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 437
    const-string/jumbo v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :pswitch_1
    const-string/jumbo v1, "set eboot under DSDA"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 441
    const-string/jumbo v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string/jumbo v1, "gsm.ril.eboot.2"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :pswitch_2
    const-string/jumbo v1, "set eboot under TSTS"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 446
    const-string/jumbo v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected setSimInsertedStatus(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 680
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "iccId":Ljava/lang/String;
    const-string/jumbo v1, "N/A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    const/4 v2, 0x0

    aput v2, v1, p1

    .line 679
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    const/4 v2, 0x1

    aput v2, v1, p1

    goto :goto_0
.end method

.method protected simStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "simStatus"    # I

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 367
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 358
    .restart local v0    # "result":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "SIM HAVE NOT INITIALIZED"

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 361
    .local v0, "result":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "SIM DETECTED"

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 364
    .local v0, "result":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "NO SIM DETECTED"

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
