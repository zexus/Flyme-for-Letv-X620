.class public Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
.super Ljava/lang/Object;
.source "DataSubSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;,
        Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;
    }
.end annotation


# static fields
.field public static final ACTION_MOBILE_DATA_ENABLE:Ljava/lang/String; = "android.intent.action.ACTION_MOBILE_DATA_ENABLE"

.field private static final BSP_PACKAGE:Z

.field private static final DBG:Z = true

.field public static final EXTRA_MOBILE_DATA_ENABLE_REASON:Ljava/lang/String; = "reason"

.field private static final FIRST_TIME_ROAMING:Ljava/lang/String; = "first_time_roaming"

.field private static final HOME_POLICY:I = 0x0

.field private static final MTK_C2K_SUPPORT:Ljava/lang/String; = "ro.mtk_c2k_support"

.field private static final NEED_TO_EXECUTE_ROAMING:Ljava/lang/String; = "need_to_execute_roaming"

.field private static final NEED_TO_WAIT_UNLOCKED:Ljava/lang/String; = "persist.radio.unlock"

.field private static final NEED_TO_WAIT_UNLOCKED_ROAMING:Ljava/lang/String; = "persist.radio.unlock.roaming"

.field private static final NEW_SIM_SLOT:Ljava/lang/String; = "persist.radio.new.sim.slot"

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field private static final OLD_ICCID:Ljava/lang/String; = "old_iccid"

.field private static final OPERATOR_OM:Ljava/lang/String; = "OM"

.field private static final OPERATOR_OP01:Ljava/lang/String; = "OP01"

.field private static final OPERATOR_OP02:Ljava/lang/String; = "OP02"

.field private static final OPERATOR_OP09:Ljava/lang/String; = "OP09"

.field private static final PROPERTY_3G_SIM:Ljava/lang/String; = "persist.radio.simswitch"

.field private static final PROPERTY_DEFAULT_DATA_ICCID:Ljava/lang/String; = "persist.radio.data.iccid"

.field private static final PROPERTY_DEFAULT_SIMSWITCH_ICCID:Ljava/lang/String; = "persist.radio.simswitch.iccid"

.field private static final PROPERTY_MOBILE_DATA_ENABLE:Ljava/lang/String; = "persist.radio.mobile.data"

.field public static final REASON_MOBILE_DATA_ENABLE_SYSTEM:Ljava/lang/String; = "system"

.field public static final REASON_MOBILE_DATA_ENABLE_USER:Ljava/lang/String; = "user"

.field private static final ROAMING_POLICY:I = 0x1

.field private static final SEGC:Ljava/lang/String; = "SEGC"

.field private static final SEGDEFAULT:Ljava/lang/String; = "SEGDEFAULT"

.field private static final SIM_STATUS:Ljava/lang/String; = "persist.radio.sim.status"

.field private static m6mProject:Z

.field private static mOperatorSpec:Ljava/lang/String;


