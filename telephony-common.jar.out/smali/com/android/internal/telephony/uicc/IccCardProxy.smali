.class public Lcom/android/internal/telephony/uicc/IccCardProxy;
.super Landroid/os/Handler;
.source "IccCardProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/IccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccCardProxy$1;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_IccCardConstants$StateSwitchesValues:[I = null

.field private static synthetic -com_android_internal_telephony_uicc_IccCardApplicationStatus$AppStateSwitchesValues:[I = null

.field private static synthetic -com_android_internal_telephony_uicc_IccCardApplicationStatus$PersoSubStateSwitchesValues:[I = null

.field public static final ACTION_INTERNAL_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.internal_sim_state_changed"

.field private static final COMMON_SLOT_PROPERTY:Ljava/lang/String; = ""

.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_CARRIER_PRIVILIGES_LOADED:I = 0x1f7

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xb

.field private static final EVENT_ICC_ABSENT:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_ICC_FDN_CHANGED:I = 0x65

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field private static final EVENT_ICC_RECORD_EVENTS:I = 0x1f4

.field private static final EVENT_ICC_RECOVERY:I = 0x64

.field private static final EVENT_ICC_REFRESH:I = 0xc

.field private static final EVENT_IMSI_READY:I = 0x8

.field private static final EVENT_NETWORK_LOCKED:I = 0x9

.field private static final EVENT_NOT_AVAILABLE:I = 0x66

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_RECORDS_LOADED:I = 0x7

.field private static final EVENT_SUBSCRIPTION_ACTIVATED:I = 0x1f5

.field private static final EVENT_SUBSCRIPTION_DEACTIVATED:I = 0x1f6

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = "N/A"

.field private static final LOG_TAG:Ljava/lang/String; = "IccCardProxy"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static sInternalIntent:Landroid/content/Intent;


# instance fields
.field private PROPERTY_ICCID_SIM:[Ljava/lang/String;

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mFdnChangedRegistrants:Landroid/os/RegistrantList;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mPhoneId:Ljava/lang/Integer;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mQuietMode:Z

.field private mRadioOn:Z

.field private mRecoveryRegistrants:Landroid/os/RegistrantList;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/uicc/IccCardProxy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->sInternalIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private static synthetic -getcom_android_internal_telephony_IccCardConstants$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com_android_internal_telephony_IccCardConstants$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com_android_internal_telephony_IccCardConstants$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$State;->values()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com_android_internal_telephony_IccCardConstants$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_android_internal_telephony_uicc_IccCardApplicationStatus$AppStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com_android_internal_telephony_uicc_IccCardApplicationStatus$AppStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com_android_internal_telephony_uicc_IccCardApplicationStatus$AppStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com_android_internal_telephony_uicc_IccCardApplicationStatus$AppStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_android_internal_telephony_uicc_IccCardApplicationStatus$PersoSubStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com_android_internal_telephony_uicc_IccCardApplicationStatus$PersoSubStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com_android_internal_telephony_uicc_IccCardApplicationStatus$PersoSubStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_18

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_17

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_16

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_15

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_14

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_13

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_12

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_11

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_10

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_f

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_e

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_d

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_b

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_a

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_9

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_8

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_7

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_6

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_5

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_4

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_3

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_2

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_1

    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_0

    :goto_18
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com_android_internal_telephony_uicc_IccCardApplicationStatus$PersoSubStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_18

    :catch_1
    move-exception v1

    goto :goto_17

    :catch_2
    move-exception v1

    goto :goto_16

    :catch_3
    move-exception v1

    goto :goto_15

    :catch_4
    move-exception v1

    goto :goto_14

    :catch_5
    move-exception v1

    goto :goto_13

    :catch_6
    move-exception v1

    goto :goto_12

    :catch_7
    move-exception v1

    goto :goto_11

    :catch_8
    move-exception v1

    goto :goto_10

    :catch_9
    move-exception v1

    goto :goto_f

    :catch_a
    move-exception v1

    goto :goto_e

    :catch_b
    move-exception v1

    goto/16 :goto_d

    :catch_c
    move-exception v1

    goto/16 :goto_c

    :catch_d
    move-exception v1

    goto/16 :goto_b

    :catch_e
    move-exception v1

    goto/16 :goto_a

    :catch_f
    move-exception v1

    goto/16 :goto_9

    :catch_10
    move-exception v1

    goto/16 :goto_8

    :catch_11
    move-exception v1

    goto/16 :goto_7

    :catch_12
    move-exception v1

    goto/16 :goto_6

    :catch_13
    move-exception v1

    goto/16 :goto_5

    :catch_14
    move-exception v1

    goto/16 :goto_4

    :catch_15
    move-exception v1

    goto/16 :goto_3

    :catch_16
    move-exception v1

    goto/16 :goto_2

    :catch_17
    move-exception v1

    goto/16 :goto_1

    :catch_18
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->sInternalIntent:Landroid/content/Intent;

    .line 134
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 135
    const-string/jumbo v1, "gsm.ril.fulluicctype"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "gsm.ril.fulluicctype.2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "gsm.ril.fulluicctype.3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "gsm.ril.fulluicctype.4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 134
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 165
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 110
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    .line 117
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    .line 118
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mFdnChangedRegistrants:Landroid/os/RegistrantList;

    .line 120
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 124
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 125
    const-string/jumbo v2, "ril.iccid.sim1"

    aput-object v2, v1, v4

    .line 126
    const-string/jumbo v2, "ril.iccid.sim2"

    aput-object v2, v1, v5

    .line 127
    const-string/jumbo v2, "ril.iccid.sim3"

    aput-object v2, v1, v6

    .line 128
    const-string/jumbo v2, "ril.iccid.sim4"

    aput-object v2, v1, v7

    .line 124
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 142
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    .line 147
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 148
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 149
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 151
    iput v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 152
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 153
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 154
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 155
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 156
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 157
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    .line 158
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 160
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    .line 161
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1446
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardProxy$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/IccCardProxy$1;-><init>(Lcom/android/internal/telephony/uicc/IccCardProxy;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ctor: ci="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 169
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    .line 171
    const-string/jumbo v2, "phone"

    .line 170
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 173
    const/16 v1, 0xb

    .line 172
    invoke-static {p1, p2, p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 174
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p0, v7, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v2, 0x64

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccRecovery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 179
    invoke-interface {p2, p0, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 180
    invoke-interface {p2, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 182
    const/16 v1, 0x66

    invoke-interface {p2, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 183
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->resetProperties()V

    .line 192
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    .line 165
    return-void
.end method

.method private HandleDetectedState()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method private broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 644
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 645
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-eqz v1, :cond_1

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "broadcastIccStateChangedIntent: QuietMode NOT Broadcasting intent ACTION_SIM_STATE_CHANGED  value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 654
    const-string/jumbo v3, " reason="

    .line 652
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 655
    return-void

    .line 646
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "broadcastIccStateChangedIntent: mPhoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 647
    const-string/jumbo v3, " is invalid; Return!!"

    .line 646
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 648
    return-void

    .line 658
    :cond_1
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 663
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 664
    const-string/jumbo v1, "phoneName"

    const-string/jumbo v3, "Phone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "broadcastIccStateChangedIntent intent ACTION_SIM_STATE_CHANGED value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 669
    const-string/jumbo v3, " reason="

    .line 668
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 669
    const-string/jumbo v3, " for mPhoneId="

    .line 668
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 669
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    .line 668
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 670
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    .line 671
    const/4 v3, -0x1

    .line 670
    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 643
    return-void

    .line 644
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private broadcastInternalIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 676
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 677
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 678
    const-string/jumbo v1, "broadcastInternalIccStateChangedIntent: Card Index is not set; Return!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 679
    return-void

    .line 682
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.internal_sim_state_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 688
    const-string/jumbo v1, "phoneName"

    const-string/jumbo v3, "Phone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string/jumbo v1, "phone"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending intent ACTION_INTERNAL_SIM_STATE_CHANGED for mPhoneId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 694
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->sInternalIntent:Landroid/content/Intent;

    .line 696
    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 675
    return-void

    .line 676
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 806
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-getcom_android_internal_telephony_IccCardConstants$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 815
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 807
    :pswitch_0
    const-string/jumbo v0, "ABSENT"

    return-object v0

    .line 808
    :pswitch_1
    const-string/jumbo v0, "LOCKED"

    return-object v0

    .line 809
    :pswitch_2
    const-string/jumbo v0, "LOCKED"

    return-object v0

    .line 810
    :pswitch_3
    const-string/jumbo v0, "LOCKED"

    return-object v0

    .line 811
    :pswitch_4
    const-string/jumbo v0, "READY"

    return-object v0

    .line 812
    :pswitch_5
    const-string/jumbo v0, "NOT_READY"

    return-object v0

    .line 813
    :pswitch_6
    const-string/jumbo v0, "LOCKED"

    return-object v0

    .line 814
    :pswitch_7
    const-string/jumbo v0, "CARD_IO_ERROR"

    return-object v0

    .line 806
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v2, 0x0

    .line 824
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-getcom_android_internal_telephony_IccCardConstants$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 846
    :pswitch_0
    return-object v2

    .line 825
    :pswitch_1
    const-string/jumbo v0, "PIN"

    return-object v0

    .line 826
    :pswitch_2
    const-string/jumbo v0, "PUK"

    return-object v0

    .line 830
    :pswitch_3
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-getcom_android_internal_telephony_uicc_IccCardApplicationStatus$PersoSubStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 841
    return-object v2

    .line 832
    :pswitch_4
    const-string/jumbo v0, "NETWORK"

    return-object v0

    .line 834
    :pswitch_5
    const-string/jumbo v0, "NETWORK_SUBSET"

    return-object v0

    .line 836
    :pswitch_6
    const-string/jumbo v0, "CORPORATE"

    return-object v0

    .line 838
    :pswitch_7
    const-string/jumbo v0, "SERVICE_PROVIDER"

    return-object v0

    .line 840
    :pswitch_8
    const-string/jumbo v0, "SIM"

    return-object v0

    .line 844
    :pswitch_9
    const-string/jumbo v0, "PERM_DISABLED"

    return-object v0

    .line 845
    :pswitch_a
    const-string/jumbo v0, "CARD_IO_ERROR"

    return-object v0

    .line 824
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_3
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 830
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1223
    const-string/jumbo v0, "IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1230
    const-string/jumbo v0, "IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    return-void
.end method

.method private onRecordsLoaded()V
    .locals 2

    .prologue
    .line 472
    const-string/jumbo v0, "LOADED"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastInternalIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method private onSubscriptionActivated()V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    .line 462
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateStateProperty()V

    .line 460
    return-void
.end method

.method private onSubscriptionDeactivated()V
    .locals 0

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->resetProperties()V

    .line 467
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    .line 468
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateStateProperty()V

    .line 465
    return-void
.end method

.method private processLockedState()V
    .locals 5

    .prologue
    .line 750
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 751
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    .line 753
    return-void

    .line 755
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v1

    .line 756
    .local v1, "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v1, v2, :cond_1

    .line 757
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 758
    return-void

    .line 761
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    .line 762
    .local v0, "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-getcom_android_internal_telephony_uicc_IccCardApplicationStatus$AppStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v4

    aget v2, v2, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit v3

    .line 749
    return-void

    .line 764
    :pswitch_1
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 765
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 750
    .end local v0    # "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .end local v1    # "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 768
    .restart local v0    # "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .restart local v1    # "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :pswitch_2
    :try_start_4
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 762
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerUiccCardEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v1, 0x65

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForFdnChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_2

    .line 606
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 595
    :cond_2
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExternalState(): newState =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", radio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 784
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v0

    .line 786
    .local v0, "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v1, :cond_0

    .line 787
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 788
    return-void

    .line 793
    .end local v0    # "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    .line 780
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    .locals 4
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "override"    # Z

    .prologue
    .line 701
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExternalState(): mExternalState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 709
    const-string/jumbo v2, " newState =  "

    .line 708
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 709
    const-string/jumbo v2, " override = "

    .line 708
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 711
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_0

    .line 713
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_3

    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getNetworkPersoType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    if-eq v0, v2, :cond_3

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetworkLockState =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 725
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 728
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getNetworkPersoType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExternalState: set mPhoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " mExternalState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 735
    const-string/jumbo v0, "LOCKED"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    .line 737
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    .line 736
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastInternalIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_1

    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 700
    return-void

    .line 703
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExternalState: mPhoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is invalid; Return!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 704
    return-void

    .line 718
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExternalState: !override and newstate unchanged from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 719
    return-void

    .line 739
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    .line 740
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    .line 739
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1213
    return-void
.end method

.method private unregisterUiccCardEvents()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_2

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 622
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_3

    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    .line 625
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_4

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForFdnChanged(Landroid/os/Handler;)V

    .line 628
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_5

    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 631
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_6

    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 634
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_7

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 612
    :cond_7
    return-void
.end method

.method private updateExternalState()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v0, :cond_0

    .line 521
    const-string/jumbo v0, "updateExternalState, broadcast NOT_READY because UiccCard is null!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 523
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 524
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_1

    .line 531
    const-string/jumbo v0, "updateExternalState, broadcast ABSENT because card state is absent!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 537
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 539
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_2

    .line 543
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 544
    return-void

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v0, :cond_3

    .line 550
    const-string/jumbo v0, "updateExternalState, broadcast NOT_READY because mUiccApplication is null!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 552
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 553
    return-void

    .line 556
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-getcom_android_internal_telephony_uicc_IccCardApplicationStatus$AppStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 589
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 515
    :goto_0
    return-void

    .line 558
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 561
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->HandleDetectedState()V

    goto :goto_0

    .line 564
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 567
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 581
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 585
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private updateIccAvailability()V
    .locals 7

    .prologue
    .line 476
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 477
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 478
    .local v1, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 479
    .local v3, "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    const/4 v0, 0x0

    .line 480
    .local v0, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v2, 0x0

    .line 481
    .local v2, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v3

    .line 483
    iget v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 484
    .local v0, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 489
    .end local v0    # "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-ne v4, v2, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v4, v0, :cond_3

    .line 490
    :cond_1
    :goto_0
    const-string/jumbo v4, "Icc changed. Reregestering."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 491
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterUiccCardEvents()V

    .line 492
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 493
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 494
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 495
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->registerUiccCardEvents()V

    .line 497
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateExternalState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 475
    return-void

    .line 489
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v4, v1, :cond_2

    goto :goto_0

    .line 476
    .end local v1    # "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v3    # "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private updateQuietMode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 239
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 240
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 242
    .local v3, "oldQuietMode":Z
    const/4 v0, -0x1

    .line 243
    .local v0, "cdmaSource":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v4

    if-ne v4, v6, :cond_0

    const/4 v1, 0x1

    .line 245
    .local v1, "isLteOnCdmaMode":Z
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    if-ne v4, v6, :cond_1

    .line 246
    const/4 v2, 0x0

    .line 247
    .local v2, "newQuietMode":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateQuietMode: 3GPP subscription -> newQuietMode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 269
    :goto_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-nez v4, :cond_7

    if-eqz v2, :cond_7

    .line 272
    const-string/jumbo v4, "Switching to QuietMode."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 273
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 274
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 286
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateQuietMode: QuietMode is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " (app_type="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 287
    iget v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 286
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 287
    const-string/jumbo v6, " isLteOnCdmaMode="

    .line 286
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    const-string/jumbo v6, " cdmaSource="

    .line 286
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    const-string/jumbo v6, ")"

    .line 286
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 290
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    .line 291
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 238
    return-void

    .line 243
    .end local v1    # "isLteOnCdmaMode":Z
    .end local v2    # "newQuietMode":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isLteOnCdmaMode":Z
    goto :goto_0

    .line 250
    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCdmaOnly()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 255
    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v4, :cond_4

    .line 256
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    .line 258
    :goto_4
    if-ne v0, v6, :cond_6

    .line 259
    iget v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    .line 260
    if-eqz v1, :cond_5

    const/4 v2, 0x0

    .line 262
    .restart local v2    # "newQuietMode":Z
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateQuietMode: cdmaSource="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 263
    const-string/jumbo v6, " mCurrentAppType="

    .line 262
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 263
    iget v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 262
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 264
    const-string/jumbo v6, " isLteOnCdmaMode="

    .line 262
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 265
    const-string/jumbo v6, " newQuietMode="

    .line 262
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 239
    .end local v0    # "cdmaSource":I
    .end local v1    # "isLteOnCdmaMode":Z
    .end local v2    # "newQuietMode":Z
    .end local v3    # "oldQuietMode":Z
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 252
    .restart local v0    # "cdmaSource":I
    .restart local v1    # "isLteOnCdmaMode":Z
    .restart local v3    # "oldQuietMode":Z
    :cond_3
    :try_start_2
    const-string/jumbo v4, "updateQuietMode: is cdma/lte device, force IccCardProxy into 3gpp mode"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 253
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    goto :goto_3

    .line 256
    :cond_4
    const/4 v0, -0x1

    goto :goto_4

    .line 260
    :cond_5
    const/4 v2, 0x1

    .restart local v2    # "newQuietMode":Z
    goto :goto_5

    .line 258
    .end local v2    # "newQuietMode":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "newQuietMode":Z
    goto :goto_5

    .line 275
    :cond_7
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-eqz v4, :cond_8

    if-nez v2, :cond_8

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateQuietMode: Switching out from QuietMode. Force broadcast of current state="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 278
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 277
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 280
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 281
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    goto/16 :goto_2

    .line 283
    :cond_8
    const-string/jumbo v4, "updateQuietMode: no changes don\'t setExternalState"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method private updateStateProperty()V
    .locals 3

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 639
    return-void
.end method


# virtual methods
.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1143
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1144
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1145
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1142
    return-void

    .line 1146
    :cond_1
    if-eqz p3, :cond_0

    .line 1152
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1153
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to changeIccFdnPassword, hasIccCard = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->hasIccCard()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1155
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1156
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1157
    return-void

    .line 1143
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1122
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1123
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1124
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1121
    return-void

    .line 1125
    :cond_1
    if-eqz p3, :cond_0

    .line 1131
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1132
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to changeIccLockPassword, hasIccCard = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->hasIccCard()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1134
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1135
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1136
    return-void

    .line 1122
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    const-string/jumbo v0, "Disposing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccRecovery(Landroid/os/Handler;)V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 195
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IccCardProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mAbsentRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mAbsentRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1241
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1240
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1243
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mPinLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1244
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPinLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1246
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1245
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1248
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mNetworkLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1249
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mNetworkLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1251
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1250
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1249
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1253
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mCurrentAppType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mUiccController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mUiccCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mUiccApplication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mIccRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mCdmaSSM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mRadioOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mQuietMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mExternalState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1234
    return-void
.end method

.method public exchangeSimIo(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathID"    # Ljava/lang/String;
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1338
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1339
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/uicc/UiccCard;->exchangeSimIo(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v10

    .line 1337
    return-void

    .line 1338
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public getIccCardType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1364
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1365
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v2, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccCardType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1368
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1364
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getIccCardTypeEx()I
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v0

    return v0

    .line 1469
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIccFdnAvailable()Z
    .locals 2

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnAvailable()Z

    move-result v0

    .line 1063
    :goto_0
    return v0

    .line 1062
    :cond_0
    const/4 v0, 0x0

    .local v0, "retValue":Z
    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 3

    .prologue
    .line 1054
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1055
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnEnabled()Z

    move-result v1

    .line 1055
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1057
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 1056
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1054
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 867
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 868
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    .line 871
    return-object v2

    .line 867
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getIccLockEnabled()Z
    .locals 3

    .prologue
    .line 1044
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1046
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    .line 1046
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1048
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 1047
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1044
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getIccPin2Blocked()Z
    .locals 2

    .prologue
    .line 1068
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1069
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1068
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPuk2Blocked()Z
    .locals 2

    .prologue
    .line 1074
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1075
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1074
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccRecord()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 860
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .prologue
    .line 797
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 801
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getNetworkPersoType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 2

    .prologue
    .line 1274
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1275
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1278
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1274
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1164
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1165
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    .line 1168
    return-object v2

    .line 1164
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 853
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "receive message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x0

    .line 302
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 455
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unhandled message with number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 296
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_0
    :goto_0
    return-void

    .line 305
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_0
    const-string/jumbo v6, "handleMessage (EVENT_RADIO_OFF_OR_UNAVAILABLE)"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 307
    iput-boolean v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    .line 308
    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 309
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 314
    :sswitch_1
    const-string/jumbo v6, "handleMessage (EVENT_NOT_AVAILABLE)"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 315
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 319
    :sswitch_2
    iput-boolean v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    .line 320
    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    if-nez v6, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V

    goto :goto_0

    .line 325
    :sswitch_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    if-eqz v6, :cond_0

    .line 327
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 328
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 330
    .local v3, "index":I
    if-eqz v0, :cond_1

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 331
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 332
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMessage (EVENT_ICC_CHANGED) , index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 337
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    goto :goto_0

    .line 334
    :cond_1
    const-string/jumbo v6, "handleMessage (EVENT_ICC_CHANGED), come from myself"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 347
    .end local v3    # "index":I
    .local v0, "ar":Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 348
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 349
    .local v4, "index":Ljava/lang/Integer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMessage (EVENT_ICC_RECOVERY) , index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 350
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    if-ne v4, v6, :cond_0

    .line 351
    const-string/jumbo v6, "mRecoveryRegistrants notify"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 352
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 357
    .end local v4    # "index":Ljava/lang/Integer;
    .local v0, "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 358
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 361
    :sswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->processLockedState()V

    goto/16 :goto_0

    .line 364
    :sswitch_7
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 368
    :sswitch_8
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v6, :cond_2

    .line 369
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "operator":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "operator="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mPhoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 372
    if-eqz v5, :cond_5

    .line 377
    const/4 v6, 0x3

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "countryCode":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 379
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 380
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v8

    .line 379
    invoke-virtual {v6, v7, v8}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 388
    .end local v1    # "countryCode":Ljava/lang/String;
    .end local v5    # "operator":Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->areCarrierPriviligeRulesLoaded()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 392
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onRecordsLoaded()V

    goto/16 :goto_0

    .line 382
    .restart local v1    # "countryCode":Ljava/lang/String;
    .restart local v5    # "operator":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "EVENT_RECORDS_LOADED Country code is null"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 385
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "EVENT_RECORDS_LOADED Operator name is null"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 389
    .end local v5    # "operator":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 390
    const/16 v7, 0x1f7

    .line 389
    invoke-virtual {v6, p0, v7, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 396
    :sswitch_9
    const-string/jumbo v6, "IMSI"

    invoke-direct {p0, v6, v9}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 400
    :sswitch_a
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v6, :cond_7

    .line 401
    const-string/jumbo v6, "getIccStateReason: NETWORK_LOCKED but mUiccApplication is null!"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 402
    return-void

    .line 405
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 406
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 409
    :sswitch_b
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V

    goto/16 :goto_0

    .line 412
    :sswitch_c
    const-string/jumbo v6, "EVENT_SUBSCRIPTION_ACTIVATED"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 413
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onSubscriptionActivated()V

    goto/16 :goto_0

    .line 417
    :sswitch_d
    const-string/jumbo v6, "EVENT_SUBSCRIPTION_DEACTIVATED"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onSubscriptionDeactivated()V

    goto/16 :goto_0

    .line 422
    :sswitch_e
    iget v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    if-ne v6, v8, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v6, :cond_0

    .line 424
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 426
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 427
    .local v2, "eventCode":I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    .line 428
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 429
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v8

    .line 428
    invoke-virtual {v6, v7, v8}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 435
    .end local v2    # "eventCode":I
    .local v0, "ar":Landroid/os/AsyncResult;
    :sswitch_f
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mFdnChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 440
    :sswitch_10
    const-string/jumbo v6, "EVENT_CARRIER_PRIVILEGES_LOADED"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 441
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v6, :cond_8

    .line 442
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V

    .line 444
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onRecordsLoaded()V

    goto/16 :goto_0

    .line 448
    :sswitch_11
    const-string/jumbo v6, "EVENT_ICC_REFRESH"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 449
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v6, :cond_0

    .line 450
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/uicc/IccRecords;->onRefresh(Z[I)V

    goto/16 :goto_0

    .line 302
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_11
        0x64 -> :sswitch_4
        0x65 -> :sswitch_f
        0x66 -> :sswitch_1
        0x1f4 -> :sswitch_e
        0x1f5 -> :sswitch_c
        0x1f6 -> :sswitch_d
        0x1f7 -> :sswitch_10
    .end sparse-switch
.end method

.method public hasIccCard()Z
    .locals 5

    .prologue
    .line 1182
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1188
    const/4 v1, 0x0

    .line 1193
    .local v1, "isSimInsert":Z
    const/4 v0, 0x0

    .line 1194
    .local v0, "iccId":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, "iccId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "iccId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1197
    if-eqz v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1202
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v4, :cond_1

    .line 1203
    const/4 v1, 0x1

    .line 1206
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasIccCard(): isSimInsert =  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " ,CardState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1208
    return v1

    .line 1197
    :cond_2
    :try_start_1
    const-string/jumbo v2, "N/A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1198
    const/4 v1, 0x1

    goto :goto_0

    .line 1206
    :cond_3
    const-string/jumbo v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1182
    .end local v0    # "iccId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public iccGetAtr(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1347
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1348
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v2, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->iccGetAtr(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1346
    return-void

    .line 1347
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 1174
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1175
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1176
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 1175
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1174
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isCdmaOnly()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1378
    const/4 v1, 0x0

    .line 1379
    .local v1, "property":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1380
    .local v0, "prop":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1382
    .local v2, "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardProxy;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v5, v5

    if-lt v3, v5, :cond_1

    .line 1383
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCdmaOnly: invalid PhoneId "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1384
    return v4

    .line 1386
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardProxy;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v3, v3, v5

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1387
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1388
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1390
    .end local v2    # "values":[Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCdmaOnly PhoneId "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", prop value= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1391
    const-string/jumbo v5, ", size= "

    .line 1390
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1391
    if-eqz v2, :cond_4

    array-length v3, v2

    .line 1390
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1392
    if-eqz v2, :cond_6

    .line 1393
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string/jumbo v5, "USIM"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1394
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string/jumbo v5, "SIM"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 1393
    if-eqz v3, :cond_5

    :cond_3
    :goto_1
    return v4

    :cond_4
    move v3, v4

    .line 1391
    goto :goto_0

    .line 1393
    :cond_5
    const/4 v4, 0x1

    goto :goto_1

    .line 1396
    :cond_6
    return v4
.end method

.method public openLogicalChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1355
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1356
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v2, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->iccOpenChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1354
    return-void

    .line 1355
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public queryIccNetworkLock(ILandroid/os/Message;)V
    .locals 4
    .param p1, "category"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryIccNetworkLock(): category =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1289
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1290
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1291
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryIccNetworkLock(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1287
    return-void

    .line 1292
    :cond_1
    if-eqz p2, :cond_0

    .line 1293
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1294
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to queryIccNetworkLock, hasIccCard = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->hasIccCard()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1295
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1296
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1297
    return-void

    .line 1289
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 880
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 881
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 883
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 885
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 886
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 879
    return-void

    .line 880
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForFdnChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1424
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1425
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1426
    :try_start_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1428
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mFdnChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1430
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccFdnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1431
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 1423
    return-void

    .line 1425
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1424
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 926
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 927
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 929
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 931
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 932
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 925
    return-void

    .line 926
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 903
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 904
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 906
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 908
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 909
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 902
    return-void

    .line 903
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForRecovery(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1402
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1403
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1405
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1407
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 1408
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1401
    return-void

    .line 1402
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public repollIccStateForModemSmlChangeFeatrue(Z)V
    .locals 3
    .param p1, "needIntent"    # Z

    .prologue
    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "repollIccStateForModemSmlChangeFeatrue, needIntent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1331
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1332
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->repollIccStateForModemSmlChangeFeatrue(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1329
    return-void

    .line 1331
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method resetProperties()V
    .locals 3

    .prologue
    .line 502
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 503
    const-string/jumbo v0, "update icc_operator_numeric="

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 501
    :cond_0
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1101
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1102
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1103
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1100
    return-void

    .line 1104
    :cond_1
    if-eqz p3, :cond_0

    .line 1110
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1111
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to setIccFdnEnabled, hasIccCard = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->hasIccCard()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1113
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1114
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1115
    return-void

    .line 1101
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1080
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1081
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1082
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1079
    return-void

    .line 1083
    :cond_1
    if-eqz p3, :cond_0

    .line 1089
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1090
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to setIccLockEnabled, hasIccCard = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->hasIccCard()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1092
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1093
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1094
    return-void

    .line 1080
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "category"    # I
    .param p2, "lockop"    # I
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "data_imsi"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2"    # Ljava/lang/String;
    .param p7, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SetIccNetworkEnabled(): category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1310
    const-string/jumbo v2, " lockop = "

    .line 1309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1310
    const-string/jumbo v2, " password = "

    .line 1309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1311
    const-string/jumbo v2, " data_imsi = "

    .line 1309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1311
    const-string/jumbo v2, " gid1 = "

    .line 1309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1311
    const-string/jumbo v2, " gid2 = "

    .line 1309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1312
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1313
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1314
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v10

    .line 1308
    return-void

    .line 1316
    :cond_1
    if-eqz p7, :cond_0

    .line 1317
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v9

    .line 1318
    .local v9, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fail to setIccNetworkLockEnabled, hasIccCard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->hasIccCard()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1319
    invoke-static/range {p7 .. p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1320
    invoke-virtual/range {p7 .. p7}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    .line 1321
    return-void

    .line 1312
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1
.end method

.method public setVoiceRadioTech(I)V
    .locals 3
    .param p1, "radioTech"    # I

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting radio tech "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 225
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 230
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 220
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1030
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1031
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1032
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1029
    return-void

    .line 1033
    :cond_1
    if-eqz p2, :cond_0

    .line 1034
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "CommandsInterface is not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1035
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1036
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1037
    return-void

    .line 1030
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 946
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 947
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 948
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 945
    return-void

    .line 949
    :cond_1
    if-eqz p2, :cond_0

    .line 955
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 956
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to supplyPin, hasIccCard = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->hasIccCard()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 958
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 959
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 960
    return-void

    .line 946
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 988
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 989
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 990
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 987
    return-void

    .line 991
    :cond_1
    if-eqz p2, :cond_0

    .line 997
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 998
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to supplyPin2, hasIccCard = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->hasIccCard()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1000
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1001
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1002
    return-void

    .line 988
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 967
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 968
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 969
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 966
    return-void

    .line 970
    :cond_1
    if-eqz p3, :cond_0

    .line 976
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 977
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to supplyPuk, hasIccCard = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->hasIccCard()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 979
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 980
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 981
    return-void

    .line 967
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1009
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1010
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1011
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1008
    return-void

    .line 1012
    :cond_1
    if-eqz p3, :cond_0

    .line 1018
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1019
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to supplyPuk2, hasIccCard = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->hasIccCard()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1021
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1022
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1023
    return-void

    .line 1009
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 893
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 894
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 892
    return-void

    .line 893
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForFdnChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1439
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1440
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mFdnChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1438
    return-void

    .line 1439
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 939
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 940
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 938
    return-void

    .line 939
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 916
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 917
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 915
    return-void

    .line 916
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForRecovery(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1414
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1415
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1413
    return-void

    .line 1414
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
