.class public Lcom/android/internal/telephony/uicc/UiccController;
.super Landroid/os/Handler;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccController$1;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_uicc_IccCardApplicationStatus$PersoSubStateSwitchesValues:[I = null

.field private static final ACTION_RESET_MODEM:Ljava/lang/String; = "android.intent.action.sim.ACTION_RESET_MODEM"

.field public static final APP_FAM_3GPP:I = 0x1

.field public static final APP_FAM_3GPP2:I = 0x2

.field public static final APP_FAM_IMS:I = 0x3

.field private static final COMMON_SLOT_PROPERTY:Ljava/lang/String; = "ro.mtk_sim_hot_swap_common_slot"

.field private static final DBG:Z = true

.field private static final DECRYPT_STATE:Ljava/lang/String; = "trigger_restart_framework"

.field protected static final EVENT_APPLICATION_SESSION_CHANGED:I = 0xca

.field protected static final EVENT_COMMON_SLOT_NO_CHANGED:I = 0x74

.field protected static final EVENT_GET_ICC_APPLICATION_STATUS:I = 0xc9

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field protected static final EVENT_GET_ICC_STATUS_DONE_FOR_SIM_MISSING:I = 0x6a

.field protected static final EVENT_GET_ICC_STATUS_DONE_FOR_SIM_RECOVERY:I = 0x6b

.field protected static final EVENT_HOTSWAP_GET_ICC_STATUS_DONE:I = 0x6f

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x1

.field protected static final EVENT_INVALID_SIM_DETECTED:I = 0x72

.field protected static final EVENT_QUERY_ICCID_DONE_FOR_HOT_SWAP:I = 0x6c

.field protected static final EVENT_QUERY_SIM_MISSING:I = 0x71

.field protected static final EVENT_QUERY_SIM_MISSING_STATUS:I = 0x68

.field protected static final EVENT_QUERY_SIM_STATUS_FOR_PLUG_IN:I = 0x70

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x64

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x3

.field protected static final EVENT_REPOLL_SML_STATE:I = 0x73

.field protected static final EVENT_SIM_MISSING:I = 0x67

.field protected static final EVENT_SIM_PLUG_IN:I = 0x6e

.field protected static final EVENT_SIM_PLUG_OUT:I = 0x6d

.field protected static final EVENT_SIM_RECOVERY:I = 0x69

.field private static final EVENT_SIM_REFRESH:I = 0x4

.field protected static final EVENT_TURN_ON_ISIM_APPLICATION_DONE:I = 0xc8

.field protected static final EVENT_VIRTUAL_SIM_OFF:I = 0x66

.field protected static final EVENT_VIRTUAL_SIM_ON:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "UiccController"

.field private static final MAX_PROACTIVE_COMMANDS_TO_LOG:I = 0x14

.field private static final PROPERTY_3G_SIM:Ljava/lang/String; = "persist.radio.simswitch"

.field private static final SML_FEATURE_NEED_BROADCAST_INTENT:I = 0x1

.field private static final SML_FEATURE_NO_NEED_BROADCAST_INTENT:I = 0x0

.field private static final STATUS_NO_SIM_INSERTED:I = 0x0

.field private static final STATUS_SIM1_INSERTED:I = 0x1

.field private static final STATUS_SIM2_INSERTED:I = 0x2

.field private static final STATUS_SIM3_INSERTED:I = 0x4

.field private static final STATUS_SIM4_INSERTED:I = 0x8

.field private static mInstance:Lcom/android/internal/telephony/uicc/UiccController;

.field private static final mLock:Ljava/lang/Object;

.field private static mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;


# instance fields
.field private UICCCONTROLLER_STRING_NOTIFICATION_SIM_MISSING:[I

.field private UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

.field private mApplicationChangedRegistrants:Landroid/os/RegistrantList;

.field private mBtSlotId:I

.field private mCardLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field protected mIccChangedRegistrants:Landroid/os/RegistrantList;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsimSessionId:[I

.field private mRecoveryRegistrants:Landroid/os/RegistrantList;

.field private mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method private static synthetic -getcom_android_internal_telephony_uicc_IccCardApplicationStatus$PersoSubStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->-com_android_internal_telephony_uicc_IccCardApplicationStatus$PersoSubStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->-com_android_internal_telephony_uicc_IccCardApplicationStatus$PersoSubStateSwitchesValues:[I

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

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_18

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_17

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_16

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_15

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_14

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_13

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_12

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_11

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_10

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_f

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_e

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_d

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x13

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

    const/16 v2, 0x14

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

    const/16 v2, 0x15

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

    const/16 v2, 0x16

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

    const/16 v2, 0x17

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

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_1

    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_0

    :goto_18
    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->-com_android_internal_telephony_uicc_IccCardApplicationStatus$PersoSubStateSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    .line 116
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v8, 0x1

    .line 219
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 171
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    new-array v4, v4, [Lcom/android/internal/telephony/uicc/UiccCard;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    .line 178
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    .line 180
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    .line 182
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsimSessionId:[I

    .line 183
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    .line 186
    const v4, 0x8050065

    .line 187
    const v5, 0x805006a

    .line 188
    const v6, 0x805006b

    .line 189
    const v7, 0x805006c

    .line 185
    filled-new-array {v4, v5, v6, v7}, [I

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->UICCCONTROLLER_STRING_NOTIFICATION_SIM_MISSING:[I

    .line 193
    const v4, 0x805005d

    .line 194
    const v5, 0x805005e

    .line 195
    const v6, 0x805005f

    .line 196
    const v7, 0x8050060

    .line 192
    filled-new-array {v4, v5, v6, v7}, [I

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

    .line 206
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    .line 798
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccController$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/uicc/UiccController$1;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 890
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mBtSlotId:I

    .line 220
    const-string/jumbo v4, "Creating UiccController"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 222
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 224
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v4, "android.intent.action.sim.ACTION_RESET_MODEM"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 233
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 234
    .local v3, "index":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    invoke-interface {v4, p0, v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    const-string/jumbo v4, "ro.crypto.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "unencrypted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 236
    const-string/jumbo v4, "trigger_restart_framework"

    const-string/jumbo v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 235
    if-eqz v4, :cond_1

    .line 237
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    invoke-interface {v4, p0, v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 241
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    const/4 v5, 0x3

    invoke-interface {v4, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 242
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    invoke-interface {v4, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 244
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    const/16 v5, 0x65

    invoke-interface {v4, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 245
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    const/16 v5, 0x66

    invoke-interface {v4, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVirtualSimOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 246
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    const/16 v5, 0x67

    invoke-interface {v4, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimMissing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 247
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    const/16 v5, 0x69

    invoke-interface {v4, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimRecovery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 248
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    const/16 v5, 0x6d

    invoke-interface {v4, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 249
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    const/16 v5, 0x6e

    invoke-interface {v4, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 250
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    const/16 v5, 0x74

    invoke-interface {v4, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCommonSlotNoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    const/16 v5, 0xca

    invoke-interface {v4, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSessionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 239
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    invoke-interface {v4, p0, v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 255
    .end local v3    # "index":Ljava/lang/Integer;
    :cond_2
    :try_start_0
    const-class v4, Lcom/mediatek/common/telephony/IUiccControllerExt;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/telephony/IUiccControllerExt;

    sput-object v4, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_2
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "UiccController"

    const-string/jumbo v5, "Fail to create plug-in"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 566
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 573
    .local v1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 574
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 575
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 583
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    .line 576
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 577
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 578
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 579
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "index":Ljava/lang/Integer;
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3

    .prologue
    .line 263
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/RuntimeException;

    .line 266
    const-string/jumbo v2, "UiccController.getInstance can\'t be called before make()"

    .line 265
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 268
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private ignoreGetSimStatus()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 966
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 967
    const-string/jumbo v2, "airplane_mode_on"

    .line 966
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 969
    .local v0, "airplaneMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignoreGetSimStatus(): airplaneMode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 970
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, v4, :cond_0

    .line 971
    const-string/jumbo v1, "ignoreGetSimStatus(): return true"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 972
    return v4

    .line 975
    :cond_0
    return v3
.end method

.method private isValidCardIndex(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 688
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 693
    const-string/jumbo v0, "UiccController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 210
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "MSimUiccController.make() should only be called once"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 214
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    .line 215
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private declared-synchronized onGetIccApplicationStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    monitor-enter p0

    .line 863
    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 864
    const-string/jumbo v1, "UiccController"

    const-string/jumbo v2, "Error getting ICC status. RIL_REQUEST_GET_ICC_APPLICATION_STATUS should never return an error"

    .line 866
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 864
    invoke-static {v1, v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 867
    return-void

    .line 869
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 870
    const-string/jumbo v1, "UiccController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGetIccApplicationStatusDone: invalid index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 871
    return-void

    .line 873
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGetIccApplicationStatusDone, index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 875
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 877
    .local v0, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    .line 879
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    aput-object v3, v1, v2

    .line 886
    :goto_0
    const-string/jumbo v1, "Notifying mApplicationChangedRegistrants"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 887
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 862
    return-void

    .line 883
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    monitor-enter p0

    .line 600
    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 601
    const-string/jumbo v1, "UiccController"

    const-string/jumbo v2, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    .line 603
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 601
    invoke-static {v1, v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 604
    return-void

    .line 606
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 607
    const-string/jumbo v1, "UiccController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGetIccCardStatusDone: invalid index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 608
    return-void

    .line 611
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGetIccCardStatusDone, index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 614
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 616
    .local v0, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    .line 618
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    aput-object v3, v1, v2

    .line 624
    :goto_0
    const-string/jumbo v1, "Notifying IccChangedRegistrants"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 599
    return-void

    .line 621
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;Z)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;
    .param p3, "isUpdate"    # Z

    .prologue
    monitor-enter p0

    .line 734
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 735
    const-string/jumbo v0, "UiccController"

    const-string/jumbo v1, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    .line 737
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 735
    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 738
    return-void

    .line 740
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 741
    const-string/jumbo v0, "UiccController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGetIccCardStatusDone: invalid index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 742
    return-void

    .line 744
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGetIccCardStatusDone, index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "isUpdateSiminfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 746
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 753
    .local v3, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 755
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;IZ)V

    aput-object v0, v7, v8

    .line 761
    :goto_0
    const-string/jumbo v0, "Notifying IccChangedRegistrants"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 763
    const-string/jumbo v0, "ro.mtk_sim_hot_swap_common_slot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    .line 733
    return-void

    .line 758
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v3    # "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 766
    .restart local v3    # "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :cond_3
    :try_start_4
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 767
    .local v6, "result":Landroid/os/Bundle;
    const-string/jumbo v0, "Index"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 768
    const-string/jumbo v0, "ForceUpdate"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 630
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 631
    const-string/jumbo v5, "UiccController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sim REFRESH with exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return-void

    .line 635
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 636
    const-string/jumbo v5, "UiccController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSimRefresh: invalid index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void

    .line 640
    :cond_1
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 641
    .local v4, "resp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    const-string/jumbo v5, "UiccController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSimRefresh: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    if-nez v5, :cond_2

    .line 644
    const-string/jumbo v5, "UiccController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSimRefresh: refresh on null card : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void

    .line 648
    :cond_2
    iget v5, v4, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne v5, v9, :cond_3

    .line 649
    iget-object v5, v4, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 650
    :cond_3
    const-string/jumbo v5, "UiccController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring reset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void

    .line 654
    :cond_4
    const-string/jumbo v5, "UiccController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Handling refresh reset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    iget-object v6, v4, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->resetAppWithAid(Ljava/lang/String;)Z

    move-result v0

    .line 657
    .local v0, "changed":Z
    if-eqz v0, :cond_6

    .line 658
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 659
    const v6, 0x1120077

    .line 658
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 662
    .local v3, "requirePowerOffOnSimRefreshReset":Z
    const-string/jumbo v5, "ro.sim_refresh_reset_by_modem"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 663
    const-string/jumbo v6, "1"

    .line 662
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 664
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    .line 667
    .local v1, "mSimVar":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v5, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-eq v1, v5, :cond_7

    .line 668
    const-string/jumbo v5, "persist.radio.simswitch"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 669
    .local v2, "phoneIdFor3G":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " will reset modem"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 670
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v5, v5

    add-int/lit8 v6, v2, -0x1

    if-le v5, v6, :cond_5

    .line 671
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_5

    .line 672
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    invoke-interface {v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    .line 681
    .end local v1    # "mSimVar":Landroid/telephony/TelephonyManager$MultiSimVariants;
    .end local v2    # "phoneIdFor3G":I
    :cond_5
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    invoke-direct {v6, v8, p2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 629
    .end local v3    # "requirePowerOffOnSimRefreshReset":Z
    :cond_6
    return-void

    .line 676
    .restart local v1    # "mSimVar":Landroid/telephony/TelephonyManager$MultiSimVariants;
    .restart local v3    # "requirePowerOffOnSimRefreshReset":Z
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-interface {v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    goto :goto_0

    .line 679
    .end local v1    # "mSimVar":Landroid/telephony/TelephonyManager$MultiSimVariants;
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private parsePersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .prologue
    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parsePersoType, state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 921
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->-getcom_android_internal_telephony_uicc_IccCardApplicationStatus$PersoSubStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 935
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 923
    :pswitch_0
    const-string/jumbo v0, "NETWORK"

    return-object v0

    .line 925
    :pswitch_1
    const-string/jumbo v0, "NETWORK_SUBSET"

    return-object v0

    .line 927
    :pswitch_2
    const-string/jumbo v0, "CORPORATE"

    return-object v0

    .line 929
    :pswitch_3
    const-string/jumbo v0, "SERVICE_PROVIDER"

    return-object v0

    .line 931
    :pswitch_4
    const-string/jumbo v0, "SIM"

    return-object v0

    .line 921
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private removeNotificationVirtual(II)V
    .locals 3
    .param p1, "slot"    # I
    .param p2, "notifyType"    # I

    .prologue
    .line 858
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 859
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    add-int v1, p2, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 857
    return-void
.end method

.method private setNotification(II)V
    .locals 8
    .param p1, "slot"    # I
    .param p2, "notifyType"    # I

    .prologue
    .line 775
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setNotification(): notifyType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 776
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 777
    .local v2, "notification":Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 778
    const/16 v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 779
    const v5, 0x108008a

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 780
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 781
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 783
    sget-object v5, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-interface {v5, v6, p1}, Lcom/mediatek/common/telephony/IUiccControllerExt;->getMissingTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 784
    .local v4, "title":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-interface {v5, v6}, Lcom/mediatek/common/telephony/IUiccControllerExt;->getMissingDetail(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 786
    .local v0, "detail":Ljava/lang/CharSequence;
    iput-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 787
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v5, v4, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 788
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 789
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    add-int v5, p2, p1

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 774
    return-void
.end method

.method private setNotificationVirtual(II)V
    .locals 9
    .param p1, "slot"    # I
    .param p2, "notifyType"    # I

    .prologue
    const v8, 0x8050061

    .line 835
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setNotificationVirtual(): notifyType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 836
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 837
    .local v2, "notification":Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 838
    const/16 v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 839
    const v5, 0x108008a

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 840
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 841
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 842
    const/4 v4, 0x0

    .line 844
    .local v4, "title":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 845
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 849
    .local v4, "title":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "detail":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 852
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v5, v4, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 853
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 854
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    add-int v5, p2, p1

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 834
    return-void

    .line 847
    .end local v0    # "detail":Ljava/lang/CharSequence;
    .end local v3    # "notificationManager":Landroid/app/NotificationManager;
    .local v4, "title":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "title":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public addCardLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 698
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 699
    .local v0, "t":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 700
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%m-%d %H:%M:%S"

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 701
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 702
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 697
    :cond_0
    return-void
.end method

.method public disableSimMissingNotification(I)V
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 794
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 795
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    add-int/lit8 v1, p1, 0x67

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 793
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UiccController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mInstance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mIccChangedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mIccChangedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 713
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 712
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 716
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mUiccCards: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 719
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mUiccCards["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 722
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mUiccCards["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    .line 726
    :cond_2
    const-string/jumbo v1, "mCardLogs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 706
    :cond_3
    return-void
.end method

.method public getBtConnectedSimId()I
    .locals 2

    .prologue
    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getBtConnectedSimId, slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mBtSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 899
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mBtSlotId:I

    return v0
.end method

.method public getIccApplicationChannel(II)I
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "family"    # I

    .prologue
    .line 320
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "index":I
    packed-switch p2, :pswitch_data_0

    .line 333
    :try_start_0
    const-string/jumbo v1, "unknown application"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 336
    return v0

    .line 325
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsimSessionId:[I

    aget v0, v1, p1

    .line 328
    if-nez v0, :cond_0

    .line 329
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 322
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    .prologue
    const/4 v1, 0x0

    .line 309
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 310
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 311
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 314
    return-object v1

    .line 309
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    .prologue
    const/4 v1, 0x0

    .line 298
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 299
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 300
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 303
    return-object v1

    .line 298
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 273
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 277
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "family"    # I

    .prologue
    .line 292
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 293
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v1

    .line 292
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    .prologue
    const/4 v3, 0x0

    .line 588
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 589
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v0, v1, p1

    .line 591
    .local v0, "c":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_0

    .line 592
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .end local v0    # "c":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_0
    monitor-exit v2

    .line 595
    return-object v3

    .line 588
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUiccCards()[Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .prologue
    .line 284
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/UiccCard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 379
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v18

    .line 380
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/UiccController;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v7

    .line 382
    .local v7, "index":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-ltz v17, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 383
    :cond_0
    const-string/jumbo v17, "UiccController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Invalid index : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " received with event "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v18

    .line 384
    return-void

    .line 387
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 388
    .local v4, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 559
    const-string/jumbo v17, "UiccController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " Unknown Event "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v18

    .line 378
    return-void

    .line 393
    :sswitch_0
    :try_start_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus, index: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->ignoreGetSimStatus()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 399
    const-string/jumbo v17, "FlightMode ON, Modem OFF: ignore get sim status"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 379
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "index":Ljava/lang/Integer;
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17

    .line 402
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    .restart local v7    # "index":Ljava/lang/Integer;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v17, v17, v19

    .line 403
    const/16 v19, 0x2

    .line 402
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 409
    :sswitch_1
    const-string/jumbo v17, "Received EVENT_GET_ICC_STATUS_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto :goto_0

    .line 414
    :sswitch_2
    const-string/jumbo v17, "Received EVENT_REPOLL_SML_STATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 415
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v4    # "ar":Landroid/os/AsyncResult;
    check-cast v4, Landroid/os/AsyncResult;

    .line 416
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/4 v12, 0x1

    .line 419
    .local v12, "needIntent":Z
    :goto_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v7, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;Z)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v17, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v17, v17, v19

    if-eqz v17, :cond_2

    if-eqz v12, :cond_2

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v17, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v17, v17, v19

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 424
    .local v3, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v3, :cond_5

    .line 425
    const-string/jumbo v17, "UiccCardApplication = null"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    .end local v3    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v12    # "needIntent":Z
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "needIntent":Z
    goto :goto_1

    .line 428
    .restart local v3    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v17

    sget-object v19, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 429
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 430
    .local v11, "lockIntent":Landroid/content/Intent;
    if-nez v11, :cond_6

    .line 431
    const-string/jumbo v17, "New intent failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v18

    .line 432
    return-void

    .line 434
    :cond_6
    :try_start_4
    const-string/jumbo v17, "Broadcast ACTION_UNLOCK_SIM_LOCK"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 435
    const-string/jumbo v17, "mediatek.intent.action.ACTION_UNLOCK_SIM_LOCK"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string/jumbo v17, "ss"

    .line 437
    const-string/jumbo v19, "LOCKED"

    .line 436
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string/jumbo v17, "reason"

    .line 439
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->parsePersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Ljava/lang/String;

    move-result-object v19

    .line 438
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v11, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 448
    .end local v3    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v11    # "lockIntent":Landroid/content/Intent;
    .end local v12    # "needIntent":Z
    :sswitch_3
    const-string/jumbo v17, "EVENT_RADIO_UNAVAILABLE, set mSetRadioDone to false"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 450
    const-string/jumbo v17, "EVENT_RADIO_UNAVAILABLE, dispose card"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v17, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v17, v17, v19

    if-eqz v17, :cond_7

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v17, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v17, v17, v19

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 454
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v17, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x0

    aput-object v20, v17, v19

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v19, Landroid/os/AsyncResult;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v7, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 458
    :sswitch_4
    const-string/jumbo v17, "Received EVENT_SIM_REFRESH"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/android/internal/telephony/uicc/UiccController;->onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 464
    :sswitch_5
    const-string/jumbo v17, "Received EVENT_TURN_ON_ISIM_APPLICATION_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v4    # "ar":Landroid/os/AsyncResult;
    check-cast v4, Landroid/os/AsyncResult;

    .line 467
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 468
    const-string/jumbo v17, "UiccController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[SIM "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "] Error turn on ISIM. "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v18

    .line 470
    return-void

    .line 474
    :cond_8
    :try_start_5
    iget-object v10, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    .line 476
    .local v10, "ints":[I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Application ID = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v19, 0x0

    aget v19, v10, v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, "Session ID = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v19, 0x1

    aget v19, v10, v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIsimSessionId:[I

    move-object/from16 v17, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x1

    aget v20, v10, v20

    aput v20, v17, v19

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v17, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIsimSessionId:[I

    move-object/from16 v19, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aget v19, v19, v20

    .line 480
    const/16 v20, 0xc9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 479
    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIccApplicationStatus(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 485
    .end local v10    # "ints":[I
    :sswitch_6
    const-string/jumbo v17, "Received EVENT_GET_ICC_APPLICATION_STATUS"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 487
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v4    # "ar":Landroid/os/AsyncResult;
    check-cast v4, Landroid/os/AsyncResult;

    .line 488
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccApplicationStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 493
    :sswitch_7
    const-string/jumbo v17, "Received EVENT_APPLICATION_SESSION_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v4    # "ar":Landroid/os/AsyncResult;
    check-cast v4, Landroid/os/AsyncResult;

    .line 498
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [I

    .line 501
    .local v13, "result":[I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Application = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v19, 0x0

    aget v19, v13, v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, ", Session = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v19, 0x1

    aget v19, v13, v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIsimSessionId:[I

    move-object/from16 v17, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x1

    aget v20, v13, v20

    aput v20, v17, v19

    goto/16 :goto_0

    .line 507
    .end local v13    # "result":[I
    :sswitch_8
    const-string/jumbo v17, "handleMessage (EVENT_VIRTUAL_SIM_ON)"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v19, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->setNotificationVirtual(II)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v19, "AutoAnswer"

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 511
    .local v15, "shOn":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 512
    .local v6, "editorOn":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v17, "flag"

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 513
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 516
    .end local v6    # "editorOn":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "shOn":Landroid/content/SharedPreferences;
    :sswitch_9
    const-string/jumbo v17, "handleMessage (EVENT_VIRTUAL_SIM_OFF)"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v19, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->removeNotificationVirtual(II)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v19, "AutoAnswer"

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 520
    .local v14, "shOff":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 521
    .local v5, "editorOff":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v17, "flag"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 522
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 525
    .end local v5    # "editorOff":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "shOff":Landroid/content/SharedPreferences;
    :sswitch_a
    const-string/jumbo v17, "handleMessage (EVENT_SIM_RECOVERY)"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v17, v17, v19

    const/16 v19, 0x6b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v19, Landroid/os/AsyncResult;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v7, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 531
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 532
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v17, "com.android.phone.ACTION_SIM_RECOVERY_DONE"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 536
    .end local v8    # "intent":Landroid/content/Intent;
    :sswitch_b
    const-string/jumbo v17, "handleMessage (EVENT_SIM_MISSING)"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v17, v17, v19

    const/16 v19, 0x6a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 541
    :sswitch_c
    const-string/jumbo v17, "Received EVENT_GET_ICC_STATUS_DONE_FOR_SIM_MISSING"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v4    # "ar":Landroid/os/AsyncResult;
    check-cast v4, Landroid/os/AsyncResult;

    .line 543
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v7, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;Z)V

    goto/16 :goto_0

    .line 546
    :sswitch_d
    const-string/jumbo v17, "Received EVENT_GET_ICC_STATUS_DONE_FOR_SIM_RECOVERY"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 547
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v4    # "ar":Landroid/os/AsyncResult;
    check-cast v4, Landroid/os/AsyncResult;

    .line 548
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v7, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;Z)V

    goto/16 :goto_0

    .line 551
    :sswitch_e
    const-string/jumbo v17, "handleMessage (EVENT_COMMON_SLOT_NO_CHANGED)"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 552
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v17, "com.mediatek.phone.ACTION_COMMON_SLOT_NO_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .local v9, "intentNoChanged":Landroid/content/Intent;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 554
    .local v16, "slotId":I
    move/from16 v0, v16

    invoke-static {v9, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 555
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Broadcasting intent ACTION_COMMON_SLOT_NO_CHANGED for mSlotId : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 388
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_b
        0x69 -> :sswitch_a
        0x6a -> :sswitch_c
        0x6b -> :sswitch_d
        0x73 -> :sswitch_2
        0x74 -> :sswitch_e
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_6
        0xca -> :sswitch_7
    .end sparse-switch
.end method

.method public registerForApplicationChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 949
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 950
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 951
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 954
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 948
    return-void

    .line 949
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 343
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 344
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 345
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 348
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 342
    return-void

    .line 343
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForIccRecovery(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 361
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 362
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 363
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 366
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 360
    return-void

    .line 361
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public repollIccStateForModemSmlChangeFeatrue(IZ)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "needIntent"    # Z

    .prologue
    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "repollIccStateForModemSmlChangeFeatrue, needIntent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 941
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 944
    .local v0, "arg1":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v4, v2}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 939
    return-void

    .line 941
    .end local v0    # "arg1":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "arg1":I
    goto :goto_0
.end method

.method public resetRadioForVsim()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 979
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    shl-int v1, v3, v1

    add-int/lit8 v0, v1, -0x1

    .line 981
    .local v0, "allPhoneIdBitMask":I
    const-string/jumbo v1, "resetRadioForVsim...false"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 982
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 983
    const-string/jumbo v1, "resetRadioForVsim...true"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 984
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 978
    return-void
.end method

.method public setBtConnectedSimId(I)V
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 908
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mBtSlotId:I

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBtConnectedSimId, slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mBtSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 907
    return-void
.end method

.method public unregisterForApplicationChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 959
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 960
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 958
    return-void

    .line 959
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 353
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 352
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForIccRecovery(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 371
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 370
    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