# instance fields
.field private PROPERTY_ICCID:[Ljava/lang/String;

.field private PROPERTY_ICCID_SIM:[Ljava/lang/String;

.field private mAirplaneModeOn:Z

.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHasRegisterWorldModeReceiver:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsNeedWaitAirplaneModeOff:Z

.field private mIsNeedWaitAirplaneModeOffRoaming:Z

.field private mIsNeedWaitImsi:Z

.field private mIsNeedWaitImsiRoaming:Z

.field private mIsUserConfirmDefaultData:Z

.field private mLastValidDefaultDataSubId:I

.field private mPhoneId:I

.field private mPhoneNum:I

.field private mPrevDefaultDataSubId:I

.field private mWorldModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    return v0
.end method

.method static synthetic -get3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    return v0
.end method

.method static synthetic -get4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    return v0
.end method

.method static synthetic -get5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsiRoaming:Z

    return v0
.end method

.method static synthetic -get6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    return v0
.end method

.method static synthetic -get7()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneId:I

    return v0
.end method

.method static synthetic -set0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic -set2(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    return p1
.end method

.method static synthetic -set3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    return p1
.end method

.method static synthetic -set4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    return p1
.end method

.method static synthetic -set5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsiRoaming:Z

    return p1
.end method

.method static synthetic -set6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch6m()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z
    .locals 1
    .param p1, "policy"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp02CapSwitch(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForC2k6m(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isCanSwitch()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z
    .locals 1
    .param p1, "prop"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isNeedWaitUnlock(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP09CSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP09Support()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)V
    .locals 0
    .param p1, "insertedSimCount"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V
    .locals 0
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setLastValidDefaultDataSub(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "ro.mtk_bsp_package"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 55
    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->BSP_PACKAGE:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNum"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    .line 47
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 48
    const-string/jumbo v5, "ril.iccid.sim1"

    aput-object v5, v4, v3

    .line 49
    const-string/jumbo v5, "ril.iccid.sim2"

    aput-object v5, v4, v2

    .line 50
    const-string/jumbo v5, "ril.iccid.sim3"

    aput-object v5, v4, v7

    .line 51
    const-string/jumbo v5, "ril.iccid.sim4"

    aput-object v5, v4, v8

    .line 47
    iput-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 79
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 80
    const-string/jumbo v5, "ril.iccid.sim1"

    aput-object v5, v4, v3

    .line 81
    const-string/jumbo v5, "ril.iccid.sim2"

    aput-object v5, v4, v2

    .line 82
    const-string/jumbo v5, "ril.iccid.sim3"

    aput-object v5, v4, v7

    .line 83
    const-string/jumbo v5, "ril.iccid.sim4"

    aput-object v5, v4, v8

    .line 79
    iput-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    .line 95
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsiRoaming:Z

    .line 97
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    .line 98
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 99
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 100
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    .line 101
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    .line 102
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mHasRegisterWorldModeReceiver:Z

    .line 103
    iput v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneId:I

    .line 104
    iput v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    .line 105
    iput v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    .line 106
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    .line 108
    new-instance v4, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;

    invoke-direct {v4, p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 330
    new-instance v4, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;

    invoke-direct {v4, p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    .line 348
    const-string/jumbo v4, "DataSubSelector is created"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 349
    iput p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    .line 350
    const-string/jumbo v4, "ro.operator.optr"

    const-string/jumbo v5, "OM"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    .line 351
    const-string/jumbo v4, "ro.mtk_c2k_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->m6mProject:Z

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Operator Spec:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", c2k_support:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->m6mProject:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 354
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 355
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string/jumbo v4, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v4, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string/jumbo v4, "mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string/jumbo v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string/jumbo v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 365
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 367
    const-string/jumbo v5, "airplane_mode_on"

    .line 366
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    .line 370
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 371
    .local v0, "defaultDataSubId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "defaultDataSub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 372
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setLastValidDefaultDataSub(I)V

    .line 347
    return-void

    .end local v0    # "defaultDataSubId":I
    :cond_0
    move v2, v3

    .line 367
    goto :goto_0
.end method

.method private checkOp01CapSwitch()Z
    .locals 20

    .prologue
    .line 1131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v15, v0, [I

    .line 1132
    .local v15, "simOpInfo":[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 1133
    .local v16, "simType":[I
    const/16 v17, -0x1

    .line 1134
    .local v17, "targetSim":I
    const/4 v8, 0x0

    .line 1135
    .local v8, "insertedSimCount":I
    const/4 v5, 0x0

    .line 1136
    .local v5, "csimRuimCount":I
    const/4 v10, -0x1

    .line 1137
    .local v10, "nonCsimRuimPhoneId":I
    const/4 v9, 0x0

    .line 1138
    .local v9, "insertedStatus":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v12, v0, [Z

    .line 1139
    .local v12, "op01Usim":[Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v11, v0, [Z

    .line 1140
    .local v11, "op01Sim":[Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v14, v0, [Z

    .line 1141
    .local v14, "overseaUsim":[Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v13, v0, [Z

    .line 1142
    .local v13, "overseaSim":[Z
    const-string/jumbo v18, "persist.radio.simswitch.iccid"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1143
    .local v3, "capabilitySimIccid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v6, v0, [Ljava/lang/String;

    .line 1145
    .local v6, "currIccId":[Ljava/lang/String;
    const-string/jumbo v18, "checkOp01CapSwitch start"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1147
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_3

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    .line 1149
    aget-object v18, v6, v7

    if-eqz v18, :cond_0

    const-string/jumbo v18, ""

    aget-object v19, v6, v7

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1150
    :cond_0
    const-string/jumbo v18, "error: iccid not found, wait for next sub ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1151
    const/16 v18, 0x0

    return v18

    .line 1153
    :cond_1
    const-string/jumbo v18, "N/A"

    aget-object v19, v6, v7

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 1154
    add-int/lit8 v8, v8, 0x1

    .line 1155
    const/16 v18, 0x1

    shl-int v18, v18, v7

    or-int v9, v9, v18

    .line 1147
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1159
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "checkOp01CapSwitch : Inserted SIM count: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1160
    const-string/jumbo v19, ", insertedStatus: "

    .line 1159
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1162
    const-string/jumbo v18, "checkOp01CapSwitch: sim locked"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1163
    const-string/jumbo v18, "persist.radio.unlock"

    const-string/jumbo v19, "true"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    :goto_1
    move-object/from16 v0, v16

    invoke-static {v15, v0, v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v18

    if-nez v18, :cond_5

    .line 1169
    const/16 v18, 0x0

    return v18

    .line 1165
    :cond_4
    const-string/jumbo v18, "checkOp01CapSwitch: no sim locked"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1166
    const-string/jumbo v18, "persist.radio.unlock"

    const-string/jumbo v19, "false"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1173
    :cond_5
    const-string/jumbo v18, "persist.radio.simswitch"

    const-string/jumbo v19, "1"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1172
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 1174
    .local v4, "capabilitySimId":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "op01: capabilitySimIccid:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1175
    const-string/jumbo v19, "capabilitySimId:"

    .line 1174
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1176
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_c

    .line 1178
    aget v18, v15, v7

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 1179
    aget v18, v16, v7

    if-eqz v18, :cond_8

    .line 1180
    const/16 v18, 0x1

    aput-boolean v18, v12, v7

    .line 1192
    :cond_6
    :goto_3
    aget v18, v16, v7

    if-eqz v18, :cond_7

    .line 1193
    aget v18, v16, v7

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1194
    :cond_7
    move v10, v7

    .line 1176
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1182
    :cond_8
    const/16 v18, 0x1

    aput-boolean v18, v11, v7

    goto :goto_3

    .line 1184
    :cond_9
    aget v18, v15, v7

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 1185
    aget v18, v16, v7

    if-eqz v18, :cond_a

    .line 1186
    const/16 v18, 0x1

    aput-boolean v18, v14, v7

    goto :goto_3

    .line 1188
    :cond_a
    const/16 v18, 0x1

    aput-boolean v18, v13, v7

    goto :goto_3

    .line 1196
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1200
    :cond_c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "op01Usim: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v12}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1201
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "op01Sim: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v11}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1202
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "overseaUsim: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v14}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1203
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "overseaSim: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v13}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1205
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "csimRuimCount: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1206
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "nonCsimRuimPhoneId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1209
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isOp01LCProject()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1210
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v8, v0, :cond_e

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_e

    .line 1211
    if-eq v10, v4, :cond_d

    .line 1212
    const-string/jumbo v18, "op01-L+C: current capability SIM is on CSIM/RUIM, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1213
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1215
    :cond_d
    const/16 v18, 0x1

    return v18

    .line 1218
    :cond_e
    const/4 v7, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_1c

    .line 1219
    aget-object v18, v6, v7

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 1220
    invoke-static {v7, v12, v11, v14, v13}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I

    move-result v17

    .line 1222
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "op01: i = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", currIccId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v6, v7

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", targetSim : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1225
    aget-boolean v18, v12, v7

    if-eqz v18, :cond_10

    .line 1226
    const-string/jumbo v18, "op01-C1: cur is old op01 USIM, no change"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1227
    if-eq v4, v7, :cond_f

    .line 1228
    const-string/jumbo v18, "op01-C1a: old op01 USIM change slot, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1229
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1231
    :cond_f
    const/16 v18, 0x1

    return v18

    .line 1232
    :cond_10
    aget-boolean v18, v11, v7

    if-eqz v18, :cond_13

    .line 1233
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 1234
    const-string/jumbo v18, "op01-C2: cur is old op01 SIM but find op01 USIM, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1235
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1240
    :cond_11
    :goto_6
    const/16 v18, 0x1

    return v18

    .line 1236
    :cond_12
    if-eq v4, v7, :cond_11

    .line 1237
    const-string/jumbo v18, "op01-C2a: old op01 SIM change slot, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1238
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_6

    .line 1241
    :cond_13
    aget-boolean v18, v14, v7

    if-eqz v18, :cond_16

    .line 1242
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    .line 1243
    const-string/jumbo v18, "op01-C3: cur is old OS USIM but find op01 SIMs, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1244
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1249
    :cond_14
    :goto_7
    const/16 v18, 0x1

    return v18

    .line 1245
    :cond_15
    if-eq v4, v7, :cond_14

    .line 1246
    const-string/jumbo v18, "op01-C3a: old OS USIM change slot, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1247
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_7

    .line 1250
    :cond_16
    aget-boolean v18, v13, v7

    if-eqz v18, :cond_19

    .line 1251
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    .line 1252
    const-string/jumbo v18, "op01-C4: cur is old OS SIM but find op01 SIMs/OS USIM, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1253
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1258
    :cond_17
    :goto_8
    const/16 v18, 0x1

    return v18

    .line 1254
    :cond_18
    if-eq v4, v7, :cond_17

    .line 1255
    const-string/jumbo v18, "op01-C4a: old OS SIM change slot, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1256
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_8

    .line 1259
    :cond_19
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a

    .line 1260
    const-string/jumbo v18, "op01-C5: cur is old non-op01 SIM/USIM but find higher SIM, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1261
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1262
    const/16 v18, 0x1

    return v18

    .line 1264
    :cond_1a
    const-string/jumbo v18, "op01-C6: no higher priority SIM, no cahnge"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1265
    const/16 v18, 0x1

    return v18

    .line 1218
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 1269
    :cond_1c
    invoke-static {v4, v12, v11, v14, v13}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I

    move-result v17

    .line 1271
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "op01: target SIM :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1272
    aget-boolean v18, v12, v4

    if-eqz v18, :cond_1d

    .line 1273
    const-string/jumbo v18, "op01-C7: cur is new op01 USIM, no change"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1274
    const/16 v18, 0x1

    return v18

    .line 1275
    :cond_1d
    aget-boolean v18, v11, v4

    if-eqz v18, :cond_1f

    .line 1276
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1e

    .line 1277
    const-string/jumbo v18, "op01-C8: cur is new op01 SIM but find op01 USIM, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1278
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1280
    :cond_1e
    const/16 v18, 0x1

    return v18

    .line 1281
    :cond_1f
    aget-boolean v18, v14, v4

    if-eqz v18, :cond_21

    .line 1282
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_20

    .line 1283
    const-string/jumbo v18, "op01-C9: cur is new OS USIM but find op01 SIMs, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1284
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1286
    :cond_20
    const/16 v18, 0x1

    return v18

    .line 1287
    :cond_21
    aget-boolean v18, v13, v4

    if-eqz v18, :cond_23

    .line 1288
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_22

    .line 1289
    const-string/jumbo v18, "op01-C10: cur is new OS SIM but find op01 SIMs/OS USIM, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1290
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1292
    :cond_22
    const/16 v18, 0x1

    return v18

    .line 1293
    :cond_23
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_24

    .line 1294
    const-string/jumbo v18, "op01-C11: cur is non-op01 but find higher priority SIM, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1295
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1299
    :goto_9
    const/16 v18, 0x1

    return v18

    .line 1297
    :cond_24
    const-string/jumbo v18, "op01-C12: no higher priority SIM, no cahnge"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private checkOp01CapSwitch6m()Z
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1305
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v7, v10, [I

    .line 1306
    .local v7, "simOpInfo":[I
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v8, v10, [I

    .line 1307
    .local v8, "simType":[I
    const/4 v9, -0x1

    .line 1308
    .local v9, "targetPhoneId":I
    const/4 v4, 0x0

    .line 1309
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 1310
    .local v5, "insertedStatus":I
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v10, [Ljava/lang/String;

    .line 1311
    .local v0, "currIccId":[Ljava/lang/String;
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v6, v10, [I

    .line 1312
    .local v6, "priority":[I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 1313
    .local v2, "defDataSubId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1314
    .local v1, "defDataPhoneId":I
    if-ltz v1, :cond_1

    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v1, v10, :cond_1

    .line 1316
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "default data phoneId from sub = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1322
    :goto_0
    const-string/jumbo v10, "checkOp01CapSwitch6m start"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1324
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v10, :cond_4

    .line 1325
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v3

    .line 1326
    aget-object v10, v0, v3

    if-eqz v10, :cond_0

    const-string/jumbo v10, ""

    aget-object v11, v0, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1327
    :cond_0
    const-string/jumbo v10, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1328
    return v12

    .line 1318
    .end local v3    # "i":I
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "phoneId out of boundary :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1319
    const/4 v1, -0x1

    goto :goto_0

    .line 1330
    .restart local v3    # "i":I
    :cond_2
    const-string/jumbo v10, "N/A"

    aget-object v11, v0, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1331
    add-int/lit8 v4, v4, 0x1

    .line 1332
    shl-int v10, v13, v3

    or-int/2addr v5, v10

    .line 1324
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1336
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "checkOp01CapSwitch6m : Inserted SIM count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1337
    const-string/jumbo v11, ", insertedStatus: "

    .line 1336
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1338
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v10}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1339
    const-string/jumbo v10, "checkOp01CapSwitch6m: sim locked"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1340
    const-string/jumbo v10, "persist.radio.unlock"

    const-string/jumbo v11, "true"

    invoke-direct {p0, v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    :goto_2
    invoke-static {v7, v8, v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1346
    return v12

    .line 1342
    :cond_5
    const-string/jumbo v10, "checkOp01CapSwitch6m: no sim locked"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1343
    const-string/jumbo v10, "persist.radio.unlock"

    const-string/jumbo v11, "false"

    invoke-direct {p0, v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1349
    :cond_6
    const/4 v3, 0x0

    :goto_3
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v10, :cond_a

    .line 1350
    aget v10, v7, v3

    if-ne v10, v14, :cond_9

    .line 1351
    aget v10, v8, v3

    if-ne v10, v13, :cond_8

    .line 1352
    aput v12, v6, v3

    .line 1349
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1353
    :cond_8
    aget v10, v8, v3

    if-nez v10, :cond_7

    .line 1354
    aput v13, v6, v3

    goto :goto_4

    .line 1357
    :cond_9
    aput v14, v6, v3

    goto :goto_4

    .line 1361
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "priority: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1364
    invoke-static {v1, v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getHighestPriorityPhone(I[I)I

    move-result v9

    .line 1366
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "op01-6m: target phone: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1367
    const/4 v10, -0x1

    if-eq v9, v10, :cond_c

    .line 1368
    const-string/jumbo v10, "op01-6m: highest priority SIM determined, change!"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1369
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1375
    :goto_5
    if-lt v4, v14, :cond_b

    .line 1376
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDefaultDataOp01MultiSims()V

    .line 1379
    :cond_b
    return v13

    .line 1371
    :cond_c
    const-string/jumbo v10, "op01-6m: can\'t determine highest priority SIM, no cahnge"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private checkOp02CapSwitch(I)Z
    .locals 14
    .param p1, "policy"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1703
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v7, v10, [I

    .line 1704
    .local v7, "simOpInfo":[I
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v8, v10, [I

    .line 1705
    .local v8, "simType":[I
    const/4 v3, 0x0

    .line 1706
    .local v3, "insertedStatus":I
    const/4 v2, 0x0

    .line 1707
    .local v2, "insertedSimCount":I
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v10, [Ljava/lang/String;

    .line 1708
    .local v0, "currIccId":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1709
    .local v9, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1710
    .local v6, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1711
    .local v4, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1713
    .local v5, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v1, v10, :cond_3

    .line 1714
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v1

    .line 1715
    aget-object v10, v0, v1

    if-eqz v10, :cond_0

    const-string/jumbo v10, ""

    aget-object v11, v0, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1716
    :cond_0
    const-string/jumbo v10, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1717
    return v12

    .line 1719
    :cond_1
    const-string/jumbo v10, "N/A"

    aget-object v11, v0, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1720
    add-int/lit8 v2, v2, 0x1

    .line 1721
    shl-int v10, v13, v1

    or-int/2addr v3, v10

    .line 1713
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1724
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "checkOp02CapSwitch : Inserted SIM count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1725
    const-string/jumbo v11, ", insertedStatus: "

    .line 1724
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1728
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v10}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1729
    const-string/jumbo v10, "checkOp02CapSwitch: sim locked"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1730
    if-nez p1, :cond_4

    .line 1731
    const-string/jumbo v10, "persist.radio.unlock"

    const-string/jumbo v11, "true"

    invoke-direct {p0, v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    :goto_1
    invoke-static {v7, v8, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1744
    return v12

    .line 1733
    :cond_4
    const-string/jumbo v10, "persist.radio.unlock.roaming"

    const-string/jumbo v11, "true"

    invoke-direct {p0, v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1736
    :cond_5
    const-string/jumbo v10, "checkOp02CapSwitch: no sim locked"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1737
    if-nez p1, :cond_6

    .line 1738
    const-string/jumbo v10, "persist.radio.unlock"

    const-string/jumbo v11, "false"

    invoke-direct {p0, v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1740
    :cond_6
    const-string/jumbo v10, "persist.radio.unlock.roaming"

    const-string/jumbo v11, "false"

    invoke-direct {p0, v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1747
    :cond_7
    iget-boolean v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v10, :cond_8

    .line 1748
    const-string/jumbo v10, "DataSubSelector for OP02: do not switch because of mAirplaneModeOn"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1749
    if-nez p1, :cond_9

    .line 1750
    iput-boolean v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 1756
    :cond_8
    :goto_2
    const/4 v1, 0x0

    :goto_3
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v1, v10, :cond_c

    .line 1757
    aget v10, v7, v1

    const/4 v11, 0x3

    if-ne v11, v10, :cond_a

    .line 1758
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
    :goto_4
    aget v10, v8, v1

    if-ne v13, v10, :cond_b

    .line 1763
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1756
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1751
    :cond_9
    if-ne v13, p1, :cond_8

    .line 1752
    iput-boolean v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    goto :goto_2

    .line 1760
    :cond_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1765
    :cond_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1768
    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "usimIndexList size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1769
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "op02IndexList size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1770
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "policy = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1772
    iput-boolean v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    .line 1773
    packed-switch p1, :pswitch_data_0

    .line 1781
    const-string/jumbo v10, "Should NOT be here"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 1784
    :goto_6
    return v13

    .line 1775
    :pswitch_0
    invoke-direct {p0, v9, v4, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->executeOp02HomePolicy(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_6

    .line 1778
    :pswitch_1
    invoke-direct {p0, v9, v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->executeOp02RoamingPolocy(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_6

    .line 1773
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executeOp02HomePolicy(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1789
    const/4 v2, -0x1

    .line 1790
    .local v2, "phoneId":I
    const/4 v1, 0x0

    .line 1792
    .local v1, "op02CardCount":I
    const-string/jumbo v3, "Enter op02HomePolicy"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1794
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v6, :cond_3

    .line 1796
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1797
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1798
    add-int/lit8 v1, v1, 0x1

    .line 1799
    move v2, v0

    .line 1796
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1803
    :cond_1
    if-ne v1, v5, :cond_2

    .line 1808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "C2: Only one OP02 USIM inserted, set default data to phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1810
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1811
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1812
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    .line 1788
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 1816
    .restart local v0    # "i":I
    :cond_2
    const-string/jumbo v3, "C3: More than two OP02 cards or other operator cards inserted,Display dialog"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1818
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    .line 1819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPrevDefaultDataSubId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1820
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    goto :goto_1

    .line 1822
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 1827
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "C4: Only one USIM inserted, set default data to phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1830
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1831
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1832
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    goto :goto_1

    .line 1836
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 1837
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1838
    add-int/lit8 v1, v1, 0x1

    .line 1839
    move v2, v0

    .line 1836
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1843
    :cond_6
    if-ne v1, v5, :cond_7

    .line 1848
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "C5: OP02 card + otehr op cards inserted, set default data to phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1850
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1851
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1852
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    goto/16 :goto_1

    .line 1856
    :cond_7
    const-string/jumbo v3, "C6: More than two OP02 cards or other operator cards inserted,display dialog"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1858
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    .line 1859
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    goto/16 :goto_1
.end method

.method private executeOp02RoamingPolocy(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1866
    const/4 v2, -0x1

    .line 1867
    .local v2, "phoneId":I
    const/4 v4, 0x0

    .line 1869
    .local v4, "usimCount":I
    const-string/jumbo v5, "Enter op02RoamingPolocy"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1871
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 1872
    const-string/jumbo v5, "mContext is null, return"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 1876
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v7, :cond_5

    .line 1878
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1879
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1880
    add-int/lit8 v4, v4, 0x1

    .line 1881
    move v2, v1

    .line 1878
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1885
    :cond_2
    if-ne v4, v6, :cond_4

    .line 1890
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "C2: Only one OP02 USIM inserted, set default data to phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1892
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1893
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1894
    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    .line 1942
    .end local v1    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "first_time_roaming"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1944
    .local v3, "preferenceRoaming":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1945
    .local v0, "editorRoaming":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "need_to_execute_roaming"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1946
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1947
    const-string/jumbo v5, "write sharedPreference ERROR"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 1865
    :cond_3
    return-void

    .line 1898
    .end local v0    # "editorRoaming":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferenceRoaming":Landroid/content/SharedPreferences;
    .restart local v1    # "i":I
    :cond_4
    const-string/jumbo v5, "C3: More than two USIM cards or other SIM cards inserted, show dialog"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1899
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    iput v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    .line 1900
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    goto :goto_1

    .line 1902
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 1907
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1908
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "C4: OP02 card + other cards inserted, set default data to phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1910
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1911
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1912
    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    goto :goto_1

    .line 1916
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 1917
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1918
    add-int/lit8 v4, v4, 0x1

    .line 1919
    move v2, v1

    .line 1916
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1923
    :cond_8
    if-ne v4, v6, :cond_9

    .line 1928
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "C5: Other USIM + other SIM cards inserted, set default data to phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1930
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1931
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1932
    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    goto/16 :goto_1

    .line 1936
    :cond_9
    const-string/jumbo v5, "C6: More than two USIM cards or all SIM cards inserted, diaplay dialog"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1937
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    iput v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    .line 1938
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    goto/16 :goto_1
.end method

.method private getDataEnabledFromSetting(I)Z
    .locals 5
    .param p1, "nSubId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDataEnabledFromSetting, nSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1994
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1995
    :cond_0
    const-string/jumbo v2, "getDataEnabledFromSetting, context or resolver is null, return"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1996
    return v4

    .line 1999
    :cond_1
    const/4 v0, 0x0

    .line 2001
    .local v0, "retVal":Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2002
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mobile_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2001
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 2007
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDataEnabledFromSetting, retVal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2008
    return v0

    .line 2001
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2003
    :catch_0
    move-exception v1

    .line 2004
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLastDataEnabled()I
    .locals 5

    .prologue
    .line 2097
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 2098
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DataSubselector getLastDataEnable subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2099
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mobile_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2099
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2101
    .local v0, "enabled":I
    return v0
.end method

.method private getNewSimSlot()I
    .locals 2

    .prologue
    .line 2055
    const-string/jumbo v0, "getNewSimSlot"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2056
    const-string/jumbo v0, "persist.radio.new.sim.slot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSimStatus()I
    .locals 2

    .prologue
    .line 2035
    const-string/jumbo v0, "getSimStatus"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2036
    const-string/jumbo v0, "persist.radio.sim.status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleDataEnableForOp02(I)V
    .locals 8
    .param p1, "insertedSimCount"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1952
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleDataEnableForOp02: insertedSimCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1954
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1955
    .local v3, "telephony":Landroid/telephony/TelephonyManager;
    if-nez v3, :cond_0

    .line 1956
    const-string/jumbo v4, "TelephonyManager.getDefault() return null"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 1957
    return-void

    .line 1960
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 1961
    .local v1, "nDefaultDataSubId":I
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1962
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1963
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getDataEnabledFromSetting(I)Z

    move-result v0

    .line 1964
    .local v0, "enable":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEnable by lastValidDataSub\'s setting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1965
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    invoke-direct {p0, v4, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1951
    .end local v0    # "enable":Z
    :cond_1
    :goto_0
    return-void

    .line 1967
    :cond_2
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    invoke-direct {p0, v4, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_0

    .line 1969
    :cond_3
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1970
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    .line 1969
    if-eqz v4, :cond_1

    .line 1971
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    if-eq v4, v1, :cond_5

    .line 1972
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getDataEnabledFromSetting(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1973
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    invoke-direct {p0, v4, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_0

    .line 1975
    :cond_4
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    invoke-direct {p0, v4, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_0

    .line 1977
    :cond_5
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 1978
    const/4 v2, 0x0

    .line 1979
    .local v2, "nonDefaultPhoneId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    if-nez v4, :cond_6

    .line 1980
    const/4 v2, 0x1

    .line 1984
    :goto_1
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getDataEnabledFromSetting(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1985
    invoke-direct {p0, v2, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_0

    .line 1982
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private handleDefaultDataOp01MultiSims()V
    .locals 10

    .prologue
    .line 1086
    const/4 v5, -0x1

    .line 1087
    .local v5, "phoneId":I
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v6, v8, [I

    .line 1088
    .local v6, "simOpInfo":[I
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v7, v8, [I

    .line 1089
    .local v7, "simType":[I
    const/4 v4, 0x0

    .line 1091
    .local v4, "insertedStatus":I
    invoke-static {v6, v7, v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1093
    const/4 v0, 0x0

    .line 1094
    .local v0, "hasCMCC":Z
    const/4 v1, 0x0

    .line 1095
    .local v1, "hasOther":Z
    const/4 v3, -0x1

    .line 1096
    .local v3, "iOther":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v8, :cond_2

    .line 1097
    aget v8, v6, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 1098
    if-nez v0, :cond_0

    .line 1099
    const/4 v0, 0x1

    .line 1100
    move v5, v2

    .line 1096
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1103
    :cond_1
    if-nez v1, :cond_0

    .line 1104
    const/4 v1, 0x1

    .line 1105
    move v3, v2

    goto :goto_1

    .line 1110
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1111
    const-string/jumbo v8, "OP01 C2: Multi SIM: CMCC + Other, set default data to CMCC"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1112
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1113
    const/4 v8, 0x0

    invoke-direct {p0, v3, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1117
    :cond_3
    const-string/jumbo v8, "OP01 C2: Multi SIM: Turn off non default data"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1118
    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    if-eqz v8, :cond_4

    .line 1119
    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    .line 1122
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    .line 1083
    .end local v0    # "hasCMCC":Z
    .end local v1    # "hasOther":Z
    .end local v2    # "i":I
    .end local v3    # "iOther":I
    :cond_5
    return-void
.end method

.method private isCanSwitch()Z
    .locals 6

    .prologue
    .line 2129
    const/4 v1, 0x1

    .line 2130
    .local v1, "ret":Z
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v4, :cond_0

    .line 2131
    const/4 v1, 0x0

    .line 2132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DataSubselector,isCanSwitch mAirplaneModeOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2133
    return v1

    .line 2135
    :cond_0
    const/4 v3, 0x0

    .line 2136
    .local v3, "simState":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 2137
    .local v2, "simNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 2138
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    .line 2139
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 2140
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 2143
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DataSubselector,sim locked ,isCanSwitch simState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2144
    const/4 v1, 0x0

    .line 2145
    return v1

    .line 2141
    :cond_2
    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 2142
    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 2137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2148
    :cond_3
    return v1
.end method

.method private isNeedWaitUnlock(Ljava/lang/String;)Z
    .locals 1
    .param p1, "prop"    # Ljava/lang/String;

    .prologue
    .line 2012
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isOP09ASupport()Z
    .locals 3

    .prologue
    .line 2115
    const-string/jumbo v0, "OP09"

    const-string/jumbo v1, "ro.operator.optr"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2116
    const-string/jumbo v0, "SEGDEFAULT"

    const-string/jumbo v1, "ro.operator.seg"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOP09CSupport()Z
    .locals 3

    .prologue
    .line 2124
    const-string/jumbo v0, "OP09"

    const-string/jumbo v1, "ro.operator.optr"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2125
    const-string/jumbo v0, "SEGC"

    const-string/jumbo v1, "ro.operator.seg"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOP09Support()Z
    .locals 3

    .prologue
    .line 2120
    const-string/jumbo v0, "OP09"

    const-string/jumbo v1, "ro.operator.optr"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 2083
    const-string/jumbo v0, "DataSubSelector"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 2089
    const-string/jumbo v0, "DataSubSelector"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    return-void
.end method

.method private registerWorldModeReceiver()V
    .locals 3

    .prologue
    .line 2060
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2061
    const-string/jumbo v1, "registerWorldModeReceiver, context is null => return"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2062
    return-void

    .line 2065
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2066
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2067
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2068
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mHasRegisterWorldModeReceiver:Z

    .line 2059
    return-void
.end method

.method private resetNewSimSlot()V
    .locals 2

    .prologue
    .line 2050
    const-string/jumbo v0, "resetNewSimSlot"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2051
    const-string/jumbo v0, "persist.radio.new.sim.slot"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    return-void
.end method

.method private resetSimStatus()V
    .locals 2

    .prologue
    .line 2030
    const-string/jumbo v0, "resetSimStatus"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2031
    const-string/jumbo v0, "persist.radio.sim.status"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    return-void
.end method

.method private setCapability(I)Z
    .locals 13
    .param p1, "phoneId"    # I

    .prologue
    .line 1628
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP09CSupport()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1629
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isCanSwitch()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1630
    const-string/jumbo v11, "setCapability: isCanSwitch = false"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1631
    const/4 v11, 0x1

    return v11

    .line 1634
    :cond_0
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v9, v11, [I

    .line 1635
    .local v9, "phoneRat":[I
    const/4 v8, 0x1

    .line 1637
    .local v8, "isSwitchSuccess":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setCapability: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1639
    const-string/jumbo v11, "persist.radio.simswitch"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1640
    .local v1, "curr3GSim":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "current 3G Sim = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1644
    :try_start_0
    const-string/jumbo v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 1643
    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 1646
    .local v5, "iTel":Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v11, "phoneEx"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 1645
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v6

    .line 1647
    .local v6, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v5, :cond_1

    if-nez v6, :cond_2

    .line 1648
    :cond_1
    const-string/jumbo v11, "Can not get phone service"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 1649
    const/4 v11, 0x0

    return v11

    .line 1652
    :cond_2
    const/4 v7, 0x0

    .line 1653
    .local v7, "isSimSwitching":Z
    invoke-interface {v6}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isCapabilitySwitching()Z

    move-result v7

    .line 1654
    .local v7, "isSimSwitching":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "current capability switch status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1655
    if-nez v7, :cond_3

    if-eqz v1, :cond_3

    const-string/jumbo v11, ""

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1663
    :cond_3
    const-string/jumbo v11, "phone"

    invoke-interface {v5, p1, v11}, Lcom/android/internal/telephony/ITelephony;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v2

    .line 1664
    .local v2, "currRat":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Current phoneRat:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1666
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v10, v11, [Landroid/telephony/RadioAccessFamily;

    .line 1667
    .local v10, "rat":[Landroid/telephony/RadioAccessFamily;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v11, :cond_8

    .line 1668
    if-ne p1, v4, :cond_5

    .line 1669
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SIM switch to Phone"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1670
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v11

    aput v11, v9, v4

    .line 1674
    :goto_1
    new-instance v11, Landroid/telephony/RadioAccessFamily;

    aget v12, v9, v4

    invoke-direct {v11, v4, v12}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v11, v10, v4

    .line 1667
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1656
    .end local v2    # "currRat":I
    .end local v4    # "i":I
    .end local v10    # "rat":[Landroid/telephony/RadioAccessFamily;
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1657
    .local v0, "curr3GPhoneId":I
    add-int/lit8 v11, p1, 0x1

    if-ne v0, v11, :cond_3

    .line 1658
    const-string/jumbo v11, "Current 3G phone equals target phone, don\'t trigger switch"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1659
    return v8

    .line 1672
    .end local v0    # "curr3GPhoneId":I
    .restart local v2    # "currRat":I
    .restart local v4    # "i":I
    .restart local v10    # "rat":[Landroid/telephony/RadioAccessFamily;
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    move-result v11

    aput v11, v9, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1680
    .end local v2    # "currRat":I
    .end local v4    # "i":I
    .end local v5    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .end local v6    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v7    # "isSimSwitching":Z
    .end local v10    # "rat":[Landroid/telephony/RadioAccessFamily;
    :catch_0
    move-exception v3

    .line 1681
    .local v3, "ex":Landroid/os/RemoteException;
    const-string/jumbo v11, "Set phone rat fail!!!"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1683
    const/4 v8, 0x0

    .line 1686
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_6
    :goto_2
    if-nez v8, :cond_9

    .line 1687
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSwitching()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1688
    const-string/jumbo v11, "world mode switching!"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1689
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->registerWorldModeReceiver()V

    .line 1690
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneId:I

    .line 1699
    :cond_7
    :goto_3
    return v8

    .line 1676
    .restart local v2    # "currRat":I
    .restart local v4    # "i":I
    .restart local v5    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .restart local v6    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .restart local v7    # "isSimSwitching":Z
    .restart local v10    # "rat":[Landroid/telephony/RadioAccessFamily;
    :cond_8
    :try_start_1
    invoke-interface {v6, v10}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1677
    const-string/jumbo v11, "Set phone rat fail!!!"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1678
    const/4 v8, 0x0

    goto :goto_2

    .line 1693
    .end local v2    # "currRat":I
    .end local v4    # "i":I
    .end local v5    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .end local v6    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v7    # "isSimSwitching":Z
    .end local v10    # "rat":[Landroid/telephony/RadioAccessFamily;
    :cond_9
    iget-boolean v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mHasRegisterWorldModeReceiver:Z

    if-eqz v11, :cond_7

    .line 1694
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->unRegisterWorldModeReceiver()V

    .line 1695
    const/4 v11, -0x1

    iput v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneId:I

    goto :goto_3
.end method

.method private setCapabilityIfNeeded(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1620
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP09ASupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    const/4 v0, 0x1

    return v0

    .line 1624
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v0

    return v0
.end method

.method private setDataEnabled(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataEnabled: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1515
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1516
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 1517
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 1518
    invoke-virtual {v2, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1520
    :cond_1
    const/4 v1, 0x0

    .line 1521
    .local v1, "phoneSubId":I
    if-nez p2, :cond_2

    .line 1522
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 1523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to disable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1524
    invoke-virtual {v2, v1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_0

    .line 1526
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v0, v3, :cond_0

    .line 1527
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 1528
    if-eq v0, p1, :cond_3

    .line 1529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to disable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1530
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 1526
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1532
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to enable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1533
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_2
.end method

.method private setDefaultData(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 1568
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    .line 1569
    .local v2, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 1570
    .local v1, "sub":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 1571
    .local v0, "currSub":I
    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    .line 1573
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setLastValidDefaultDataSub(I)V

    .line 1575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", current default sub:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1576
    const-string/jumbo v4, "last valid default sub:"

    .line 1575
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1576
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    .line 1575
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1577
    if-eq v1, v0, :cond_2

    .line 1578
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP09Support()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    if-lt v1, v3, :cond_1

    .line 1579
    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 1567
    :cond_1
    :goto_0
    return-void

    .line 1582
    :cond_2
    const-string/jumbo v3, "setDefaultData: default data unchanged"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setLastValidDefaultDataSub(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 2105
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLastValidDefaultDataSub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2107
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    .line 2104
    :goto_0
    return-void

    .line 2109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "because invalid id to set, keep LastValidDefaultDataSub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2110
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    .line 2109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2016
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    return-void
.end method

.method private setNewSimSlot(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2040
    if-nez p1, :cond_0

    .line 2041
    const-string/jumbo v1, "setNewSimSlot, intent is null => return"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2042
    return-void

    .line 2044
    :cond_0
    const-string/jumbo v1, "setNewSimSlot"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2045
    const-string/jumbo v1, "newSIMSlot"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2046
    .local v0, "newSimStatus":I
    const-string/jumbo v1, "persist.radio.new.sim.slot"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    return-void
.end method

.method private setSimStatus(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2020
    if-nez p1, :cond_0

    .line 2021
    const-string/jumbo v1, "setSimStatus, intent is null => return"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2022
    return-void

    .line 2024
    :cond_0
    const-string/jumbo v1, "setSimStatus"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2025
    const-string/jumbo v1, "simDetectStatus"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2026
    .local v0, "detectedType":I
    const-string/jumbo v1, "persist.radio.sim.status"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    return-void
.end method

.method private subSelectorForC2k6m(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 596
    const-string/jumbo v6, "DataSubSelector for C2K6M: only for capability switch;"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 598
    const/4 v5, -0x1

    .line 599
    .local v5, "phoneId":I
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v6, [Ljava/lang/String;

    .line 603
    .local v0, "currIccId":[Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 604
    .local v3, "defaultIccid":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 605
    .local v2, "defDataSubId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 606
    .local v1, "defDataPhoneId":I
    if-ltz v1, :cond_0

    .line 607
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    array-length v6, v6

    if-lt v1, v6, :cond_2

    .line 608
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "phoneId out of boundary :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 614
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Default data Iccid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 616
    const-string/jumbo v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "N/A"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 617
    :cond_1
    return-void

    .line 610
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "default data phoneId from sub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 611
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 619
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v6, :cond_6

    .line 620
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    .line 621
    aget-object v6, v0, v4

    if-eqz v6, :cond_4

    const-string/jumbo v6, ""

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 622
    :cond_4
    const-string/jumbo v6, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 623
    return-void

    .line 625
    :cond_5
    aget-object v6, v0, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 626
    move v5, v4

    .line 630
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Default data phoneid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 631
    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    .line 633
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 595
    :cond_7
    return-void

    .line 619
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private subSelectorForOm(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 433
    const/4 v5, -0x1

    .line 434
    .local v5, "phoneId":I
    const/4 v3, 0x0

    .line 435
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 436
    .local v4, "insertedStatus":I
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getSimStatus()I

    move-result v1

    .line 438
    .local v1, "detectedType":I
    :goto_0
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v7, [Ljava/lang/String;

    .line 440
    .local v0, "currIccId":[Ljava/lang/String;
    const-string/jumbo v7, "DataSubSelector for OM"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 442
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v7, :cond_5

    .line 443
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 444
    aget-object v7, v0, v2

    if-eqz v7, :cond_0

    const-string/jumbo v7, ""

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 445
    :cond_0
    const-string/jumbo v7, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 446
    return-void

    .line 437
    .end local v0    # "currIccId":[Ljava/lang/String;
    .end local v1    # "detectedType":I
    .end local v2    # "i":I
    :cond_1
    const-string/jumbo v7, "simDetectStatus"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "detectedType":I
    goto :goto_0

    .line 448
    .restart local v0    # "currIccId":[Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_2
    const-string/jumbo v7, "N/A"

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 449
    add-int/lit8 v3, v3, 0x1

    .line 450
    shl-int v7, v10, v2

    or-int/2addr v4, v7

    .line 442
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 452
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "clear mcc.mnc:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 454
    if-nez v2, :cond_4

    .line 455
    const-string/jumbo v6, "gsm.sim.ril.mcc.mnc"

    .line 459
    .local v6, "propStr":Ljava/lang/String;
    :goto_3
    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 457
    .end local v6    # "propStr":Ljava/lang/String;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "propStr":Ljava/lang/String;
    goto :goto_3

    .line 463
    .end local v6    # "propStr":Ljava/lang/String;
    :cond_5
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 464
    const-string/jumbo v7, "DataSubSelector for OM: do not switch because of sim locking"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 465
    const-string/jumbo v7, "persist.radio.unlock"

    const-string/jumbo v8, "true"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 467
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    .line 468
    return-void

    .line 470
    :cond_6
    const-string/jumbo v7, "DataSubSelector for OM: no pin lock"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 471
    const-string/jumbo v7, "persist.radio.unlock"

    const-string/jumbo v8, "false"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v7, :cond_7

    .line 474
    const-string/jumbo v7, "DataSubSelector for OM: do not switch because of mAirplaneModeOn"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 475
    iput-boolean v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 476
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 477
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    .line 478
    return-void

    .line 481
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Inserted SIM count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", insertedStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 483
    const/4 v7, 0x4

    if-ne v1, v7, :cond_9

    .line 485
    const-string/jumbo v7, "OM C0: Inserted status no change, do nothing"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 517
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    .line 518
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetSimStatus()V

    .line 519
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetNewSimSlot()V

    .line 431
    return-void

    .line 486
    :cond_9
    if-nez v3, :cond_a

    .line 491
    const-string/jumbo v7, "OM C1: No SIM inserted, set data unset"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 492
    const/4 v7, -0x1

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto :goto_4

    .line 493
    :cond_a
    if-ne v3, v10, :cond_d

    .line 494
    const/4 v2, 0x0

    :goto_5
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v7, :cond_b

    .line 495
    shl-int v7, v10, v2

    and-int/2addr v7, v4

    if-eqz v7, :cond_c

    .line 496
    move v5, v2

    .line 504
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "OM C2: Single SIM: Set Default data to phone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 505
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 506
    invoke-direct {p0, v5, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_4

    .line 494
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 507
    :cond_d
    const/4 v7, 0x2

    if-lt v3, v7, :cond_8

    .line 512
    const-string/jumbo v7, "OM C3: Multi SIM: Set Default data to phone1"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 513
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 514
    invoke-direct {p0, v9, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_4
.end method

.method private subSelectorForOp01(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 987
    const/4 v6, -0x1

    .line 988
    .local v6, "phoneId":I
    const/4 v4, 0x0

    .line 989
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 990
    .local v5, "insertedStatus":I
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getSimStatus()I

    move-result v2

    .line 992
    .local v2, "detectedType":I
    :goto_0
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v8, [Ljava/lang/String;

    .line 994
    .local v0, "currIccId":[Ljava/lang/String;
    const-string/jumbo v8, "DataSubSelector for op01"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 996
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v8, :cond_5

    .line 997
    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    .line 998
    aget-object v8, v0, v3

    if-eqz v8, :cond_0

    const-string/jumbo v8, ""

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 999
    :cond_0
    const-string/jumbo v8, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1000
    return-void

    .line 991
    .end local v0    # "currIccId":[Ljava/lang/String;
    .end local v2    # "detectedType":I
    .end local v3    # "i":I
    :cond_1
    const-string/jumbo v8, "simDetectStatus"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "detectedType":I
    goto :goto_0

    .line 1002
    .restart local v0    # "currIccId":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "currIccId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1003
    const-string/jumbo v8, "N/A"

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1004
    add-int/lit8 v4, v4, 0x1

    .line 1005
    shl-int v8, v10, v3

    or-int/2addr v5, v8

    .line 996
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1007
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "clear mcc.mnc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1009
    if-nez v3, :cond_4

    .line 1010
    const-string/jumbo v7, "gsm.sim.ril.mcc.mnc"

    .line 1014
    .local v7, "propStr":Ljava/lang/String;
    :goto_3
    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1012
    .end local v7    # "propStr":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "propStr":Ljava/lang/String;
    goto :goto_3

    .line 1018
    .end local v7    # "propStr":Ljava/lang/String;
    :cond_5
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1019
    const-string/jumbo v8, "DataSubSelector for OP01: do not switch because of sim locking"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1020
    const-string/jumbo v8, "persist.radio.unlock"

    const-string/jumbo v9, "true"

    invoke-direct {p0, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 1022
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 1023
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    .line 1024
    return-void

    .line 1026
    :cond_6
    const-string/jumbo v8, "DataSubSelector for OP01: no pin lock"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1027
    const-string/jumbo v8, "persist.radio.unlock"

    const-string/jumbo v9, "false"

    invoke-direct {p0, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iget-boolean v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v8, :cond_7

    .line 1030
    const-string/jumbo v8, "DataSubSelector for OP01: do not switch because of mAirplaneModeOn"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1031
    iput-boolean v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 1032
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 1033
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 1034
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    .line 1035
    return-void

    .line 1038
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Inserted SIM count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", insertedStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1041
    const-string/jumbo v8, "persist.radio.data.iccid"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1042
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Default data Iccid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1044
    if-nez v4, :cond_9

    .line 1046
    const-string/jumbo v8, "OP01 C0: No SIM inserted, do nothing"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1079
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetSimStatus()V

    .line 1080
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetNewSimSlot()V

    .line 986
    return-void

    .line 1047
    :cond_9
    if-ne v4, v10, :cond_d

    .line 1048
    const/4 v3, 0x0

    :goto_5
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v8, :cond_a

    .line 1049
    shl-int v8, v10, v3

    and-int/2addr v8, v5

    if-eqz v8, :cond_c

    .line 1050
    move v6, v3

    .line 1055
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OP01 C1: Single SIM: Set Default data to phone:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1056
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1057
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1060
    :cond_b
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    goto :goto_4

    .line 1048
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1061
    :cond_d
    const/4 v8, 0x2

    if-lt v4, v8, :cond_8

    .line 1064
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 1068
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch6m()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1070
    iput-boolean v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    .line 1071
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 1072
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 1073
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    .line 1074
    return-void
.end method

.method private subSelectorForOp02()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 909
    const/4 v4, -0x1

    .line 910
    .local v4, "phoneId":I
    const/4 v2, 0x0

    .line 911
    .local v2, "insertedSimCount":I
    const/4 v3, 0x0

    .line 912
    .local v3, "insertedStatus":I
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v6, [Ljava/lang/String;

    .line 914
    .local v0, "currIccId":[Ljava/lang/String;
    const-string/jumbo v6, "DataSubSelector for op02 (subSelectorForOp02)"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 916
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v1, v6, :cond_4

    .line 917
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 918
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "currIccid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 919
    aget-object v6, v0, v1

    if-eqz v6, :cond_0

    const-string/jumbo v6, ""

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 920
    :cond_0
    const-string/jumbo v6, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 921
    return-void

    .line 923
    :cond_1
    const-string/jumbo v6, "N/A"

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 924
    add-int/lit8 v2, v2, 0x1

    .line 925
    shl-int v6, v8, v1

    or-int/2addr v3, v6

    .line 916
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 927
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "clear mcc.mnc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 929
    if-nez v1, :cond_3

    .line 930
    const-string/jumbo v5, "gsm.sim.ril.mcc.mnc"

    .line 934
    .local v5, "propStr":Ljava/lang/String;
    :goto_2
    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sim index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not inserted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 932
    .end local v5    # "propStr":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propStr":Ljava/lang/String;
    goto :goto_2

    .line 939
    .end local v5    # "propStr":Ljava/lang/String;
    :cond_4
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 940
    const-string/jumbo v6, "DataSubSelector for OP02: do not switch because of sim locking"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 941
    const-string/jumbo v6, "persist.radio.unlock"

    const-string/jumbo v7, "true"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    return-void

    .line 944
    :cond_5
    const-string/jumbo v6, "DataSubSelector for OP02: no pin lock"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 945
    const-string/jumbo v6, "persist.radio.unlock"

    const-string/jumbo v7, "false"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v6, :cond_6

    .line 948
    const-string/jumbo v6, "DataSubSelector for OP02: do not switch because of mAirplaneModeOn"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 949
    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 950
    return-void

    .line 953
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Inserted SIM count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", insertedStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 955
    if-nez v2, :cond_8

    .line 960
    const-string/jumbo v6, "C0: No SIM inserted: set default data unset"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 961
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 983
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    .line 908
    return-void

    .line 962
    :cond_8
    if-ne v2, v8, :cond_b

    .line 963
    const/4 v1, 0x0

    :goto_4
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v1, v6, :cond_9

    .line 964
    shl-int v6, v8, v1

    and-int/2addr v6, v3

    if-eqz v6, :cond_a

    .line 965
    move v4, v1

    .line 973
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "C1: Single SIM inserted: set default data to phone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 974
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 975
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 976
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    goto :goto_3

    .line 963
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 977
    :cond_b
    const/4 v6, 0x2

    if-lt v2, v6, :cond_7

    .line 978
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp02CapSwitch(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 979
    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    goto :goto_3
.end method

.method private subSelectorForOp02(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 819
    const/4 v5, -0x1

    .line 820
    .local v5, "phoneId":I
    const/4 v3, 0x0

    .line 821
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 822
    .local v4, "insertedStatus":I
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getSimStatus()I

    move-result v1

    .line 824
    .local v1, "detectedType":I
    :goto_0
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v7, [Ljava/lang/String;

    .line 826
    .local v0, "currIccId":[Ljava/lang/String;
    const-string/jumbo v7, "DataSubSelector for OP02"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 828
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v7, :cond_5

    .line 829
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 830
    aget-object v7, v0, v2

    if-eqz v7, :cond_0

    const-string/jumbo v7, ""

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 831
    :cond_0
    const-string/jumbo v7, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 832
    return-void

    .line 823
    .end local v0    # "currIccId":[Ljava/lang/String;
    .end local v1    # "detectedType":I
    .end local v2    # "i":I
    :cond_1
    const-string/jumbo v7, "simDetectStatus"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "detectedType":I
    goto :goto_0

    .line 834
    .restart local v0    # "currIccId":[Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_2
    const-string/jumbo v7, "N/A"

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 835
    add-int/lit8 v3, v3, 0x1

    .line 836
    shl-int v7, v10, v2

    or-int/2addr v4, v7

    .line 828
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 838
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "clear mcc.mnc:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 840
    if-nez v2, :cond_4

    .line 841
    const-string/jumbo v6, "gsm.sim.ril.mcc.mnc"

    .line 845
    .local v6, "propStr":Ljava/lang/String;
    :goto_3
    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 843
    .end local v6    # "propStr":Ljava/lang/String;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "propStr":Ljava/lang/String;
    goto :goto_3

    .line 849
    .end local v6    # "propStr":Ljava/lang/String;
    :cond_5
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 850
    const-string/jumbo v7, "DataSubSelector for OP02: do not switch because of sim locking"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 851
    const-string/jumbo v7, "persist.radio.unlock"

    const-string/jumbo v8, "true"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 853
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    .line 854
    return-void

    .line 856
    :cond_6
    const-string/jumbo v7, "DataSubSelector for OP02: no pin lock"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 857
    const-string/jumbo v7, "persist.radio.unlock"

    const-string/jumbo v8, "false"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v7, :cond_7

    .line 860
    const-string/jumbo v7, "DataSubSelector for OP02: do not switch because of mAirplaneModeOn"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 861
    iput-boolean v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 862
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 863
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    .line 864
    return-void

    .line 867
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Inserted SIM count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", insertedStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 869
    const/4 v7, 0x4

    if-ne v1, v7, :cond_9

    .line 871
    const-string/jumbo v7, "OP02 C0: Inserted status no change, do nothing"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 903
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    .line 904
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetSimStatus()V

    .line 905
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetNewSimSlot()V

    .line 818
    return-void

    .line 872
    :cond_9
    if-nez v3, :cond_a

    .line 877
    const-string/jumbo v7, "OP02 C1: No SIM inserted, set data unset"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 878
    const/4 v7, -0x1

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto :goto_4

    .line 879
    :cond_a
    if-ne v3, v10, :cond_d

    .line 880
    const/4 v2, 0x0

    :goto_5
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v7, :cond_b

    .line 881
    shl-int v7, v10, v2

    and-int/2addr v7, v4

    if-eqz v7, :cond_c

    .line 882
    move v5, v2

    .line 890
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "OP02 C2: Single SIM: Set Default data to phone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 891
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 892
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    goto :goto_4

    .line 880
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 893
    :cond_d
    const/4 v7, 0x2

    if-lt v3, v7, :cond_8

    .line 898
    const-string/jumbo v7, "OP02 C3: Multi SIM: Set Default data to phone1"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 899
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 900
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    goto :goto_4
.end method

.method private subSelectorForOp09(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1383
    if-nez p1, :cond_0

    .line 1384
    const-string/jumbo v8, "OP09: intent is null, ignore!"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1385
    return-void

    .line 1388
    :cond_0
    const-string/jumbo v8, "simDetectStatus"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1389
    .local v2, "detectedType":I
    const-string/jumbo v8, "simCount"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1390
    .local v1, "detectedCount":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    .line 1391
    .local v6, "subController":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v5, -0x1

    .line 1392
    .local v5, "phoneId":I
    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubIdList()[I

    move-result-object v7

    .line 1393
    .local v7, "subList":[I
    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 1394
    .local v0, "defaultSub":I
    array-length v3, v7

    .line 1395
    .local v3, "insertedSimCount":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OP09: Inserted SIM count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Intent count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1396
    const-string/jumbo v9, " detectedType = "

    .line 1395
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1396
    const-string/jumbo v9, " defaultSub = "

    .line 1395
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1397
    const/4 v8, -0x1

    if-le v1, v8, :cond_1

    if-eq v1, v3, :cond_1

    .line 1398
    const-string/jumbo v8, "OP09: Intent count and latest sub count not match, ignore and wait next."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1399
    return-void

    .line 1402
    :cond_1
    if-nez v3, :cond_2

    .line 1403
    const-string/jumbo v8, "OP09 C0: No SIM inserted, do nothing."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1509
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    .line 1382
    return-void

    .line 1404
    :cond_2
    const/4 v8, 0x1

    if-ne v3, v8, :cond_5

    .line 1405
    packed-switch v2, :pswitch_data_0

    .line 1445
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OP09 C5: ignore unknown detectedType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1408
    :pswitch_0
    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v5

    .line 1409
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OP09 C1: a new sim detected, Set Default slot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1410
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1411
    const/4 v8, 0x1

    invoke-direct {p0, v5, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1412
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(I)Z

    goto :goto_0

    .line 1416
    :pswitch_1
    const/4 v8, 0x0

    aget v8, v7, v8

    if-eq v8, v0, :cond_3

    .line 1418
    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v5

    .line 1419
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OP09 C2.1: left a sim not default, Set Default: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1421
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getDataEnabledFromSetting(I)Z

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1422
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1423
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(I)Z

    goto :goto_0

    .line 1425
    :cond_3
    const-string/jumbo v8, "OP09 C2.2: a sim left and it\'s default sub, do nothing."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1429
    :pswitch_2
    const/4 v8, 0x0

    aget v8, v7, v8

    if-eq v8, v0, :cond_4

    .line 1430
    const-string/jumbo v8, "OP09 C3.1: a sim left and is not default data sim, set it as default data sim."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1432
    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v5

    .line 1433
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getDataEnabledFromSetting(I)Z

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1434
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto/16 :goto_0

    .line 1436
    :cond_4
    const-string/jumbo v8, "OP09 C3.2: a sim left with default data on it, do nothing."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1442
    :pswitch_3
    const-string/jumbo v8, "OP09 C4: a sim exist and is old, do nothing."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1448
    :cond_5
    const/4 v8, 0x2

    if-ne v3, v8, :cond_c

    .line 1449
    packed-switch v2, :pswitch_data_1

    .line 1502
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OP09 C10: ignore unknown detectedType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1452
    :pswitch_4
    const-string/jumbo v8, "newSIMSlot"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1453
    .local v4, "newSimStatus":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OP09 C6.0: newSimStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " subList[0] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1454
    const/4 v9, 0x0

    aget v9, v7, v9

    .line 1453
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1454
    const-string/jumbo v9, " subList[1] = "

    .line 1453
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1454
    const/4 v9, 0x1

    aget v9, v7, v9

    .line 1453
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1457
    const/4 v8, 0x0

    aget v8, v7, v8

    if-ne v0, v8, :cond_7

    .line 1459
    const-string/jumbo v8, "OP09 C6.1: data on old sim1, turn off SIM2, set capability to SIM1."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1460
    const/4 v8, 0x3

    if-ne v4, v8, :cond_6

    .line 1461
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1463
    :cond_6
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1464
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(I)Z

    goto/16 :goto_0

    .line 1465
    :cond_7
    const/4 v8, 0x1

    aget v8, v7, v8

    if-ne v0, v8, :cond_9

    .line 1467
    const-string/jumbo v8, "OP09 C6.2: data on old sim2, turn off SIM1, set capability to SIM2."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1468
    const/4 v8, 0x3

    if-ne v4, v8, :cond_8

    .line 1469
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1471
    :cond_8
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1472
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(I)Z

    goto/16 :goto_0

    .line 1474
    :cond_9
    const-string/jumbo v8, "OP09 C6.3: new + new or new + old, no default, set sim1 as default."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1475
    const/4 v8, 0x1

    if-eq v4, v8, :cond_a

    const/4 v8, 0x2

    if-ne v4, v8, :cond_b

    .line 1477
    :cond_a
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getDataEnabledFromSetting(I)Z

    move-result v8

    .line 1476
    const/4 v9, 0x0

    invoke-direct {p0, v9, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1483
    :goto_1
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1484
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1485
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(I)Z

    goto/16 :goto_0

    .line 1479
    :cond_b
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_1

    .line 1490
    .end local v4    # "newSimStatus":I
    :pswitch_5
    const-string/jumbo v8, "OP09 C7: a sim removed and two sim left, not support yet!"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1494
    :pswitch_6
    const-string/jumbo v8, "OP09 C8: two sims swap slot location, do nothing."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1499
    :pswitch_7
    const-string/jumbo v8, "OP09 C9: two sims exist and are old, do nothing."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1506
    :cond_c
    const-string/jumbo v8, "OP09 C11: sim count bigger than 2, not support yet!"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1449
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private subSelectorForSolution15(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 404
    const-string/jumbo v4, "DataSubSelector for C2K om solution 1.5: capability maybe diff with default data"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 406
    const/4 v3, -0x1

    .line 407
    .local v3, "phoneId":I
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v1, v4, [Ljava/lang/String;

    .line 408
    .local v1, "currIccId":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    .line 410
    const-string/jumbo v4, "persist.radio.simswitch.iccid"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "capabilityIccid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "capability Iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 412
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v4, :cond_2

    .line 413
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 414
    aget-object v4, v1, v2

    if-eqz v4, :cond_0

    const-string/jumbo v4, ""

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "N/A"

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    :cond_0
    const-string/jumbo v4, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 416
    return-void

    .line 418
    :cond_1
    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 419
    move v3, v2

    .line 424
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "capability  phoneid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 425
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 427
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 403
    :cond_3
    return-void

    .line 412
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private turnOffNewSimData(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1588
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 1589
    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string/jumbo v6, "OP09"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1594
    :cond_0
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getSimStatus()I

    move-result v1

    .line 1596
    .local v1, "detectedType":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "turnOffNewSimData detectedType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1599
    if-ne v1, v8, :cond_5

    .line 1600
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getNewSimSlot()I

    move-result v4

    .line 1603
    .local v4, "newSimSlot":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "newSimSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1604
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "default iccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "persist.radio.data.iccid"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1606
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v5, :cond_5

    .line 1607
    shl-int v5, v8, v2

    and-int/2addr v5, v4

    if-eqz v5, :cond_1

    .line 1608
    const-string/jumbo v5, "persist.radio.data.iccid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1609
    .local v0, "defaultIccid":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1610
    .local v3, "newSimIccid":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1611
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Detect NEW SIM, turn off phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " data."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1612
    invoke-direct {p0, v2, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1606
    .end local v0    # "defaultIccid":Ljava/lang/String;
    .end local v3    # "newSimIccid":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1590
    .end local v1    # "detectedType":I
    .end local v2    # "i":I
    .end local v4    # "newSimSlot":I
    :cond_2
    const-string/jumbo v5, "[turnOffNewSimData] Single SIM project, don\'t change data enable setting"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1591
    return-void

    .line 1595
    :cond_3
    const-string/jumbo v5, "simDetectStatus"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "detectedType":I
    goto/16 :goto_0

    .line 1601
    :cond_4
    const-string/jumbo v5, "newSIMSlot"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "newSimSlot":I
    goto/16 :goto_1

    .line 1586
    .end local v4    # "newSimSlot":I
    :cond_5
    return-void
.end method

.method private unRegisterWorldModeReceiver()V
    .locals 2

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2073
    const-string/jumbo v0, "unRegisterWorldModeReceiver, context is null => return"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2074
    return-void

    .line 2077
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2078
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mHasRegisterWorldModeReceiver:Z

    .line 2071
    return-void
.end method

.method private updateDataEnableProperty()V
    .locals 7

    .prologue
    .line 1542
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 1543
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 1544
    .local v0, "dataEnabled":Z
    const-string/jumbo v1, "0"

    .line 1545
    .local v1, "dataOnIccid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1547
    .local v3, "subId":I
    const/4 v2, 0x0

    .end local v0    # "dataEnabled":Z
    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v5, :cond_2

    .line 1549
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 1551
    if-eqz v4, :cond_0

    .line 1552
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    .line 1555
    :cond_0
    if-eqz v0, :cond_1

    .line 1556
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1561
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUserDataProperty:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1562
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v5, "persist.radio.mobile.data"

    invoke-static {v2, v5, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1547
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1558
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_1

    .line 1541
    :cond_2
    return-void
.end method


# virtual methods
.method public onSubInfoReady(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 381
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    .line 383
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->BSP_PACKAGE:Z

    if-eqz v0, :cond_0

    .line 384
    const-string/jumbo v0, "Don\'t support BSP Package."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 385
    return-void

    .line 388
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string/jumbo v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V

    .line 380
    :goto_0
    return-void

    .line 390
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string/jumbo v1, "OP02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    const-string/jumbo v0, "ro.mtk_disable_cap_switch"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V

    goto :goto_0

    .line 394
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02()V

    goto :goto_0

    .line 396
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP09Support()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09(Landroid/content/Intent;)V

    goto :goto_0

    .line 399
    :cond_4
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V

    goto :goto_0
.end method
