.class public Lcom/android/internal/telephony/uicc/SIMRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;,
        Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;,
        Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;,
        Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;,
        Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;,
        Lcom/android/internal/telephony/uicc/SIMRecords$RadioTechnologyChangedReceiver;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_uicc_SIMRecords$GetSpnFsmStateSwitchesValues:[I = null

.field private static final ACTION_RESET_MODEM:Ljava/lang/String; = "android.intent.action.sim.ACTION_RESET_MODEM"

.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CFIS_ADN_CAPABILITY_ID_OFFSET:I = 0xe

.field private static final CFIS_ADN_EXTENSION_ID_OFFSET:I = 0xf

.field private static final CFIS_BCD_NUMBER_LENGTH_OFFSET:I = 0x2

.field private static final CFIS_TON_NPI_OFFSET:I = 0x3

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field private static final EVENT_APP_LOCKED:I = 0x23

.field private static final EVENT_CFU_IND:I = 0xd3

.field private static final EVENT_DELAYED_SEND_PHB_CHANGE:I = 0xc8

.field private static final EVENT_DUAL_IMSI_READY:I = 0x2c

.field private static final EVENT_EF_CSP_PLMN_MODE_BIT_CHANGED:I = 0xcb

.field protected static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_OPL_DONE:I = 0x68

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHSONS_DONE:I = 0x69

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_EF_ICCID_DONE:I = 0x12c

.field private static final EVENT_GET_ELP_DONE:I = 0x2b

.field private static final EVENT_GET_GBABP_DONE:I = 0xd1

.field private static final EVENT_GET_GBANL_DONE:I = 0xd2

.field private static final EVENT_GET_GID1_DONE:I = 0x22

.field private static final EVENT_GET_GID2_DONE:I = 0x24

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_LI_DONE:I = 0x2a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field protected static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_NEW_MSISDN_DONE:I = 0xce

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_PSISMSC_DONE:I = 0xcf

.field private static final EVENT_GET_RAT_DONE:I = 0xcc

.field private static final EVENT_GET_SHORT_CPHSONS_DONE:I = 0x6a

.field private static final EVENT_GET_SIM_ECC_DONE:I = 0x66

.field private static final EVENT_GET_SMSP_DONE:I = 0xd0

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field protected static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_USIM_ECC_DONE:I = 0x67

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_IMSI_REFRESH_QUERY:I = 0xd4

.field private static final EVENT_IMSI_REFRESH_QUERY_DONE:I = 0xd5

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_MELOCK_CHANGED:I = 0x190

.field private static final EVENT_QUERY_ICCID_DONE:I = 0x6b

.field private static final EVENT_QUERY_ICCID_DONE_FOR_HOT_SWAP:I = 0xcd

.field private static final EVENT_QUERY_MENU_TITLE_DONE:I = 0x35

.field private static final EVENT_RADIO_AVAILABLE:I = 0x29

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0xc9

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field private static final KEY_SIM_ID:Ljava/lang/String; = "SIM_ID"

.field private static final LANGUAGE_CODE_FOR_LP:[Ljava/lang/String;

.field protected static final LOG_TAG:Ljava/lang/String; = "SIMRecords"

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

.field static final PROPERTY_3G_SIM:Ljava/lang/String; = "persist.radio.simswitch"

.field static final SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

.field static final SIMRECORD_PROPERTY_RIL_PUK1:[Ljava/lang/String;

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI:I = 0xa3

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final simServiceNumber:[I

.field private static final usimServiceNumber:[I


# instance fields
.field private SIM_RECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

.field cphsOnsl:Ljava/lang/String;

.field cphsOnss:Ljava/lang/String;

.field private efLanguageToLoad:I

.field private hasQueryIccId:Z

.field private iccIdQueryState:I

.field private isDispose:Z

.field private isValidMBI:Z

.field private mCallForwardingEnabled:Z

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field mEfCPHS_MWI:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mEfELP:[B

.field mEfEcc:Ljava/lang/String;

.field private mEfGbanlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field mEfLi:[B

.field mEfMWIS:[B

.field mEfPl:[B

.field mEfPsismsc:[B

.field private mEfRat:[B

.field private mEfRatLoaded:Z

.field mEfSST:[B

.field mEfSmsp:[B

.field private mGbabp:Ljava/lang/String;

.field private mGbanl:[Ljava/lang/String;

.field private mIsPhbEfResetDone:Z

.field private mMenuTitleFromEf:Ljava/lang/String;

.field private mOperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPhbReady:Z

.field private mPhbWaitSub:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPnnHomeName:Ljava/lang/String;

.field private mPnnNetworkNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;",
            ">;"
        }
    .end annotation
.end field

.field private mRTC:Lcom/android/internal/telephony/uicc/SIMRecords$RadioTechnologyChangedReceiver;

.field private mSIMInfoReady:Z

.field private mSimImsi:Ljava/lang/String;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field mSlotId:I

.field private mSpNameInEfSpn:Ljava/lang/String;

.field mSpdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSpnDisplayCondition:I

.field mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

.field private mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field private mSubReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

.field mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/uicc/SIMRecords;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->SIM_RECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/uicc/SIMRecords;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/uicc/SIMRecords;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbWaitSub:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/uicc/SIMRecords;)Lcom/mediatek/common/telephony/ITelephonyExt;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    return-object v0
.end method

.method private static synthetic -getcom_android_internal_telephony_uicc_SIMRecords$GetSpnFsmStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->-com_android_internal_telephony_uicc_SIMRecords$GetSpnFsmStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->-com_android_internal_telephony_uicc_SIMRecords$GetSpnFsmStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->values()[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->-com_android_internal_telephony_uicc_SIMRecords$GetSpnFsmStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/uicc/SIMRecords;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRat:[B

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/uicc/SIMRecords;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRatLoaded:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/uicc/SIMRecords;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbWaitSub:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->processShutdownIPO()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->wipeAllSIMContacts()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    const/16 v0, 0x83

    new-array v0, v0, [Ljava/lang/String;

    .line 243
    const-string/jumbo v1, "302370"

    aput-object v1, v0, v3

    const-string/jumbo v1, "302720"

    aput-object v1, v0, v4

    const-string/jumbo v1, "310260"

    aput-object v1, v0, v5

    .line 244
    const-string/jumbo v1, "405025"

    aput-object v1, v0, v6

    const-string/jumbo v1, "405026"

    aput-object v1, v0, v7

    const-string/jumbo v1, "405027"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "405028"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "405029"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "405030"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "405031"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "405032"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 245
    const-string/jumbo v1, "405033"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "405034"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "405035"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "405036"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "405037"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "405038"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "405039"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "405040"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 246
    const-string/jumbo v1, "405041"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "405042"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "405043"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "405044"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "405045"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "405046"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "405047"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "405750"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 247
    const-string/jumbo v1, "405751"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "405752"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "405753"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "405754"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "405755"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "405756"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "405799"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "405800"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 248
    const-string/jumbo v1, "405801"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "405802"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "405803"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "405804"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "405805"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "405806"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string/jumbo v1, "405807"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "405808"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 249
    const-string/jumbo v1, "405809"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string/jumbo v1, "405810"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string/jumbo v1, "405811"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string/jumbo v1, "405812"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string/jumbo v1, "405813"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string/jumbo v1, "405814"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string/jumbo v1, "405815"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string/jumbo v1, "405816"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 250
    const-string/jumbo v1, "405817"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string/jumbo v1, "405818"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string/jumbo v1, "405819"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string/jumbo v1, "405820"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string/jumbo v1, "405821"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string/jumbo v1, "405822"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string/jumbo v1, "405823"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string/jumbo v1, "405824"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 251
    const-string/jumbo v1, "405825"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string/jumbo v1, "405826"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string/jumbo v1, "405827"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string/jumbo v1, "405828"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string/jumbo v1, "405829"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string/jumbo v1, "405830"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string/jumbo v1, "405831"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string/jumbo v1, "405832"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 252
    const-string/jumbo v1, "405833"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string/jumbo v1, "405834"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string/jumbo v1, "405835"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string/jumbo v1, "405836"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string/jumbo v1, "405837"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string/jumbo v1, "405838"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string/jumbo v1, "405839"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string/jumbo v1, "405840"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 253
    const-string/jumbo v1, "405841"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string/jumbo v1, "405842"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string/jumbo v1, "405843"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string/jumbo v1, "405844"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string/jumbo v1, "405845"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string/jumbo v1, "405846"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string/jumbo v1, "405847"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string/jumbo v1, "405848"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 254
    const-string/jumbo v1, "405849"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string/jumbo v1, "405850"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string/jumbo v1, "405851"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string/jumbo v1, "405852"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string/jumbo v1, "405853"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string/jumbo v1, "405875"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string/jumbo v1, "405876"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string/jumbo v1, "405877"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 255
    const-string/jumbo v1, "405878"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string/jumbo v1, "405879"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string/jumbo v1, "405880"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string/jumbo v1, "405881"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string/jumbo v1, "405882"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string/jumbo v1, "405883"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string/jumbo v1, "405884"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string/jumbo v1, "405885"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    .line 256
    const-string/jumbo v1, "405886"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string/jumbo v1, "405908"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string/jumbo v1, "405909"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string/jumbo v1, "405910"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string/jumbo v1, "405911"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string/jumbo v1, "405912"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string/jumbo v1, "405913"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string/jumbo v1, "405914"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    .line 257
    const-string/jumbo v1, "405915"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string/jumbo v1, "405916"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string/jumbo v1, "405917"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string/jumbo v1, "405918"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string/jumbo v1, "405919"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string/jumbo v1, "405920"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string/jumbo v1, "405921"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string/jumbo v1, "405922"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    .line 258
    const-string/jumbo v1, "405923"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string/jumbo v1, "405924"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string/jumbo v1, "405925"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string/jumbo v1, "405926"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string/jumbo v1, "405927"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string/jumbo v1, "405928"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string/jumbo v1, "405929"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string/jumbo v1, "405930"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    .line 259
    const-string/jumbo v1, "405931"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string/jumbo v1, "405932"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string/jumbo v1, "502142"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string/jumbo v1, "502143"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string/jumbo v1, "502145"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string/jumbo v1, "502146"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string/jumbo v1, "502147"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string/jumbo v1, "502148"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    .line 242
    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .line 271
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    .line 272
    const-string/jumbo v1, "de"

    aput-object v1, v0, v3

    const-string/jumbo v1, "en"

    aput-object v1, v0, v4

    const-string/jumbo v1, "it"

    aput-object v1, v0, v5

    const-string/jumbo v1, "fr"

    aput-object v1, v0, v6

    const-string/jumbo v1, "es"

    aput-object v1, v0, v7

    const-string/jumbo v1, "nl"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "sv"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "da"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "pt"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "fi"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 273
    const-string/jumbo v1, "no"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "el"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "tr"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "hu"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "pl"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 274
    const-string/jumbo v1, "cs"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "he"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "ar"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "ru"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "is"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 275
    const-string/jumbo v1, ""

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 271
    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->LANGUAGE_CODE_FOR_LP:[Ljava/lang/String;

    .line 296
    new-array v0, v7, [Ljava/lang/String;

    .line 297
    const-string/jumbo v1, "gsm.sim.ril.phbready"

    aput-object v1, v0, v3

    .line 298
    const-string/jumbo v1, "gsm.sim.ril.phbready.2"

    aput-object v1, v0, v4

    .line 299
    const-string/jumbo v1, "gsm.sim.ril.phbready.3"

    aput-object v1, v0, v5

    .line 300
    const-string/jumbo v1, "gsm.sim.ril.phbready.4"

    aput-object v1, v0, v6

    .line 296
    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    .line 303
    new-array v0, v7, [Ljava/lang/String;

    .line 304
    const-string/jumbo v1, "gsm.sim.retry.puk1"

    aput-object v1, v0, v3

    .line 305
    const-string/jumbo v1, "gsm.sim.retry.puk1.2"

    aput-object v1, v0, v4

    .line 306
    const-string/jumbo v1, "gsm.sim.retry.puk1.3"

    aput-object v1, v0, v5

    .line 307
    const-string/jumbo v1, "gsm.sim.retry.puk1.4"

    aput-object v1, v0, v6

    .line 303
    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->SIMRECORD_PROPERTY_RIL_PUK1:[Ljava/lang/String;

    .line 349
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->simServiceNumber:[I

    .line 353
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->usimServiceNumber:[I

    .line 83
    return-void

    .line 349
    nop

    :array_0
    .array-data 4
        0x1
        0x11
        0x33
        0x34
        0x36
        0x37
        0x38
        0x0
        0xc
        0x3
        0x0
    .end array-data

    .line 353
    :array_1
    .array-data 4
        0x0
        0x13
        0x2d
        0x2e
        0x30
        0x31
        0x33
        0x47
        0xc
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 11
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 371
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 110
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    .line 111
    iput-boolean v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 113
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 114
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 115
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    .line 116
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 118
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    .line 119
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    .line 123
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 125
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    .line 130
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSimImsi:Ljava/lang/String;

    .line 264
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isValidMBI:Z

    .line 268
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRatLoaded:Z

    .line 269
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRat:[B

    .line 285
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->iccIdQueryState:I

    .line 288
    iput v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efLanguageToLoad:I

    .line 289
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPhbEfResetDone:Z

    .line 291
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    .line 292
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfELP:[B

    .line 293
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPsismsc:[B

    .line 294
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSmsp:[B

    .line 310
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    .line 311
    const-string/jumbo v6, "ril.ecclist"

    aput-object v6, v5, v9

    .line 312
    const-string/jumbo v6, "ril.ecclist1"

    aput-object v6, v5, v10

    .line 313
    const-string/jumbo v6, "ril.ecclist2"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 314
    const-string/jumbo v6, "ril.ecclist3"

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 310
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->SIM_RECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

    .line 318
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    .line 319
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbWaitSub:Z

    .line 320
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSIMInfoReady:Z

    .line 339
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    .line 341
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    .line 343
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    .line 345
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    .line 348
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isDispose:Z

    .line 365
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    .line 375
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 376
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mUiccCard Instance = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 378
    const-string/jumbo v5, "SIMRecords construct"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 383
    new-instance v5, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v5, v6, p3, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 385
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 386
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.action.ACTION_PHONE_RESTART"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string/jumbo v5, "SimId"

    iget v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 391
    new-instance v5, Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    .line 394
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    .line 397
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 400
    iput v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 403
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 404
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->cphsOnss:Ljava/lang/String;

    .line 405
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->hasQueryIccId:Z

    .line 407
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x15

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 408
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x1f

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 410
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x19a

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForPhbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 412
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xd3

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallForwardingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 413
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xc9

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 414
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x29

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 415
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xcb

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForEfCspPlmnModeBitChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 416
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x190

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForMelockChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 418
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xd4

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsiRefreshDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 423
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v5, p0, v10, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 424
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v6, 0x23

    invoke-virtual {v5, p0, v6, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 427
    new-instance v5, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;

    invoke-direct {v5, p0, v8}, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 428
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 429
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    const-string/jumbo v5, "action_pin_dismiss"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    const-string/jumbo v5, "action_melock_dismiss"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    const-string/jumbo v5, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    const-string/jumbo v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 437
    new-instance v5, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;

    invoke-direct {v5, p0, v8}, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSubReceiver:Landroid/content/BroadcastReceiver;

    .line 438
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 439
    .local v4, "subFilter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 444
    new-instance v5, Lcom/android/internal/telephony/uicc/SIMRecords$RadioTechnologyChangedReceiver;

    invoke-direct {v5, p0, v8}, Lcom/android/internal/telephony/uicc/SIMRecords$RadioTechnologyChangedReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$RadioTechnologyChangedReceiver;)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRTC:Lcom/android/internal/telephony/uicc/SIMRecords$RadioTechnologyChangedReceiver;

    .line 445
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 446
    .local v3, "rtcFilter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRTC:Lcom/android/internal/telephony/uicc/SIMRecords$RadioTechnologyChangedReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 450
    const-string/jumbo v5, "SIMRecords updateIccRecords"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 451
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isPhbReady()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 455
    const-string/jumbo v5, "Phonebook is ready."

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 456
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 460
    :cond_0
    :try_start_0
    const-class v5, Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SIMRecords X ctor this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 370
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Fail to create plug-in"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private boradcastEfRatContentNotify(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 3482
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_EF_RAT_CONTENT_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3483
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ef_rat_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3484
    const-string/jumbo v1, "slot"

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "broadCast intent ACTION_EF_RAT_CONTENT_NOTIFY: item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", simId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3486
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3474
    return-void
.end method

.method private dispatchGsmMessage(Landroid/telephony/SmsMessage;)I
    .locals 1
    .param p1, "message"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2327
    const/4 v0, 0x0

    return v0
.end method

.method private fetchCPHSOns()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3637
    const-string/jumbo v0, "fetchCPHSOns()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3638
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 3639
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->cphsOnss:Ljava/lang/String;

    .line 3640
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3641
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3640
    const/16 v2, 0x6f14

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3642
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3643
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3644
    const/16 v1, 0x6a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6f18

    .line 3643
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3645
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3636
    return-void
.end method

.method private fetchEccList()V
    .locals 3

    .prologue
    const/16 v2, 0x6fb7

    .line 3236
    const-string/jumbo v0, "fetchEccList()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3237
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 3239
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_0

    .line 3240
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3235
    :goto_0
    return-void

    .line 3242
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private fetchGbaRecords()V
    .locals 3

    .prologue
    .line 3412
    const-string/jumbo v0, "fetchGbaRecords"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3414
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_0

    .line 3415
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->GBA:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3416
    const-string/jumbo v0, "GBA support."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3417
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0xd1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6fd5

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3418
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3420
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0xd2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6fd7

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3421
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3411
    :cond_0
    return-void
.end method

.method private fetchLanguageIndicator()V
    .locals 6

    .prologue
    .line 3508
    const-string/jumbo v3, "fetchLanguageIndicator "

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3509
    const-string/jumbo v3, "persist.sys.language"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3510
    .local v1, "l":Ljava/lang/String;
    const-string/jumbo v3, "persist.sys.country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3511
    .local v0, "c":Ljava/lang/String;
    const-string/jumbo v3, "persist.sys.simlanguage"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3512
    .local v2, "oldSimLang":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 3513
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 3514
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    if-nez v3, :cond_3

    .line 3515
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3516
    const/16 v4, 0x2a

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3515
    const/16 v5, 0x6f05

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3517
    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efLanguageToLoad:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efLanguageToLoad:I

    .line 3519
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3520
    const/16 v4, 0x2b

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3519
    const/16 v5, 0x2f05

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3521
    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efLanguageToLoad:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efLanguageToLoad:I

    .line 3507
    :cond_4
    return-void
.end method

.method private fetchMwisRecords()V
    .locals 4

    .prologue
    .line 3427
    const-string/jumbo v0, "fetchMwisRecords"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3429
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_0

    .line 3430
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->MWI_STATUS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3431
    const-string/jumbo v0, "MWIS support."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3432
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6fca

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3433
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3426
    :cond_0
    return-void
.end method

.method private fetchPnnAndOpl()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x5

    .line 3288
    const-string/jumbo v2, "fetchPnnAndOpl()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3290
    const/4 v1, 0x0

    .line 3291
    .local v1, "bPnnActive":Z
    const/4 v0, 0x0

    .line 3293
    .local v0, "bOplActive":Z
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    if-eqz v2, :cond_0

    .line 3294
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_4

    .line 3295
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    array-length v2, v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 3296
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    aget-byte v2, v2, v4

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 3297
    :goto_0
    if-eqz v1, :cond_0

    .line 3298
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    aget-byte v2, v2, v4

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    .line 3308
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bPnnActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bOplActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3310
    if-eqz v1, :cond_1

    .line 3311
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fc5

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3312
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3313
    if-eqz v0, :cond_1

    .line 3314
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x68

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fc6

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3315
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3287
    :cond_1
    return-void

    .line 3296
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 3298
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 3301
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    array-length v2, v2

    const/16 v3, 0xd

    if-lt v2, v3, :cond_0

    .line 3302
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    aget-byte v2, v2, v5

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    .line 3303
    :goto_2
    if-eqz v1, :cond_0

    .line 3304
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    .line 3302
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 3304
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private fetchRatBalancing()V
    .locals 3

    .prologue
    .line 3651
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/ITelephonyExt;->isSetLanguageBySIM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3652
    return-void

    .line 3653
    :cond_0
    const-string/jumbo v0, "support MTK_RAT_BALANCING"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3655
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_1

    .line 3656
    const-string/jumbo v0, "start loading EF_RAT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3657
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0xcc

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x4f36

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3658
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3649
    :goto_0
    return-void

    .line 3660
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_2

    .line 3662
    const-string/jumbo v0, "loading EF_RAT fail, because of SIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRatLoaded:Z

    .line 3664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRat:[B

    .line 3665
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->boradcastEfRatContentNotify(I)V

    goto :goto_0

    .line 3668
    :cond_2
    const-string/jumbo v0, "loading EF_RAT fail, because of +EUSIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchSmsp()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3392
    const-string/jumbo v0, "fetchSmsp()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3395
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_0

    .line 3396
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_SERVICE_PARAMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3397
    const-string/jumbo v0, "SMSP support."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3398
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0xd0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6f42

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3399
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3401
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_OVER_IP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3402
    const-string/jumbo v0, "PSISMSP support."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3403
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0xcf

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6fe5

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3404
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3391
    :cond_0
    return-void
.end method

.method private fetchSpn()V
    .locals 5

    .prologue
    .line 3321
    const-string/jumbo v2, "fetchSpn()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3322
    const/4 v0, 0x0

    .line 3324
    .local v0, "bSpnActive":Z
    sget-object v2, Lcom/android/internal/telephony/Phone$IccService;->SPN:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSIMServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v1

    .line 3325
    .local v1, "iccSerStatus":Lcom/android/internal/telephony/Phone$IccServiceStatus;
    sget-object v2, Lcom/android/internal/telephony/Phone$IccServiceStatus;->ACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    if-ne v1, v2, :cond_0

    .line 3326
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 3327
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3328
    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3327
    const/16 v4, 0x6f46

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3329
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3320
    :goto_0
    return-void

    .line 3331
    :cond_0
    const-string/jumbo v2, "[SIMRecords] SPN service is not activated  "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findBestLanguage([B)Ljava/lang/String;
    .locals 10
    .param p1, "languages"    # [B

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 2389
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v4

    .line 2391
    .local v4, "locales":[Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v4, :cond_1

    :cond_0
    return-object v8

    .line 2394
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v5, v1, 0x1

    array-length v6, p1

    if-ge v5, v6, :cond_4

    .line 2396
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v5, "ISO-8859-1"

    const/4 v6, 0x2

    invoke-direct {v3, p1, v1, v6, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 2397
    .local v3, "lang":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "languages from sim = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2398
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 2399
    aget-object v5, v4, v2

    if-eqz v5, :cond_2

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_2

    .line 2400
    aget-object v5, v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 2399
    if-eqz v5, :cond_2

    .line 2401
    return-object v3

    .line 2398
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2405
    .end local v2    # "j":I
    .end local v3    # "lang":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2406
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to parse USIM language records"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2394
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 2410
    :cond_4
    return-object v8
.end method

.method private getExtFromEf(I)I
    .locals 3
    .param p1, "ef"    # I

    .prologue
    .line 586
    packed-switch p1, :pswitch_data_0

    .line 596
    const/16 v0, 0x6f4a

    .line 598
    .local v0, "ext":I
    :goto_0
    return v0

    .line 589
    .end local v0    # "ext":I
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_0

    .line 590
    const/16 v0, 0x6f4e

    .restart local v0    # "ext":I
    goto :goto_0

    .line 592
    .end local v0    # "ext":I
    :cond_0
    const/16 v0, 0x6f4a

    .restart local v0    # "ext":I
    goto :goto_0

    .line 586
    :pswitch_data_0
    .packed-switch 0x6f40
        :pswitch_0
    .end packed-switch
.end method

.method private getMatchedLocaleByLI([B)Z
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 3554
    const/4 v3, 0x0

    .line 3555
    .local v3, "ret":Z
    if-nez p1, :cond_0

    .line 3556
    return v3

    .line 3558
    :cond_0
    array-length v2, p1

    .line 3559
    .local v2, "lenOfLI":I
    const/4 v1, 0x0

    .line 3560
    .local v1, "lang":Ljava/lang/String;
    const/4 v0, 0x0

    .end local v1    # "lang":Ljava/lang/String;
    .end local v3    # "ret":Z
    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v0, 0x2

    if-gt v4, v2, :cond_2

    .line 3561
    const/4 v4, 0x2

    invoke-static {p1, v0, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->parseLanguageIndicator([BII)Ljava/lang/String;

    move-result-object v1

    .line 3562
    .local v1, "lang":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "USIM language in language indicator: i is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " language is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3563
    if-eqz v1, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3564
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "USIM language in language indicator: i is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " language is empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3574
    .end local v1    # "lang":Ljava/lang/String;
    :cond_2
    return v3

    .line 3567
    .restart local v1    # "lang":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 3568
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->matchLangToLocale(Ljava/lang/String;)Z

    move-result v3

    .line 3570
    .local v3, "ret":Z
    if-nez v3, :cond_2

    .line 3560
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getMatchedLocaleByLP([B)Z
    .locals 8
    .param p1, "data"    # [B

    .prologue
    const/4 v7, 0x0

    .line 3578
    const/4 v4, 0x0

    .line 3579
    .local v4, "ret":Z
    if-nez p1, :cond_0

    .line 3580
    return v4

    .line 3582
    :cond_0
    array-length v3, p1

    .line 3583
    .local v3, "lenOfLP":I
    const/4 v2, 0x0

    .line 3584
    .local v2, "lang":Ljava/lang/String;
    const/4 v0, 0x0

    .end local v2    # "lang":Ljava/lang/String;
    .end local v4    # "ret":Z
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 3585
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    aget-byte v5, v5, v7

    and-int/lit16 v1, v5, 0xff

    .line 3586
    .local v1, "index":I
    if-ltz v1, :cond_4

    const/16 v5, 0xf

    if-gt v1, v5, :cond_4

    .line 3587
    sget-object v5, Lcom/android/internal/telephony/uicc/SIMRecords;->LANGUAGE_CODE_FOR_LP:[Ljava/lang/String;

    aget-object v2, v5, v1

    .line 3592
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SIM language in language preference: i is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " language is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3593
    if-eqz v2, :cond_2

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3594
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SIM language in language preference: i is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " language is empty"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3604
    .end local v1    # "index":I
    :cond_3
    return v4

    .line 3588
    .restart local v1    # "index":I
    :cond_4
    const/16 v5, 0x20

    if-gt v5, v1, :cond_1

    const/16 v5, 0x2f

    if-gt v1, v5, :cond_1

    .line 3589
    sget-object v5, Lcom/android/internal/telephony/uicc/SIMRecords;->LANGUAGE_CODE_FOR_LP:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x10

    aget-object v2, v5, v6

    .local v2, "lang":Ljava/lang/String;
    goto :goto_1

    .line 3598
    .end local v2    # "lang":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->matchLangToLocale(Ljava/lang/String;)Z

    move-result v4

    .line 3600
    .local v4, "ret":Z
    if-nez v4, :cond_3

    .line 3584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 5
    .param p1, "start"    # Z
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 2819
    if-eqz p1, :cond_2

    .line 2822
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v1, v2, :cond_0

    .line 2823
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-ne v1, v2, :cond_1

    .line 2828
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 2829
    return-void

    .line 2824
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v1, v2, :cond_0

    .line 2825
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v1, v2, :cond_0

    .line 2831
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 2835
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords;->-getcom_android_internal_telephony_uicc_SIMRecords$GetSpnFsmStateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2905
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 2816
    :goto_0
    return-void

    .line 2841
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 2842
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2841
    const/16 v3, 0x6f46

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2843
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2845
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_0

    .line 2848
    :pswitch_1
    if-eqz p2, :cond_3

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 2849
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 2850
    .local v0, "data":[B
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 2852
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    .line 2851
    invoke-static {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 2854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Load EF_SPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2855
    const-string/jumbo v2, " spnDisplayCondition: "

    .line 2854
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2855
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 2854
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2856
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2857
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    .line 2856
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 2859
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_0

    .line 2861
    .end local v0    # "data":[B
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 2862
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2861
    const/16 v3, 0x6f14

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2863
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2865
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 2869
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    goto/16 :goto_0

    .line 2873
    :pswitch_2
    if-eqz p2, :cond_4

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 2874
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 2875
    .restart local v0    # "data":[B
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 2877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Load EF_SPN_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2878
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2879
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    .line 2878
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 2881
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 2883
    .end local v0    # "data":[B
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 2884
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x6f18

    .line 2883
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2885
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2887
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 2891
    :pswitch_3
    if-eqz p2, :cond_5

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    .line 2892
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 2893
    .restart local v0    # "data":[B
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 2895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2896
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2897
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    .line 2896
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 2902
    .end local v0    # "data":[B
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 2899
    :cond_5
    const-string/jumbo v1, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2835
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleEfCspData([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x1

    .line 3014
    array-length v2, p1

    div-int/lit8 v1, v2, 0x2

    .line 3018
    .local v1, "usedCspGroups":I
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 3019
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3020
    mul-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    const/16 v3, -0x40

    if-ne v2, v3, :cond_1

    .line 3021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[CSP] found ValueAddedServicesGroup, value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3022
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 3026
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 3034
    :goto_1
    return-void

    .line 3028
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 3031
    const-string/jumbo v2, "[CSP] Set Automatic Network Selection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3032
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_1

    .line 3019
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3038
    :cond_2
    const-string/jumbo v2, "[CSP] Value Added Service Group (0xC0), not found!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3007
    return-void
.end method

.method private handleFileUpdate(I)V
    .locals 5
    .param p1, "efid"    # I

    .prologue
    const/16 v3, 0x6f40

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 2115
    sparse-switch p1, :sswitch_data_0

    .line 2169
    const-string/jumbo v0, "handleFileUpdate default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2175
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isUsimPhbEfAndNeedReset(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2176
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPhbEfResetDone:Z

    if-nez v0, :cond_0

    .line 2177
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPhbEfResetDone:Z

    .line 2178
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 2179
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setPhbReady(Z)V

    .line 2183
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 2114
    :cond_1
    :goto_0
    return-void

    .line 2117
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2118
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 2119
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2118
    const/16 v3, 0x6fc7

    const/16 v4, 0x6fc8

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 2122
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2123
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 2124
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2123
    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 2127
    :sswitch_2
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2128
    const-string/jumbo v0, "[CSP] SIM Refresh for EF_CSP_CPHS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2129
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 2130
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2129
    const/16 v2, 0x6f15

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 2133
    :sswitch_3
    const-string/jumbo v0, "SIM Refresh called for EF_FDN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2134
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    .line 2141
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPhbEfResetDone:Z

    if-nez v0, :cond_1

    .line 2142
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPhbEfResetDone:Z

    .line 2143
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 2144
    const-string/jumbo v0, "handleFileUpdate ADN like"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2145
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setPhbReady(Z)V

    goto :goto_0

    .line 2150
    :sswitch_5
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2151
    const-string/jumbo v0, "SIM Refresh called for EF_MSISDN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2152
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v1

    .line 2153
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2152
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2156
    :sswitch_6
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2157
    const-string/jumbo v0, "SIM Refresh called for EF_CFIS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2158
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 2159
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2158
    const/16 v2, 0x6fcb

    invoke-virtual {v0, v2, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2162
    :sswitch_7
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2163
    const-string/jumbo v0, "SIM Refresh called for EF_CFF_CPHS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2164
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 2165
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2164
    const/16 v2, 0x6f13

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2115
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f13 -> :sswitch_7
        0x6f15 -> :sswitch_2
        0x6f17 -> :sswitch_1
        0x6f3a -> :sswitch_4
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_5
        0x6f49 -> :sswitch_4
        0x6fc7 -> :sswitch_0
        0x6fcb -> :sswitch_6
    .end sparse-switch
.end method

.method private handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 10
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2189
    if-nez p1, :cond_0

    .line 2190
    const-string/jumbo v5, "handleSimRefresh received without input"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2191
    return-void

    .line 2196
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2206
    :cond_1
    iget v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    packed-switch v5, :pswitch_data_0

    .line 2301
    :pswitch_0
    const-string/jumbo v5, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2306
    :cond_2
    :goto_0
    iget v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-eq v5, v9, :cond_3

    .line 2307
    iget v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 2312
    :cond_3
    :goto_1
    const-string/jumbo v5, "notify stk app to remove the idle text"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2314
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.aciton.stk.REMOVE_IDLE_TEXT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2315
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "SIM_ID"

    iget v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2316
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2188
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    return-void

    .line 2198
    :cond_5
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleSimRefresh, refreshResponse.aid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mParentApp.getAid() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2203
    return-void

    .line 2209
    :pswitch_1
    const-string/jumbo v5, "handleSimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:[I

    array-length v5, v5

    if-ge v0, v5, :cond_6

    .line 2213
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:[I

    aget v5, v5, v0

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleFileUpdate(I)V

    .line 2212
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2215
    :cond_6
    iput-boolean v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPhbEfResetDone:Z

    goto :goto_0

    .line 2219
    .end local v0    # "i":I
    :pswitch_2
    const-string/jumbo v5, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2222
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->setPhbReady(Z)V

    .line 2224
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onIccRefreshInit()V

    goto/16 :goto_0

    .line 2228
    :pswitch_3
    const-string/jumbo v5, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2239
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v2

    .line 2240
    .local v2, "mSimVar":Landroid/telephony/TelephonyManager$MultiSimVariants;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mSimVar : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2241
    const-string/jumbo v5, "ro.sim_refresh_reset_by_modem"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2242
    const-string/jumbo v5, "sim_refresh_reset_by_modem false"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2243
    sget-object v5, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-eq v2, v5, :cond_8

    .line 2244
    const-string/jumbo v5, "persist.radio.simswitch"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2248
    .local v4, "phoneIdFor3G":I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 2249
    .local v3, "phoneId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "phoneIdFor3G : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2250
    if-ne v4, v3, :cond_7

    .line 2251
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    .line 2266
    .end local v3    # "phoneId":I
    .end local v4    # "phoneIdFor3G":I
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 2267
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->setPhbReady(Z)V

    goto/16 :goto_0

    .line 2254
    .restart local v3    # "phoneId":I
    .restart local v4    # "phoneIdFor3G":I
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to reset modem"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2255
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.sim.ACTION_RESET_MODEM"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2256
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 2260
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "phoneId":I
    .end local v4    # "phoneIdFor3G":I
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    goto :goto_3

    .line 2263
    :cond_9
    const-string/jumbo v5, "Sim reset by modem!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 2274
    .end local v2    # "mSimVar":Landroid/telephony/TelephonyManager$MultiSimVariants;
    :pswitch_4
    const-string/jumbo v5, "handleSimRefresh with REFRESH_INIT_FULL_FILE_UPDATED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->setPhbReady(Z)V

    .line 2277
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onIccRefreshInit()V

    goto/16 :goto_0

    .line 2281
    :pswitch_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleSimRefresh with REFRESH_INIT_FILE_UPDATED, EFID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:[I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2283
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:[I

    array-length v5, v5

    if-ge v0, v5, :cond_a

    .line 2284
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:[I

    aget v5, v5, v0

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleFileUpdate(I)V

    .line 2283
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2286
    :cond_a
    iput-boolean v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPhbEfResetDone:Z

    .line 2287
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v5, v6, :cond_2

    .line 2289
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2294
    .end local v0    # "i":I
    :pswitch_6
    const-string/jumbo v5, "handleSimRefresh with REFRESH_SESSION_RESET"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2297
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onIccRefreshInit()V

    goto/16 :goto_0

    .line 2308
    :cond_b
    iget v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    .line 2309
    iget v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_3

    .line 2310
    iget v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    goto/16 :goto_1

    .line 2206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private handleSms([B)V
    .locals 7
    .param p1, "ba"    # [B

    .prologue
    const/4 v6, 0x0

    .line 2331
    aget-byte v3, p1, v6

    if-eqz v3, :cond_0

    .line 2332
    const-string/jumbo v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    :cond_0
    aget-byte v3, p1, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 2337
    array-length v1, p1

    .line 2341
    .local v1, "n":I
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [B

    .line 2342
    .local v2, "pdu":[B
    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x1

    invoke-static {p1, v4, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2343
    const-string/jumbo v3, "3gpp"

    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 2345
    .local v0, "message":Landroid/telephony/SmsMessage;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    .line 2330
    .end local v0    # "message":Landroid/telephony/SmsMessage;
    .end local v1    # "n":I
    .end local v2    # "pdu":[B
    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2351
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2353
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2354
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2356
    .local v0, "ba":[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_0

    .line 2357
    const-string/jumbo v6, "ENF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    :cond_0
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 2363
    array-length v4, v0

    .line 2367
    .local v4, "n":I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 2368
    .local v5, "pdu":[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2369
    const-string/jumbo v6, "3gpp"

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 2371
    .local v3, "message":Landroid/telephony/SmsMessage;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    .line 2376
    aput-byte v10, v0, v9

    .line 2353
    .end local v3    # "message":Landroid/telephony/SmsMessage;
    .end local v4    # "n":I
    .end local v5    # "pdu":[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2350
    .end local v0    # "ba":[B
    :cond_2
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2957
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    return v1

    .line 2958
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isMatchingPlmnForEfOpl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "simPlmn"    # Ljava/lang/String;
    .param p2, "bcchPlmn"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x64

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 3698
    if-eqz p1, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 3699
    :cond_0
    return v6

    .line 3698
    :cond_1
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isMatchingPlmnForEfOpl(): simPlmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", bcchPlmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3707
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 3708
    .local v2, "simPlmnLen":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 3709
    .local v0, "bcchPlmnLen":I
    if-lt v2, v5, :cond_2

    if-ge v0, v5, :cond_3

    .line 3710
    :cond_2
    return v6

    .line 3712
    :cond_3
    const/4 v1, 0x0

    .line 3713
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_6

    .line 3714
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_5

    .line 3713
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3716
    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_4

    .line 3717
    return v6

    .line 3720
    :cond_6
    if-ne v2, v7, :cond_9

    if-ne v0, v7, :cond_9

    .line 3721
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_8

    .line 3722
    :cond_7
    return v9

    .line 3724
    :cond_8
    return v6

    .line 3726
    :cond_9
    if-ne v0, v7, :cond_a

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_a

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_a

    .line 3727
    return v6

    .line 3728
    :cond_a
    if-ne v2, v7, :cond_b

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_b

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_b

    .line 3729
    return v6

    .line 3732
    :cond_b
    return v9
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2769
    if-nez p1, :cond_0

    return v3

    .line 2773
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->isHPlmn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2775
    return v4

    .line 2778
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 2779
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "spdiNet$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2780
    .local v0, "spdiNet":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2781
    return v4

    .line 2785
    .end local v0    # "spdiNet":Ljava/lang/String;
    .end local v1    # "spdiNet$iterator":Ljava/util/Iterator;
    :cond_3
    return v3
.end method

.method private loadEfLiAndEfPl()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 2563
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_0

    .line 2564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 2565
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 2566
    new-instance v1, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;)V

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2565
    const/16 v2, 0x6f05

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2567
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2569
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 2570
    new-instance v1, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;)V

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2569
    const/16 v2, 0x2f05

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2571
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2562
    :cond_0
    return-void
.end method

.method private matchLangToLocale(Ljava/lang/String;)Z
    .locals 10
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x5

    .line 3608
    const/4 v5, 0x0

    .line 3609
    .local v5, "ret":Z
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v3

    .line 3610
    .local v3, "locals":[Ljava/lang/String;
    array-length v4, v3

    .line 3611
    .local v4, "localsSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 3612
    aget-object v6, v3, v0

    .line 3613
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 3614
    .local v2, "len":I
    if-ne v2, v9, :cond_1

    .line 3615
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3616
    .local v1, "language":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Supported languages: the i"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " th is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3617
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3618
    const/4 v5, 0x1

    .line 3620
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Matched! lang: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", country is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3625
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "len":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_0
    return v5

    .line 3611
    .restart local v2    # "len":I
    .restart local v6    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onLanguageFileLoaded()V
    .locals 2

    .prologue
    .line 3526
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efLanguageToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efLanguageToLoad:I

    .line 3527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLanguageFileLoaded efLanguageToLoad is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efLanguageToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3528
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efLanguageToLoad:I

    if-nez v0, :cond_1

    .line 3529
    const-string/jumbo v0, "onLanguageFileLoaded all language file loaded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3530
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfELP:[B

    if-eqz v0, :cond_2

    .line 3531
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setLanguageFromSIM()V

    .line 3525
    :cond_1
    :goto_0
    return-void

    .line 3533
    :cond_2
    const-string/jumbo v0, "onLanguageFileLoaded all language file are not exist!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onLocked()V
    .locals 1

    .prologue
    .line 2558
    const-string/jumbo v0, "only fetch EF_LI and EF_PL in lock state"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2559
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    .line 2557
    return-void
.end method

.method private parseEFopl(Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "messages"    # Ljava/util/ArrayList;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, 0x10

    const/4 v8, 0x0

    .line 3442
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3443
    .local v0, "count":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseEFopl(): opl has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " records"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3445
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    .line 3446
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3447
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 3448
    .local v1, "data":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseEFopl(): opl record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " content is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3450
    new-instance v5, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;-><init>()V

    .line 3452
    .local v5, "oplRec":Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;
    invoke-static {v1, v8, v12}, Lcom/android/internal/telephony/uicc/IccUtils;->parsePlmnToStringForEfOpl([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    .line 3453
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseEFopl(): opl sPlmn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3455
    new-array v4, v11, [B

    .line 3456
    .local v4, "minLac":[B
    aget-byte v6, v1, v12

    aput-byte v6, v4, v8

    .line 3457
    const/4 v6, 0x4

    aget-byte v6, v1, v6

    aput-byte v6, v4, v10

    .line 3458
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->nMinLAC:I

    .line 3459
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseEFopl(): opl nMinLAC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->nMinLAC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3461
    new-array v3, v11, [B

    .line 3462
    .local v3, "maxLAC":[B
    const/4 v6, 0x5

    aget-byte v6, v1, v6

    aput-byte v6, v3, v8

    .line 3463
    const/4 v6, 0x6

    aget-byte v6, v1, v6

    aput-byte v6, v3, v10

    .line 3464
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->nMaxLAC:I

    .line 3465
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseEFopl(): opl nMaxLAC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->nMaxLAC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3467
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->nPnnIndex:I

    .line 3468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseEFopl(): opl nPnnIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->nPnnIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3470
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3446
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3441
    .end local v1    # "data":[B
    .end local v3    # "maxLAC":[B
    .end local v4    # "minLac":[B
    .end local v5    # "oplRec":Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;
    :cond_0
    return-void
.end method

.method private parseEFpnn(Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "messages"    # Ljava/util/ArrayList;

    .prologue
    const/4 v7, 0x0

    .line 3260
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3261
    .local v0, "count":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseEFpnn(): pnn has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " records"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3263
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    .line 3264
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 3265
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 3266
    .local v1, "data":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseEFpnn(): pnn record "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " content is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3268
    new-instance v4, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v5, v1

    invoke-direct {v4, v1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 3269
    .local v4, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    new-instance v3, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;-><init>()V

    .line 3270
    .local v3, "opName":Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3271
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x43

    if-ne v5, v6, :cond_1

    .line 3273
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    .line 3272
    invoke-static {v5, v7, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    .line 3274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseEFpnn(): pnn sFullName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3270
    :cond_0
    :goto_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_1

    .line 3275
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_0

    .line 3277
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    .line 3276
    invoke-static {v5, v7, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    .line 3278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseEFpnn(): pnn sShortName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3282
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3264
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3259
    .end local v1    # "data":[B
    .end local v3    # "opName":Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;
    .end local v4    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_3
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 8
    .param p1, "data"    # [B

    .prologue
    const/4 v7, 0x0

    .line 2916
    new-instance v3, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v5, p1

    invoke-direct {v3, p1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2918
    .local v3, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v2, 0x0

    .line 2920
    .local v2, "plmnEntries":[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2922
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0xa3

    if-ne v5, v6, :cond_0

    .line 2923
    new-instance v4, Lcom/android/internal/telephony/gsm/SimTlv;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-direct {v4, v5, v7, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .end local v3    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .local v4, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    move-object v3, v4

    .line 2926
    .end local v4    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .restart local v3    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_2

    .line 2927
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    .line 2932
    .end local v2    # "plmnEntries":[B
    :cond_1
    if-nez v2, :cond_3

    .line 2933
    return-void

    .line 2920
    .restart local v2    # "plmnEntries":[B
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    .line 2936
    .end local v2    # "plmnEntries":[B
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    div-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 2938
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    add-int/lit8 v5, v0, 0x2

    array-length v6, v2

    if-ge v5, v6, :cond_5

    .line 2942
    const/4 v5, 0x3

    invoke-static {v2, v0, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->parsePlmnToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 2946
    .local v1, "plmnCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_4

    .line 2947
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EF_SPDI network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2948
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2938
    :cond_4
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 2915
    .end local v1    # "plmnCode":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private processEfCspPlmnModeBitUrc(I)V
    .locals 4
    .param p1, "bit"    # I

    .prologue
    const/4 v3, 0x0

    .line 3491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processEfCspPlmnModeBitUrc: bit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3492
    if-nez p1, :cond_0

    .line 3493
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 3499
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_EF_CSP_CONTENT_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3500
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "plmn_mode_bit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3501
    const-string/jumbo v1, "slot"

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "broadCast intent ACTION_EF_CSP_CONTENT_NOTIFY, EXTRA_PLMN_MODE_BIT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3503
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3490
    return-void

    .line 3495
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    goto :goto_0
.end method

.method private processShutdownIPO()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->hasQueryIccId:Z

    .line 3229
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->iccIdQueryState:I

    .line 3230
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 3231
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 3232
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    .line 3224
    return-void
.end method

.method private setLanguageFromSIM()V
    .locals 3

    .prologue
    .line 3539
    const-string/jumbo v1, "setLanguageFromSIM "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3540
    const/4 v0, 0x0

    .line 3542
    .local v0, "bMatched":Z
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_1

    .line 3543
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMatchedLocaleByLI([B)Z

    move-result v0

    .line 3547
    .local v0, "bMatched":Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfELP:[B

    if-eqz v1, :cond_0

    .line 3548
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfELP:[B

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMatchedLocaleByLI([B)Z

    move-result v0

    .line 3550
    :cond_0
    const-string/jumbo v1, "setLanguageFromSIM End"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3538
    return-void

    .line 3545
    .local v0, "bMatched":Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMatchedLocaleByLP([B)Z

    move-result v0

    .local v0, "bMatched":Z
    goto :goto_0
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 2533
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2534
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2535
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2534
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 2524
    :cond_0
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 1
    .param p1, "spn"    # Ljava/lang/String;

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2544
    const-string/jumbo v0, "setVoiceMailByCountry"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    .line 2547
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 2548
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 2541
    :cond_0
    return-void
.end method

.method private updateConfiguration(Ljava/lang/String;)V
    .locals 3
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 3248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOldMccMnc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3252
    :cond_0
    const-string/jumbo v0, "Do not update configuration if mcc mnc no change."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3247
    :goto_0
    return-void

    .line 3249
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOldMccMnc:Ljava/lang/String;

    .line 3250
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOldMccMnc:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private validEfCfis([B)Z
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 780
    if-eqz p1, :cond_0

    aget-byte v2, p1, v1

    if-lt v2, v0, :cond_0

    aget-byte v2, p1, v1

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private wipeAllSIMContacts()V
    .locals 1

    .prologue
    .line 3219
    const-string/jumbo v0, "wipeAllSIMContacts"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3220
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 3221
    const-string/jumbo v0, "wipeAllSIMContacts after reset"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3218
    return-void
.end method


# virtual methods
.method public broadcastPhbStateChangedIntent(Z)V
    .locals 4
    .param p1, "isReady"    # Z

    .prologue
    .line 3921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "broadcastPhbStateChangedIntent, mPhbReady "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mSIMInfoReady "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSIMInfoReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3922
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 3923
    .local v1, "subId":I
    if-gtz v1, :cond_0

    .line 3924
    const-string/jumbo v2, "broadcastPhbStateChangedIntent, subId <= 0"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3925
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbWaitSub:Z

    .line 3920
    :goto_0
    return-void

    .line 3927
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.PHB_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3928
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "ready"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3929
    const-string/jumbo v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Broadcasting intent ACTION_PHB_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3931
    const-string/jumbo v3, " sub id "

    .line 3930
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3931
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    .line 3930
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3932
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Disposing SIMRecords this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isDispose:Z

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallForwardingInfo(Landroid/os/Handler;)V

    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPhbReady(Landroid/os/Handler;)V

    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForEfCspPlmnModeBitChanged(Landroid/os/Handler;)V

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMelockChanged(Landroid/os/Handler;)V

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 492
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbWaitSub:Z

    .line 494
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 497
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setPhbReady(Z)V

    .line 498
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 499
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 501
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 471
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SIMRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3044
    const-string/jumbo v0, " extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3045
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mVmConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSpnOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCallForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSpnState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCphsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCspPlmnEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mEfMWIS[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mEfCPHS_MWI[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mEfCff[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mEfCfis[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSpnDisplayCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSpdiNetworks[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPnnHomeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mUsimServiceTable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mGid1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mGid2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3062
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3042
    return-void
.end method

.method protected fetchSimRecords()V
    .locals 5

    .prologue
    const/16 v4, 0x6f40

    const/4 v3, 0x1

    .line 2576
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 2578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fetchSimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2580
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 2581
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2587
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccIdRecord()V

    .line 2588
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2594
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v1

    .line 2595
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2594
    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 2596
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2599
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6fc9

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2600
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2602
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6fad

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2603
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2616
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 2618
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2617
    const/16 v2, 0x6f11

    .line 2616
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2619
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2623
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6fcb

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2624
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2625
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6f13

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2626
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2633
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6fcd

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2634
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2641
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6f38

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2642
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2644
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6f16

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2645
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2647
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6f15

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2648
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2650
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6f3e

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2651
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2653
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x24

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6f3f

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2654
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2656
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    .line 2664
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    if-eqz v0, :cond_1

    .line 2665
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/ITelephonyExt;->isSetLanguageBySIM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2666
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x35

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6f54

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2667
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2673
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchCPHSOns()V

    .line 2695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fetchSimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2697
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchRatBalancing()V

    .line 2575
    return-void

    .line 2670
    :cond_1
    const-string/jumbo v0, "fetchSimRecords(): mTelephonyExt is null!!!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 506
    const-string/jumbo v0, "finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method getChildPhoneId()I
    .locals 3

    .prologue
    .line 4020
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v0

    .line 4021
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getChildPhoneId] phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4022
    return v0
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 7
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 2713
    const/4 v0, 0x0

    .line 2714
    .local v0, "bSpnActive":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    .line 2716
    .local v2, "spn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_0

    .line 2717
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_2

    .line 2718
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    array-length v3, v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    aget-byte v3, v3, v5

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_0

    .line 2719
    const/4 v0, 0x1

    .line 2720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDisplayRule USIM mEfSST is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2721
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 2720
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2721
    const-string/jumbo v4, " set bSpnActive to true"

    .line 2720
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2730
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDisplayRule mParentApp is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2731
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2730
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2733
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2734
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2737
    const-string/jumbo v3, "getDisplayRule, getOperatorBrandOverride is not null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2739
    const/4 v1, 0x2

    .line 2762
    .local v1, "rule":I
    :cond_1
    :goto_2
    return v1

    .line 2723
    .end local v1    # "rule":I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    array-length v3, v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    aget-byte v3, v3, v6

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_0

    .line 2724
    const/4 v0, 0x1

    .line 2725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDisplayRule SIM mEfSST is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2726
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 2725
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2726
    const-string/jumbo v4, " set bSpnActive to true"

    .line 2725
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2731
    :cond_3
    const-string/jumbo v3, "null"

    goto :goto_1

    .line 2742
    :cond_4
    if-eqz v0, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 2746
    :cond_5
    const-string/jumbo v3, "getDisplayRule, no EF_SPN"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2748
    const/4 v1, 0x2

    .line 2742
    .restart local v1    # "rule":I
    goto :goto_2

    .line 2749
    .end local v1    # "rule":I
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2750
    const/4 v1, 0x1

    .line 2751
    .restart local v1    # "rule":I
    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2753
    const/4 v1, 0x3

    goto :goto_2

    .line 2756
    .end local v1    # "rule":I
    :cond_7
    const/4 v1, 0x2

    .line 2757
    .restart local v1    # "rule":I
    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 2759
    const/4 v1, 0x3

    goto :goto_2
.end method

.method public getEfGbabp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GBABP = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGbabp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3863
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGbabp:Ljava/lang/String;

    return-object v0
.end method

.method public getEfPsismsc()[B
    .locals 2

    .prologue
    .line 3886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PSISMSC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPsismsc:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3887
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPsismsc:[B

    return-object v0
.end method

.method public getEfRatBalancing()I
    .locals 2

    .prologue
    .line 3673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getEfRatBalancing: iccCardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3674
    const-string/jumbo v1, ", mEfRatLoaded = "

    .line 3673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3674
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRatLoaded:Z

    .line 3673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3674
    const-string/jumbo v1, ", mEfRat is null = "

    .line 3673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3674
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRat:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3673
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3676
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRatLoaded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRat:[B

    if-nez v0, :cond_1

    .line 3677
    const/16 v0, 0x100

    return v0

    .line 3674
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3679
    :cond_1
    const/16 v0, 0x200

    return v0
.end method

.method public getEfSmsp()[B
    .locals 2

    .prologue
    .line 3895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEfSmsp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPsismsc:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3896
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSmsp:[B

    return-object v0
.end method

.method public getEonsIfExist(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 10
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "nLac"    # I
    .param p3, "bLongNameRequired"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3737
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EONS getEonsIfExist: plmn is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " nLac is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " bLongNameRequired: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3738
    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 3739
    :cond_0
    return-object v8

    .line 3738
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 3742
    const/4 v2, -0x1

    .line 3743
    .local v2, "nPnnIndex":I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->isHPlmn(Ljava/lang/String;)Z

    move-result v1

    .line 3745
    .local v1, "isHPLMN":Z
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    if-nez v6, :cond_6

    .line 3747
    if-eqz v1, :cond_5

    .line 3748
    const-string/jumbo v6, "EONS getEonsIfExist: Plmn is HPLMN, but no mOperatorList, return PNN\'s first record"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3749
    const/4 v2, 0x1

    .line 3777
    :cond_2
    :goto_0
    const/4 v6, -0x1

    if-ne v2, v6, :cond_b

    if-eqz v1, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v9, :cond_b

    .line 3778
    const-string/jumbo v6, "EONS getEonsIfExist: not find it in EF_OPL, but Plmn is HPLMN, return PNN\'s first record"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3779
    const/4 v2, 0x1

    .line 3790
    :cond_3
    :goto_1
    const/4 v5, 0x0

    .line 3791
    .local v5, "sEons":Ljava/lang/String;
    if-lt v2, v9, :cond_4

    .line 3792
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;

    .line 3793
    .local v3, "opName":Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;
    if-eqz p3, :cond_e

    .line 3794
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 3795
    new-instance v5, Ljava/lang/String;

    .end local v5    # "sEons":Ljava/lang/String;
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3807
    .end local v3    # "opName":Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;
    :cond_4
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EONS getEonsIfExist: sEons is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3809
    return-object v5

    .line 3751
    :cond_5
    const-string/jumbo v6, "EONS getEonsIfExist: Plmn is not HPLMN, and no mOperatorList, return null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3752
    return-object v8

    .line 3756
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 3757
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;

    .line 3758
    .local v4, "oplRec":Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EONS getEonsIfExist: record number is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " sPlmn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " nMinLAC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3759
    iget v7, v4, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->nMinLAC:I

    .line 3758
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3759
    const-string/jumbo v7, " nMaxLAC: "

    .line 3758
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3759
    iget v7, v4, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->nMaxLAC:I

    .line 3758
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3759
    const-string/jumbo v7, " PnnIndex "

    .line 3758
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3759
    iget v7, v4, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->nPnnIndex:I

    .line 3758
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3763
    iget-object v6, v4, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->isMatchingPlmnForEfOpl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3764
    iget v6, v4, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->nMinLAC:I

    if-nez v6, :cond_8

    iget v6, v4, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->nMaxLAC:I

    const v7, 0xfffe

    if-ne v6, v7, :cond_8

    .line 3765
    :cond_7
    const-string/jumbo v6, "EONS getEonsIfExist: find it in EF_OPL"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3766
    iget v6, v4, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->nPnnIndex:I

    if-nez v6, :cond_a

    .line 3767
    const-string/jumbo v6, "EONS getEonsIfExist: oplRec.nPnnIndex is 0 indicates that the name is to be taken from other sources"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3768
    return-object v8

    .line 3764
    :cond_8
    iget v6, v4, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->nMinLAC:I

    if-gt v6, p2, :cond_9

    iget v6, v4, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->nMaxLAC:I

    if-ge v6, p2, :cond_7

    .line 3756
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 3770
    :cond_a
    iget v2, v4, Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;->nPnnIndex:I

    goto/16 :goto_0

    .line 3781
    .end local v0    # "i":I
    .end local v4    # "oplRec":Lcom/android/internal/telephony/uicc/SIMRecords$OplRecord;
    :cond_b
    if-le v2, v9, :cond_c

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v2, v6, :cond_c

    if-eqz v1, :cond_c

    .line 3782
    const-string/jumbo v6, "EONS getEonsIfExist: find it in EF_OPL, but index in EF_OPL > EF_PNN list length & Plmn is HPLMN, return PNN\'s first record"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3783
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 3785
    :cond_c
    if-le v2, v9, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v2, v6, :cond_3

    if-nez v1, :cond_3

    .line 3786
    const-string/jumbo v6, "EONS getEonsIfExist: find it in EF_OPL, but index in EF_OPL > EF_PNN list length & Plmn is not HPLMN, return PNN\'s first record"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3787
    const/4 v2, -0x1

    goto/16 :goto_1

    .line 3796
    .restart local v3    # "opName":Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;
    .restart local v5    # "sEons":Ljava/lang/String;
    :cond_d
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 3797
    new-instance v5, Ljava/lang/String;

    .end local v5    # "sEons":Ljava/lang/String;
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v5, "sEons":Ljava/lang/String;
    goto/16 :goto_2

    .line 3799
    .local v5, "sEons":Ljava/lang/String;
    :cond_e
    if-nez p3, :cond_4

    .line 3800
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    if-eqz v6, :cond_f

    .line 3801
    new-instance v5, Ljava/lang/String;

    .end local v5    # "sEons":Ljava/lang/String;
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v5, "sEons":Ljava/lang/String;
    goto/16 :goto_2

    .line 3802
    .local v5, "sEons":Ljava/lang/String;
    :cond_f
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 3803
    new-instance v5, Ljava/lang/String;

    .end local v5    # "sEons":Ljava/lang/String;
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v5, "sEons":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public getFirstFullNameInEfPnn()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3093
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 3094
    :cond_0
    const-string/jumbo v1, "getFirstFullNameInEfPnn(): empty"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3095
    return-object v3

    .line 3098
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;

    .line 3099
    .local v0, "opName":Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFirstFullNameInEfPnn(): first fullname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3100
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3101
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 3102
    :cond_2
    return-object v3
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    return-object v0
.end method

.method public getGid2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuTitleFromEf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3633
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    return-object v0
.end method

.method public getMncLength()I
    .locals 2

    .prologue
    .line 3904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mncLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3905
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    return v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getMvnoMatchType()Ljava/lang/String;
    .locals 7

    .prologue
    .line 3115
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 3116
    .local v1, "IMSI":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpNameInEfSpn()Ljava/lang/String;

    move-result-object v4

    .line 3117
    .local v4, "SPN":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getFirstFullNameInEfPnn()Ljava/lang/String;

    move-result-object v3

    .line 3118
    .local v3, "PNN":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    .line 3119
    .local v0, "GID1":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 3120
    .local v2, "MCCMNC":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getMvnoMatchType(): imsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mccmnc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", spn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3122
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnByEfSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3123
    const-string/jumbo v5, "spn"

    return-object v5

    .line 3125
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnByImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3126
    const-string/jumbo v5, "imsi"

    return-object v5

    .line 3128
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3129
    const-string/jumbo v5, "pnn"

    return-object v5

    .line 3131
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnByEfGid1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 3132
    const-string/jumbo v5, "gid"

    return-object v5

    .line 3134
    :cond_3
    const-string/jumbo v5, ""

    return-object v5
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 913
    const-string/jumbo v0, "getOperatorNumeric: IMSI == null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 914
    return-object v2

    .line 916
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-nez v0, :cond_2

    .line 917
    :cond_1
    const-string/jumbo v0, "getSIMOperatorNumeric: bad mncLength"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 918
    return-object v2

    .line 923
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSIMCPHSOns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->cphsOnsl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->cphsOnsl:Ljava/lang/String;

    return-object v0

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->cphsOnss:Ljava/lang/String;

    return-object v0
.end method

.method public getSIMServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 9
    .param p1, "enService"    # Lcom/android/internal/telephony/Phone$IccService;

    .prologue
    .line 3336
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone$IccService;->getIndex()I

    move-result v2

    .line 3337
    .local v2, "nServiceNum":I
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->UNKNOWN:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    .line 3338
    .local v6, "simServiceStatus":Lcom/android/internal/telephony/Phone$IccServiceStatus;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSIMServiceStatus enService is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Service Index is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3340
    if-ltz v2, :cond_0

    sget-object v7, Lcom/android/internal/telephony/Phone$IccService;->UNSUPPORTED_SERVICE:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone$IccService;->getIndex()I

    move-result v7

    if-ge v2, v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    if-eqz v7, :cond_0

    .line 3341
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v7, v8, :cond_4

    .line 3342
    sget-object v7, Lcom/android/internal/telephony/uicc/SIMRecords;->usimServiceNumber:[I

    aget v3, v7, v2

    .line 3343
    .local v3, "nUSTIndex":I
    if-gtz v3, :cond_1

    .line 3344
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    .line 3387
    .end local v3    # "nUSTIndex":I
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSIMServiceStatus simServiceStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3388
    return-object v6

    .line 3346
    .restart local v3    # "nUSTIndex":I
    :cond_1
    div-int/lit8 v5, v3, 0x8

    .line 3347
    .local v5, "nbyte":I
    rem-int/lit8 v4, v3, 0x8

    .line 3348
    .local v4, "nbit":I
    if-nez v4, :cond_2

    .line 3349
    const/4 v4, 0x7

    .line 3350
    add-int/lit8 v5, v5, -0x1

    .line 3354
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSIMServiceStatus USIM nbyte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " nbit: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3356
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    array-length v7, v7

    if-le v7, v5, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    aget-byte v7, v7, v5

    const/4 v8, 0x1

    shl-int/2addr v8, v4

    and-int/2addr v7, v8

    if-lez v7, :cond_3

    .line 3357
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->ACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    goto :goto_0

    .line 3352
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3359
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->INACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    goto :goto_0

    .line 3363
    .end local v3    # "nUSTIndex":I
    .end local v4    # "nbit":I
    .end local v5    # "nbyte":I
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/uicc/SIMRecords;->simServiceNumber:[I

    aget v1, v7, v2

    .line 3364
    .local v1, "nSSTIndex":I
    if-gtz v1, :cond_5

    .line 3365
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->NOT_EXIST_IN_SIM:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    goto :goto_0

    .line 3367
    :cond_5
    div-int/lit8 v5, v1, 0x4

    .line 3368
    .restart local v5    # "nbyte":I
    rem-int/lit8 v4, v1, 0x4

    .line 3369
    .restart local v4    # "nbit":I
    if-nez v4, :cond_6

    .line 3370
    const/4 v4, 0x3

    .line 3371
    add-int/lit8 v5, v5, -0x1

    .line 3376
    :goto_2
    mul-int/lit8 v7, v4, 0x2

    const/4 v8, 0x2

    shl-int v0, v8, v7

    .line 3377
    .local v0, "nMask":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSIMServiceStatus SIM nbyte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " nbit: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " nMask: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3378
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    array-length v7, v7

    if-le v7, v5, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    aget-byte v7, v7, v5

    and-int/2addr v7, v0

    if-ne v7, v0, :cond_7

    .line 3379
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->ACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    goto/16 :goto_0

    .line 3373
    .end local v0    # "nMask":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 3381
    .restart local v0    # "nMask":I
    :cond_7
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->INACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    goto/16 :goto_0
.end method

.method public getSpNameInEfSpn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSpNameInEfSpn(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3069
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    return-object v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    return-object v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getVoiceMailNumber "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 784
    const/4 v2, 0x0

    .line 785
    .local v2, "voiceMailWaiting":Z
    const/4 v0, 0x0

    .line 786
    .local v0, "countVoiceMessages":I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    if-eqz v3, :cond_3

    .line 790
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 791
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 793
    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 795
    const/4 v0, -0x1

    .line 797
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " VoiceMessageCount from SIM MWIS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 811
    :cond_1
    :goto_1
    return v0

    .line 790
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 798
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    if-eqz v3, :cond_1

    .line 800
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    aget-byte v3, v3, v4

    and-int/lit8 v1, v3, 0xf

    .line 803
    .local v1, "indicator":I
    const/16 v3, 0xa

    if-ne v1, v3, :cond_5

    .line 805
    const/4 v0, -0x1

    .line 809
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " VoiceMessageCount from SIM CPHS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 806
    :cond_5
    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    .line 807
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 36
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 945
    const/16 v22, 0x0

    .line 947
    .local v22, "isRecordLoadResponse":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 948
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received message "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 949
    const-string/jumbo v4, " while being destroyed. Ignoring."

    .line 948
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 950
    return-void

    .line 953
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2079
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2086
    :cond_1
    :goto_0
    if-eqz v22, :cond_2

    .line 2087
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    .line 939
    :cond_2
    :goto_1
    return-void

    .line 955
    :sswitch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onReady()V

    .line 957
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchEccList()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2081
    :catch_0
    move-exception v18

    .line 2083
    .local v18, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v2, "Exception parsing SIM record"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2086
    if-eqz v22, :cond_2

    .line 2087
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    goto :goto_1

    .line 962
    .end local v18    # "exc":Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onLocked()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2084
    :catchall_0
    move-exception v2

    .line 2086
    if-eqz v22, :cond_3

    .line 2087
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    .line 2084
    :cond_3
    throw v2

    .line 966
    :sswitch_2
    :try_start_4
    const-string/jumbo v2, "handleMessage (EVENT_RADIO_STATE_CHANGED)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 969
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchEccList()V

    goto :goto_0

    .line 976
    :sswitch_3
    const/16 v22, 0x1

    .line 978
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 980
    .local v10, "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 981
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception querying IMSI, Exception:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 985
    :cond_4
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xf

    if-le v2, v4, :cond_6

    .line 990
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid IMSI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 991
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 994
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IMSI: mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IMSI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "xxxxxxx"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 997
    const-string/jumbo v2, "gsm.sim.operator.imsi"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-nez v2, :cond_c

    .line 1004
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_8

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 1006
    .local v29, "mccmncCode":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v5, v4

    :goto_3
    if-ge v2, v5, :cond_8

    aget-object v28, v4, v2

    .line 1007
    .local v28, "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1008
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IMSI: setting1 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1017
    .end local v28    # "mccmnc":Ljava/lang/String;
    .end local v29    # "mccmncCode":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_a

    .line 1022
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1023
    .local v26, "mcc":I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting2 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1031
    .end local v26    # "mcc":I
    :cond_a
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_b

    .line 1032
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update mccmnc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v5, v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateConfiguration(Ljava/lang/String;)V

    .line 1041
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSimImsi:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSimImsi:Ljava/lang/String;

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1046
    const-string/jumbo v2, "SimRecords: mImsiReadyRegistrants.notifyRegistrants"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1002
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_8

    goto/16 :goto_2

    .line 1006
    .restart local v28    # "mccmnc":Ljava/lang/String;
    .restart local v29    # "mccmncCode":Ljava/lang/String;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 1025
    .end local v28    # "mccmnc":Ljava/lang/String;
    .end local v29    # "mccmncCode":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 1026
    .local v15, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1027
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Corrupt IMSI! setting3 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1053
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :sswitch_4
    const/16 v22, 0x1

    .line 1055
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1056
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1058
    .local v13, "data":[B
    const/16 v23, 0x0

    .line 1059
    .local v23, "isValidMbdn":Z
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    .line 1061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF_MBI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1064
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    .line 1067
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/16 v4, 0xff

    if-eq v2, v4, :cond_e

    .line 1068
    const-string/jumbo v2, "Got valid mailbox number for MBDN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1069
    const/16 v23, 0x1

    .line 1071
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isValidMBI:Z

    .line 1077
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1079
    if-eqz v23, :cond_f

    .line 1082
    const-string/jumbo v2, "EVENT_GET_MBI_DONE, to load EF_MBDN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1084
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 1085
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/4 v5, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1084
    const/16 v6, 0x6fc7

    const/16 v7, 0x6fc8

    invoke-virtual {v2, v6, v7, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1087
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1092
    const-string/jumbo v2, "EVENT_GET_MBI_DONE, to load EF_MAILBOX_CPHS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1094
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 1096
    const/16 v4, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1094
    const/16 v5, 0x6f17

    .line 1095
    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    .line 1094
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1099
    :cond_10
    const-string/jumbo v2, "EVENT_GET_MBI_DONE, do nothing"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1100
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 1112
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    .end local v23    # "isValidMbdn":Z
    :sswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1113
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 1114
    const/16 v22, 0x1

    .line 1116
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1118
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_12

    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid or missing EF"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1121
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    if-ne v2, v5, :cond_11

    const-string/jumbo v2, "[MAILBOX]"

    .line 1120
    :goto_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1126
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    .line 1130
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1131
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 1133
    const/16 v4, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1132
    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    .line 1131
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1121
    :cond_11
    const-string/jumbo v2, "[MBDN]"

    goto :goto_5

    .line 1138
    :cond_12
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1140
    .local v3, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1141
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    if-ne v2, v5, :cond_13

    const-string/jumbo v2, " EF[MAILBOX]"

    .line 1140
    :goto_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_14

    .line 1147
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1148
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 1150
    const/16 v4, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1149
    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    .line 1148
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1141
    :cond_13
    const-string/jumbo v2, " EF[MBDN]"

    goto :goto_6

    .line 1155
    :cond_14
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1156
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 1160
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    const/16 v22, 0x1

    .line 1162
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1164
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_15

    .line 1165
    const-string/jumbo v2, "Invalid or missing EF[MSISDN]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1169
    :cond_15
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1171
    .restart local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 1172
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    .line 1175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MSISDN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1187
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    const/16 v22, 0x0

    .line 1188
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1190
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_16

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 1192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1196
    const-string/jumbo v2, "Success to update EF[MSISDN]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1199
    :cond_16
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1200
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    .line 1201
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1200
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1202
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1207
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    const/16 v22, 0x1

    .line 1209
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1210
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1212
    .restart local v13    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF_MWIS : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1214
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_17

    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EVENT_GET_MWIS_DONE exception = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1216
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1215
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1220
    :cond_17
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xff

    if-ne v2, v4, :cond_18

    .line 1221
    const-string/jumbo v2, "SIMRecords: Uninitialized record MWIS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1225
    :cond_18
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    goto/16 :goto_0

    .line 1229
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_9
    const/16 v22, 0x1

    .line 1231
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1232
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1234
    .restart local v13    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF_CPHS_MWI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1236
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_19

    .line 1237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE exception = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1238
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1237
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1242
    :cond_19
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    goto/16 :goto_0

    .line 1246
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_a
    const/16 v22, 0x1

    .line 1248
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1249
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1251
    .restart local v13    # "data":[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1257
    array-length v2, v13

    const/4 v4, 0x0

    invoke-static {v13, v4, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->parseIccIdToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 1260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "iccid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1267
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_b
    const/16 v22, 0x1

    .line 1269
    :try_start_7
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1270
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1272
    .restart local v13    # "data":[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_21

    .line 1304
    :try_start_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1d

    .line 1305
    :cond_1a
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_1b

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 1307
    .restart local v29    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mccmncCode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1308
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v5, v4

    :goto_8
    if-ge v2, v5, :cond_1b

    aget-object v28, v4, v2

    .line 1309
    .restart local v28    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1310
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting6 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1317
    .end local v28    # "mccmnc":Ljava/lang/String;
    .end local v29    # "mccmncCode":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-nez v2, :cond_1f

    .line 1318
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_20

    .line 1320
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1322
    .restart local v26    # "mcc":I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting7 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1334
    .end local v26    # "mcc":I
    :cond_1c
    :goto_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_1

    .line 1337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update mccmnc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v5, v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateConfiguration(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1304
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_1a

    .line 1305
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1b

    goto/16 :goto_7

    .line 1308
    .restart local v28    # "mccmnc":Ljava/lang/String;
    .restart local v29    # "mccmncCode":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 1317
    .end local v28    # "mccmnc":Ljava/lang/String;
    .end local v29    # "mccmncCode":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1c

    goto/16 :goto_9

    .line 1324
    :catch_2
    move-exception v15

    .line 1325
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1330
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_20
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_a

    .line 1276
    :cond_21
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF_AD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1278
    array-length v2, v13

    const/4 v4, 0x3

    if-ge v2, v4, :cond_29

    .line 1279
    const-string/jumbo v2, "Corrupt AD data on SIM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1304
    :try_start_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_25

    .line 1305
    :cond_22
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_23

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 1307
    .restart local v29    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mccmncCode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1308
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v5, v4

    :goto_c
    if-ge v2, v5, :cond_23

    aget-object v28, v4, v2

    .line 1309
    .restart local v28    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1310
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting6 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1317
    .end local v28    # "mccmnc":Ljava/lang/String;
    .end local v29    # "mccmncCode":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-nez v2, :cond_27

    .line 1318
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v2, :cond_28

    .line 1320
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1322
    .restart local v26    # "mcc":I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting7 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1334
    .end local v26    # "mcc":I
    :cond_24
    :goto_e
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_1

    .line 1337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update mccmnc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v5, v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateConfiguration(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1304
    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_22

    .line 1305
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_23

    goto/16 :goto_b

    .line 1308
    .restart local v28    # "mccmnc":Ljava/lang/String;
    .restart local v29    # "mccmncCode":Ljava/lang/String;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 1317
    .end local v28    # "mccmnc":Ljava/lang/String;
    .end local v29    # "mccmncCode":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_24

    goto/16 :goto_d

    .line 1324
    :catch_3
    move-exception v15

    .line 1325
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1330
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_28
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_e

    .line 1284
    :cond_29
    const/4 v2, 0x0

    :try_start_f
    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2a

    const/4 v2, 0x2

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2a

    .line 1287
    const-string/jumbo v2, "SIMRecords: Cipher is enable"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1291
    :cond_2a
    array-length v2, v13

    const/4 v4, 0x3

    if-ne v2, v4, :cond_32

    .line 1292
    const-string/jumbo v2, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1304
    :try_start_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2e

    .line 1305
    :cond_2b
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_2c

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 1307
    .restart local v29    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mccmncCode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1308
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v5, v4

    :goto_10
    if-ge v2, v5, :cond_2c

    aget-object v28, v4, v2

    .line 1309
    .restart local v28    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1310
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting6 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1317
    .end local v28    # "mccmnc":Ljava/lang/String;
    .end local v29    # "mccmncCode":Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-nez v2, :cond_30

    .line 1318
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v2, :cond_31

    .line 1320
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1322
    .restart local v26    # "mcc":I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting7 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1334
    .end local v26    # "mcc":I
    :cond_2d
    :goto_12
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_1

    .line 1337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update mccmnc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v5, v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateConfiguration(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1304
    :cond_2e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_2b

    .line 1305
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2c

    goto/16 :goto_f

    .line 1308
    .restart local v28    # "mccmnc":Ljava/lang/String;
    .restart local v29    # "mccmncCode":Ljava/lang/String;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 1317
    .end local v28    # "mccmnc":Ljava/lang/String;
    .end local v29    # "mccmncCode":Ljava/lang/String;
    :cond_30
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2d

    goto/16 :goto_11

    .line 1324
    :catch_4
    move-exception v15

    .line 1325
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1330
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_31
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_12

    .line 1296
    :cond_32
    const/4 v2, 0x3

    :try_start_13
    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting4 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1299
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/16 v4, 0xf

    if-ne v2, v4, :cond_33

    .line 1300
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting5 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1304
    :cond_33
    :try_start_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_37

    .line 1305
    :cond_34
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_35

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 1307
    .restart local v29    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mccmncCode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1308
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v5, v4

    :goto_14
    if-ge v2, v5, :cond_35

    aget-object v28, v4, v2

    .line 1309
    .restart local v28    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1310
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting6 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1317
    .end local v28    # "mccmnc":Ljava/lang/String;
    .end local v29    # "mccmncCode":Ljava/lang/String;
    :cond_35
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-nez v2, :cond_39

    .line 1318
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v2, :cond_3a

    .line 1320
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1322
    .restart local v26    # "mcc":I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting7 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 1334
    .end local v26    # "mcc":I
    :cond_36
    :goto_16
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_1

    .line 1337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update mccmnc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v5, v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateConfiguration(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1304
    :cond_37
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_34

    .line 1305
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_35

    goto/16 :goto_13

    .line 1308
    .restart local v28    # "mccmnc":Ljava/lang/String;
    .restart local v29    # "mccmncCode":Ljava/lang/String;
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14

    .line 1317
    .end local v28    # "mccmnc":Ljava/lang/String;
    .end local v29    # "mccmncCode":Ljava/lang/String;
    :cond_39
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_36

    goto/16 :goto_15

    .line 1324
    :catch_5
    move-exception v15

    .line 1325
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1330
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_3a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1303
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :catchall_1
    move-exception v2

    .line 1304
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3f

    .line 1305
    :cond_3b
    :goto_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_3c

    .line 1306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 1307
    .restart local v29    # "mccmncCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mccmncCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1308
    sget-object v5, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_18
    if-ge v4, v6, :cond_3c

    aget-object v28, v5, v4

    .line 1309
    .restart local v28    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 1310
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setting6 mMncLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1317
    .end local v28    # "mccmnc":Ljava/lang/String;
    .end local v29    # "mccmncCode":Ljava/lang/String;
    :cond_3c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-nez v4, :cond_41

    .line 1318
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz v4, :cond_42

    .line 1320
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1322
    .restart local v26    # "mcc":I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setting7 mMncLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1334
    .end local v26    # "mcc":I
    :cond_3d
    :goto_1a
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_3e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_3e

    .line 1337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update mccmnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v5, v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateConfiguration(Ljava/lang/String;)V

    .line 1303
    :cond_3e
    throw v2

    .line 1304
    :cond_3f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_3b

    .line 1305
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3c

    goto/16 :goto_17

    .line 1308
    .restart local v28    # "mccmnc":Ljava/lang/String;
    .restart local v29    # "mccmncCode":Ljava/lang/String;
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_18

    .line 1317
    .end local v28    # "mccmnc":Ljava/lang/String;
    .end local v29    # "mccmncCode":Ljava/lang/String;
    :cond_41
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3d

    goto/16 :goto_19

    .line 1324
    :catch_6
    move-exception v15

    .line 1325
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Corrupt IMSI! setting8 mMncLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1330
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_42
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MNC length not present in EF_AD setting9 mMncLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1349
    :sswitch_c
    const-string/jumbo v2, "EF_SPN loaded and try to extract: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1351
    const/16 v22, 0x1

    .line 1352
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1355
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    if-eqz v10, :cond_45

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_45

    .line 1356
    const-string/jumbo v2, "getSpnFsm, Got data from EF_SPN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1357
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1358
    .restart local v13    # "data":[B
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 1361
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    const/16 v4, 0xff

    if-ne v2, v4, :cond_43

    .line 1362
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 1365
    :cond_43
    array-length v2, v13

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x1

    invoke-static {v13, v4, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 1366
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    .line 1367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    if-eqz v2, :cond_44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1368
    const-string/jumbo v2, "set spNameInEfSpn to null because parsing result is empty"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1369
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    .line 1372
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Load EF_SPN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1373
    const-string/jumbo v4, " spnDisplayCondition: "

    .line 1372
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1373
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 1372
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1376
    .end local v13    # "data":[B
    :cond_45
    const-string/jumbo v2, ": read spn fail!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1379
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    goto/16 :goto_0

    .line 1385
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_d
    const/16 v22, 0x1

    .line 1387
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1388
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1390
    .restart local v13    # "data":[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF_CFF_CPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1395
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    .line 1400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    move-result v2

    if-eqz v2, :cond_46

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    if-eqz v2, :cond_46

    .line 1407
    const-string/jumbo v2, "EVENT_GET_CFF_DONE: EF_CFIS is valid, ignoring EF_CFF_CPHS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1403
    :cond_46
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0xa

    if-ne v2, v4, :cond_47

    const/4 v2, 0x1

    .line 1402
    :goto_1b
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    .line 1405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1403
    :cond_47
    const/4 v2, 0x0

    goto :goto_1b

    .line 1412
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_e
    const/16 v22, 0x1

    .line 1414
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1415
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1417
    .restart local v13    # "data":[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1421
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_0

    .line 1425
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1426
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 1427
    const-string/jumbo v2, "update failed. "

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1432
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    const/16 v22, 0x1

    .line 1434
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1439
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1444
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseEFpnn(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1461
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_11
    const/16 v22, 0x1

    .line 1463
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1464
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1467
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1471
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    const-string/jumbo v2, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "marked read: sms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1476
    :sswitch_13
    const/16 v22, 0x0

    .line 1478
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1480
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [I

    .line 1482
    .local v20, "index":[I
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_48

    move-object/from16 v0, v20

    array-length v2, v0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_49

    .line 1483
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error on SMS_ON_SIM with exp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1484
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1483
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1484
    const-string/jumbo v4, " length "

    .line 1483
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1484
    move-object/from16 v0, v20

    array-length v4, v0

    .line 1483
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1486
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "READ EF_SMS RECORD index="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget v4, v20, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v4, 0x0

    aget v4, v20, v4

    .line 1488
    const/16 v5, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1487
    const/16 v6, 0x6f3c

    invoke-virtual {v2, v6, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1493
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "index":[I
    :sswitch_14
    const/16 v22, 0x0

    .line 1494
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1495
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4a

    .line 1496
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSms([B)V

    goto/16 :goto_0

    .line 1498
    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error on GET_SMS with exp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1502
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_15
    const/16 v22, 0x1

    .line 1504
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1505
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1507
    .restart local v13    # "data":[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1511
    new-instance v2, Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-direct {v2, v13}, Lcom/android/internal/telephony/uicc/UsimServiceTable;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    .line 1512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SST: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1514
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSST:[B

    .line 1515
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchMwisRecords()V

    .line 1516
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchPnnAndOpl()V

    .line 1517
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSpn()V

    .line 1518
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSmsp()V

    .line 1519
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchGbaRecords()V

    goto/16 :goto_0

    .line 1524
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_16
    const/16 v22, 0x1

    .line 1526
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1528
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1532
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    .line 1534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "iCPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1537
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isValidMBI:Z

    if-nez v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1538
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1539
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 1541
    const/16 v4, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1539
    const/16 v5, 0x6f17

    .line 1540
    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    .line 1539
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1547
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_17
    const/16 v22, 0x0

    .line 1548
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1550
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EVENT_SET_MBDN_DONE ex:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1551
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4b

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 1556
    :cond_4b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1557
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    .restart local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/Message;

    .line 1567
    .local v32, "onCphsCompleted":Landroid/os/Message;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4c

    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_4c

    .line 1568
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    .line 1569
    const/4 v4, 0x0

    .line 1568
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1570
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1572
    const-string/jumbo v2, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1574
    const/16 v32, 0x0

    .line 1577
    .end local v32    # "onCphsCompleted":Landroid/os/Message;
    :cond_4c
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 1579
    const/16 v4, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1578
    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1577
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1582
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_4d
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1583
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v33

    .line 1584
    .local v33, "resource":Landroid/content/res/Resources;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4e

    const v2, 0x112008f

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1588
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    .line 1589
    new-instance v4, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    .line 1590
    const-string/jumbo v5, "Update SIM voice mailbox error"

    .line 1589
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 1588
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1595
    :goto_1c
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1592
    :cond_4e
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    .line 1593
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1592
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_1c

    .line 1600
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v33    # "resource":Landroid/content/res/Resources;
    :sswitch_18
    const/16 v22, 0x0

    .line 1601
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1602
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4f

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 1609
    :goto_1d
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1610
    const-string/jumbo v2, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1611
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    .line 1612
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1611
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1613
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1606
    :cond_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set CPHS MailBox with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1607
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1606
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1d

    .line 1617
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_19
    const/16 v22, 0x0

    .line 1618
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1619
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sim REFRESH with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1620
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1621
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_0

    .line 1625
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_1a
    const/16 v22, 0x1

    .line 1627
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1628
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1630
    .restart local v13    # "data":[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF_CFIS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1636
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1637
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 1640
    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_50

    const/4 v2, 0x1

    :goto_1e
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    .line 1641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF_CFIS: callForwardingEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1640
    :cond_50
    const/4 v2, 0x0

    goto :goto_1e

    .line 1645
    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF_CFIS: invalid data="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1651
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_1b
    const-string/jumbo v2, "handleMessage (EVENT_GET_SIM_ECC_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1653
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1654
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_52

    .line 1655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Get SIM ecc with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1660
    :cond_52
    const-string/jumbo v2, "112,911"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 1661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Reset mEfEcc to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1663
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1664
    .restart local v13    # "data":[B
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1f
    add-int/lit8 v2, v19, 0x2

    array-length v4, v13

    if-ge v2, v4, :cond_55

    .line 1666
    const/4 v2, 0x3

    move/from16 v0, v19

    invoke-static {v13, v0, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v16

    .line 1669
    .local v16, "eccNum":Ljava/lang/String;
    if-eqz v16, :cond_53

    const-string/jumbo v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1673
    :cond_53
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 1664
    add-int/lit8 v19, v19, 0x3

    goto :goto_1f

    .line 1669
    :cond_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 1670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    goto :goto_20

    .line 1676
    .end local v16    # "eccNum":Ljava/lang/String;
    :cond_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SIM mEfEcc is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->SIM_RECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    aget-object v2, v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1681
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    .end local v19    # "i":I
    :sswitch_1c
    const-string/jumbo v2, "handleMessage (EVENT_GET_USIM_ECC_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1683
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1684
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_56

    .line 1685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Get USIM ecc with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1689
    :cond_56
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/ArrayList;

    .line 1690
    .local v17, "eccRecords":Ljava/util/ArrayList;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1693
    .local v12, "count":I
    const-string/jumbo v2, "112,911"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 1694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Reset mEfEcc to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1696
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_21
    move/from16 v0, v19

    if-ge v0, v12, :cond_5a

    .line 1697
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 1698
    .restart local v13    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USIM EF_ECC record "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1700
    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-static {v13, v2, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v16

    .line 1701
    .restart local v16    # "eccNum":Ljava/lang/String;
    if-eqz v16, :cond_57

    const-string/jumbo v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1696
    :cond_57
    :goto_22
    add-int/lit8 v19, v19, 0x1

    goto :goto_21

    .line 1702
    :cond_58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 1703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 1705
    :cond_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    goto :goto_22

    .line 1709
    .end local v13    # "data":[B
    .end local v16    # "eccNum":Ljava/lang/String;
    :cond_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USIM mEfEcc is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->SIM_RECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    aget-object v2, v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1715
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "count":I
    .end local v17    # "eccRecords":Ljava/util/ArrayList;
    .end local v19    # "i":I
    :sswitch_1d
    const/16 v22, 0x1

    .line 1717
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1719
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5b

    .line 1720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in fetching EF_CSP data "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1724
    :cond_5b
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1726
    .restart local v13    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF_CSP: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1727
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleEfCspData([B)V

    goto/16 :goto_0

    .line 1731
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_1e
    const/16 v22, 0x1

    .line 1733
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1734
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1736
    .restart local v13    # "data":[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5c

    .line 1737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in get GID1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1738
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    goto/16 :goto_0

    .line 1741
    :cond_5c
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 1742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GID1: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1747
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_1f
    const/16 v22, 0x1

    .line 1749
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1750
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1752
    .restart local v13    # "data":[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5d

    .line 1753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in get GID2 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1754
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    goto/16 :goto_0

    .line 1757
    :cond_5d
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    .line 1758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GID2: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1763
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_20
    const/16 v22, 0x1

    .line 1766
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1767
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1770
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseEFopl(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1774
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_21
    const-string/jumbo v2, "handleMessage (EVENT_GET_CPHSONS_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1775
    const/16 v22, 0x1

    .line 1777
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1778
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    if-eqz v10, :cond_1

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1779
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1781
    .restart local v13    # "data":[B
    array-length v2, v13

    const/4 v4, 0x0

    .line 1780
    invoke-static {v13, v4, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 1782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Load EF_SPN_CPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->cphsOnsl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1787
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_22
    const-string/jumbo v2, "handleMessage (EVENT_GET_SHORT_CPHSONS_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1788
    const/16 v22, 0x1

    .line 1790
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1791
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    if-eqz v10, :cond_1

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1792
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1794
    .restart local v13    # "data":[B
    array-length v2, v13

    const/4 v4, 0x0

    .line 1793
    invoke-static {v13, v4, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->cphsOnss:Ljava/lang/String;

    .line 1796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->cphsOnss:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1800
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_23
    const-string/jumbo v2, "handleMessage (EVENT_MELOCK_CHANGED)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1801
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1803
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    if-eqz v10, :cond_1

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1804
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, [I

    .line 1806
    .local v34, "simMelockEvent":[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sim melock event = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget v4, v34, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1808
    new-instance v25, Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;

    const/4 v2, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;)V

    .line 1810
    .local v25, "listener":Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;
    const/4 v2, 0x0

    aget v2, v34, v2

    if-nez v2, :cond_1

    .line 1811
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1812
    const-string/jumbo v4, "Unlock Phone"

    .line 1811
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1813
    const-string/jumbo v4, "Please restart the phone now since unlock setting has changed."

    .line 1811
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1814
    const-string/jumbo v4, "OK"

    .line 1811
    move-object/from16 v0, v25

    invoke-virtual {v2, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 1817
    .local v9, "alertDialog":Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1818
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1820
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d3

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 1821
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1827
    .end local v9    # "alertDialog":Landroid/app/AlertDialog;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v25    # "listener":Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;
    .end local v34    # "simMelockEvent":[I
    :sswitch_24
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1828
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    if-eqz v10, :cond_1

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1829
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->processEfCspPlmnModeBitUrc(I)V

    goto/16 :goto_0

    .line 1835
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_25
    const-string/jumbo v2, "handleMessage (EVENT_GET_RAT_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1836
    const/16 v22, 0x1

    .line 1838
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1839
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRatLoaded:Z

    .line 1840
    if-eqz v10, :cond_5e

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5e

    .line 1841
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRat:[B

    .line 1842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "load EF_RAT complete: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRat:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1843
    const/16 v2, 0x200

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->boradcastEfRatContentNotify(I)V

    goto/16 :goto_0

    .line 1845
    :cond_5e
    const-string/jumbo v2, "load EF_RAT fail"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1846
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRat:[B

    .line 1847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v4, :cond_5f

    .line 1848
    const/16 v2, 0x100

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->boradcastEfRatContentNotify(I)V

    goto/16 :goto_0

    .line 1850
    :cond_5f
    const/16 v2, 0x200

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->boradcastEfRatContentNotify(I)V

    goto/16 :goto_0

    .line 1860
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_26
    const-string/jumbo v2, "[sume receive response message"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1861
    const/16 v22, 0x1

    .line 1863
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1864
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    if-eqz v10, :cond_60

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_60

    .line 1865
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1866
    .restart local v13    # "data":[B
    if-eqz v13, :cond_1

    array-length v2, v13

    const/4 v4, 0x2

    if-lt v2, v4, :cond_1

    .line 1867
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v35, v0

    .line 1868
    .local v35, "tag":I
    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v24, v0

    .line 1869
    .local v24, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[sume tag = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", len = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1870
    const/4 v2, 0x2

    move/from16 v0, v24

    invoke-static {v13, v2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    .line 1871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[sume menu title is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1874
    .end local v13    # "data":[B
    .end local v24    # "len":I
    .end local v35    # "tag":I
    :cond_60
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_61

    .line 1875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[sume exception in AsyncResult: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1879
    :goto_23
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    goto/16 :goto_0

    .line 1877
    :cond_61
    const-string/jumbo v2, "[sume null AsyncResult"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_23

    .line 1885
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/ITelephonyExt;->isSetLanguageBySIM()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1886
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchLanguageIndicator()V

    .line 1888
    :cond_62
    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 1890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1893
    :sswitch_28
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1894
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1896
    .restart local v13    # "data":[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_63

    .line 1897
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF_LI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1898
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 1897
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1899
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    .line 1901
    :cond_63
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onLanguageFileLoaded()V

    goto/16 :goto_0

    .line 1904
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_29
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1905
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1907
    .restart local v13    # "data":[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_64

    .line 1908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF_ELP: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1909
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 1908
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1910
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfELP:[B

    .line 1912
    :cond_64
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onLanguageFileLoaded()V

    goto/16 :goto_0

    .line 1916
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_2a
    const/16 v22, 0x1

    .line 1918
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1919
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1921
    .restart local v13    # "data":[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF_PSISMSC: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1927
    if-eqz v13, :cond_1

    .line 1928
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPsismsc:[B

    goto/16 :goto_0

    .line 1933
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_2b
    const/16 v22, 0x1

    .line 1935
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1936
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1938
    .restart local v13    # "data":[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF_SMSP: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1944
    if-eqz v13, :cond_1

    .line 1945
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfSmsp:[B

    goto/16 :goto_0

    .line 1950
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_2c
    const/16 v22, 0x1

    .line 1952
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1954
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_65

    .line 1955
    iget-object v13, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    .line 1956
    .restart local v13    # "data":[B
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGbabp:Ljava/lang/String;

    .line 1958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF_GBABP="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGbabp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1960
    .end local v13    # "data":[B
    :cond_65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error on GET_GBABP with exp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1965
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_2d
    const/16 v22, 0x1

    .line 1967
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1969
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_66

    .line 1970
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfGbanlList:Ljava/util/ArrayList;

    .line 1971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GET_GBANL record count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfGbanlList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1973
    :cond_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error on GET_GBANL with exp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1977
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_2e
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1979
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    if-eqz v10, :cond_1

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1981
    iget-object v11, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    .line 1982
    .local v11, "cfuResult":[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handle EVENT_CFU_IND, setVoiceCallForwardingFlag:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget v4, v11, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1983
    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_67

    const/4 v2, 0x1

    :goto_24
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_67
    const/4 v2, 0x0

    goto :goto_24

    .line 1988
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "cfuResult":[I
    :sswitch_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage (EVENT_IMSI_REFRESH_QUERY) mImsi= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v4

    .line 1990
    const/16 v5, 0xd5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1989
    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1993
    :sswitch_30
    const-string/jumbo v2, "handleMessage (EVENT_IMSI_REFRESH_QUERY_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1994
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1995
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_68

    .line 1996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception querying IMSI, Exception:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2000
    :cond_68
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 2003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_6a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_69

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xf

    if-le v2, v4, :cond_6a

    .line 2004
    :cond_69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid IMSI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 2005
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 2007
    :cond_6a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IMSI: mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IMSI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "xxxxxxx"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2009
    const-string/jumbo v2, "gsm.sim.operator.imsi"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-nez v2, :cond_71

    .line 2012
    :cond_6b
    :goto_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_6c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_6c

    .line 2013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 2014
    .local v31, "mccmncRefresh":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v5, v4

    :goto_26
    if-ge v2, v5, :cond_6c

    aget-object v30, v4, v2

    .line 2015
    .local v30, "mccmncR":Ljava/lang/String;
    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 2016
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IMSI: setting1 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2022
    .end local v30    # "mccmncR":Ljava/lang/String;
    .end local v31    # "mccmncRefresh":Ljava/lang/String;
    :cond_6c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_6d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6e

    .line 2026
    :cond_6d
    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2027
    .local v27, "mccR":I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2028
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting2 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 2035
    .end local v27    # "mccR":I
    :cond_6e
    :goto_27
    :try_start_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_6f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6f

    .line 2036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update mccmnc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v5, v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateConfiguration(Ljava/lang/String;)V

    .line 2042
    :cond_6f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSimImsi:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 2043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSimImsi:Ljava/lang/String;

    .line 2044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2045
    const-string/jumbo v2, "SimRecords: mImsiReadyRegistrants.notifyRegistrants"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2048
    :cond_70
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    if-eqz v2, :cond_1

    .line 2049
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    goto/16 :goto_0

    .line 2011
    :cond_71
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6c

    goto/16 :goto_25

    .line 2014
    .restart local v30    # "mccmncR":Ljava/lang/String;
    .restart local v31    # "mccmncRefresh":Ljava/lang/String;
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_26

    .line 2029
    .end local v30    # "mccmncR":Ljava/lang/String;
    .end local v31    # "mccmncRefresh":Ljava/lang/String;
    :catch_7
    move-exception v15

    .line 2030
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2031
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Corrupt IMSI! setting3 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 2054
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :sswitch_31
    const/16 v14, 0x3e8

    .line 2055
    .local v14, "delayMills":I
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords;->ICCRECORD_PROPERTY_ICCID:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    aget-object v2, v2, v4

    const-string/jumbo v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 2057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received EVENT_GET_ICCID, mSlotId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", mIccId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 2060
    const/16 v2, 0x65

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2062
    :cond_73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    const-string/jumbo v4, "N/A"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 2063
    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 2065
    :cond_74
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2073
    .end local v14    # "delayMills":I
    :sswitch_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isPhbReady()Z

    move-result v21

    .line 2074
    .local v21, "isReady":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[EVENT_DELAYED_SEND_PHB_CHANGE] isReady : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2075
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->broadcastPhbStateChangedIntent(Z)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_0

    .line 953
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_a
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_b
        0xa -> :sswitch_6
        0xb -> :sswitch_5
        0xc -> :sswitch_c
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x11 -> :sswitch_15
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_17
        0x15 -> :sswitch_13
        0x16 -> :sswitch_14
        0x18 -> :sswitch_d
        0x19 -> :sswitch_18
        0x1a -> :sswitch_16
        0x1e -> :sswitch_7
        0x1f -> :sswitch_19
        0x20 -> :sswitch_1a
        0x21 -> :sswitch_1d
        0x22 -> :sswitch_1e
        0x23 -> :sswitch_1
        0x24 -> :sswitch_1f
        0x29 -> :sswitch_27
        0x2a -> :sswitch_28
        0x2b -> :sswitch_29
        0x35 -> :sswitch_26
        0x65 -> :sswitch_31
        0x66 -> :sswitch_1b
        0x67 -> :sswitch_1c
        0x68 -> :sswitch_20
        0x69 -> :sswitch_21
        0x6a -> :sswitch_22
        0xc8 -> :sswitch_32
        0xc9 -> :sswitch_2
        0xcb -> :sswitch_24
        0xcc -> :sswitch_25
        0xcf -> :sswitch_2a
        0xd0 -> :sswitch_2b
        0xd1 -> :sswitch_2c
        0xd2 -> :sswitch_2d
        0xd3 -> :sswitch_2e
        0xd4 -> :sswitch_2f
        0xd5 -> :sswitch_30
        0x190 -> :sswitch_23
    .end sparse-switch
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 2997
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    return v0
.end method

.method public isHPlmn(Ljava/lang/String;)Z
    .locals 2
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 3684
    const/4 v0, 0x0

    .line 3686
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 3688
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v0, :cond_0

    .line 3689
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isHPlmn(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 3691
    :cond_0
    const-string/jumbo v1, "can\'t get sst"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3692
    const/4 v1, 0x0

    return v1
.end method

.method public isOperatorMvnoForEfPnn()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3106
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3107
    .local v0, "MCCMNC":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getFirstFullNameInEfPnn()Ljava/lang/String;

    move-result-object v1

    .line 3108
    .local v1, "PNN":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOperatorMvnoForEfPnn(): mccmnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pnn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3109
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3110
    return-object v1

    .line 3111
    :cond_0
    return-object v4
.end method

.method public isOperatorMvnoForImsi()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3073
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v3

    .line 3074
    .local v3, "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 3075
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v5

    .line 3074
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/SpnOverride;->isOperatorMvnoForImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3076
    .local v0, "imsiPattern":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3078
    .local v1, "mccmnc":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOperatorMvnoForImsi(), imsiPattern: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3079
    const-string/jumbo v5, ", mccmnc: "

    .line 3078
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3081
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 3082
    :cond_0
    return-object v6

    .line 3084
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3086
    .local v2, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOperatorMvnoForImsi(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3088
    return-object v2
.end method

.method public isPhbReady()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3937
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPhbReady(): cached mPhbReady = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "true"

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3938
    const-string/jumbo v4, "false"

    .line 3939
    .local v4, "strPhbReady":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 3940
    .local v2, "strAllSimState":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 3941
    .local v3, "strCurSimState":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3942
    .local v0, "isSimLocked":Z
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    .line 3944
    .local v1, "phoneId":I
    sget-object v6, Lcom/android/internal/telephony/uicc/SIMRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v7

    aget-object v6, v6, v7

    const-string/jumbo v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3945
    const-string/jumbo v6, "gsm.sim.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3947
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 3948
    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3949
    .local v5, "values":[Ljava/lang/String;
    if-ltz v1, :cond_0

    array-length v6, v5

    if-ge v1, v6, :cond_0

    aget-object v6, v5, v1

    if-eqz v6, :cond_0

    .line 3950
    aget-object v3, v5, v1

    .line 3954
    .end local v5    # "values":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "NETWORK_LOCKED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "PIN_REQUIRED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3956
    .end local v0    # "isSimLocked":Z
    :goto_1
    const-string/jumbo v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v0, :cond_3

    .line 3957
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    .line 3961
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPhbReady(): mPhbReady = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "true"

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", strCurSimState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3962
    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    return v6

    .line 3937
    .end local v1    # "phoneId":I
    .end local v2    # "strAllSimState":Ljava/lang/String;
    .end local v3    # "strCurSimState":Ljava/lang/String;
    .end local v4    # "strPhbReady":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "false"

    goto/16 :goto_0

    .line 3954
    .restart local v0    # "isSimLocked":Z
    .restart local v1    # "phoneId":I
    .restart local v2    # "strAllSimState":Ljava/lang/String;
    .restart local v3    # "strCurSimState":Ljava/lang/String;
    .restart local v4    # "strPhbReady":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 3959
    .end local v0    # "isSimLocked":Z
    :cond_3
    iput-boolean v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    goto :goto_2

    .line 3961
    :cond_4
    const-string/jumbo v6, "false"

    goto :goto_3
.end method

.method public isRadioAvailable()Z
    .locals 1

    .prologue
    .line 3976
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 3977
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    return v0

    .line 3979
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2965
    const-string/jumbo v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2973
    const-string/jumbo v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2987
    const-string/jumbo v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    return-void
.end method

.method protected logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 2980
    const-string/jumbo v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2977
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2432
    const-string/jumbo v6, "record load complete"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2434
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 2435
    .local v4, "resource":Landroid/content/res/Resources;
    const v6, 0x1120095

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2436
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSimLanguage([B[B)V

    .line 2441
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v6, v7, :cond_0

    .line 2442
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v6, v7, :cond_2

    .line 2447
    :cond_0
    iput-boolean v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 2449
    return-void

    .line 2438
    :cond_1
    const-string/jumbo v6, "Not using EF LI/EF PL"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2444
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v6, v7, :cond_0

    .line 2454
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 2455
    .local v3, "operator":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2457
    const-string/jumbo v7, "\'"

    .line 2456
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2458
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update icc_operator_numeric="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2459
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2460
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v7

    .line 2459
    invoke-virtual {v6, v7, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 2461
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    .line 2462
    .local v5, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    .line 2467
    .end local v5    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAllRecordsLoaded set mcc imsi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2476
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2481
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7, v0}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 2487
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 2488
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 2490
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 2491
    new-instance v7, Landroid/os/AsyncResult;

    invoke-direct {v7, v9, v9, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2490
    invoke-virtual {v6, v7}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2494
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "imsi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " operator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2496
    if-eqz v3, :cond_5

    .line 2497
    const/4 v2, 0x0

    .line 2498
    .local v2, "newName":Ljava/lang/String;
    const-string/jumbo v6, "46002"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "46007"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2499
    :cond_3
    const-string/jumbo v3, "46000"

    .line 2501
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v6

    .line 2502
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v7

    .line 2503
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    .line 2501
    invoke-virtual {v6, v7, v3, v9, v8}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2506
    .local v2, "newName":Ljava/lang/String;
    const-string/jumbo v6, "gsm.sim.operator.default-name"

    invoke-virtual {p0, v6, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    .end local v2    # "newName":Ljava/lang/String;
    :cond_5
    return-void

    .line 2464
    :cond_6
    const-string/jumbo v6, "onAllRecordsLoaded empty \'gsm.sim.operator.numeric\' skipping"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2477
    :catch_0
    move-exception v1

    .line 2478
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 2479
    .local v0, "countryCode":Ljava/lang/String;
    const-string/jumbo v6, "SIMRecords: Corrupt IMSI!"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2484
    .end local v0    # "countryCode":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const-string/jumbo v6, "onAllRecordsLoaded empty imsi skipping setting mcc"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 2554
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 2553
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2419
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2422
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    if-eqz v0, :cond_1

    .line 2423
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    .line 2416
    :cond_0
    :goto_0
    return-void

    .line 2424
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    if-gez v0, :cond_0

    .line 2425
    const-string/jumbo v0, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 2426
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .param p1, "fileChanged"    # Z
    .param p2, "fileList"    # [I

    .prologue
    .line 899
    if-eqz p1, :cond_0

    .line 903
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 898
    :cond_0
    return-void
.end method

.method protected resetRecords()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 511
    const-string/jumbo v0, "resetRecords"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 514
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 515
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 516
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting0 mMncLength"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 522
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 523
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 524
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 525
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 526
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    .line 527
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 528
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 532
    const-string/jumbo v0, "SIMRecords: onRadioOffOrNotAvailable set \'gsm.sim.operator.numeric\' to operator=null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update icc_operator_numeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 538
    const-string/jumbo v0, "gsm.sim.operator.imsi"

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string/jumbo v0, "gsm.sim.operator.default-name"

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 509
    return-void
.end method

.method public setEfGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3875
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 3877
    .local v0, "data":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEfGbabp data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3878
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6fd6

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 3874
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x6f40

    .line 622
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    .line 623
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set MSISDN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "xxxxxxx"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 627
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v3

    .line 630
    const/16 v4, 0x1e

    invoke-virtual {p0, v4, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 629
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 618
    return-void
.end method

.method public setPhbReady(Z)V
    .locals 3
    .param p1, "isReady"    # Z

    .prologue
    .line 3966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPhbReady(): isReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v1, "true"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3967
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    if-eq v1, p1, :cond_0

    .line 3968
    if-eqz p1, :cond_2

    const-string/jumbo v0, "true"

    .line 3969
    .local v0, "strPhbReady":Ljava/lang/String;
    :goto_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    .line 3970
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3971
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 3965
    .end local v0    # "strPhbReady":Ljava/lang/String;
    :cond_0
    return-void

    .line 3966
    :cond_1
    const-string/jumbo v1, "false"

    goto :goto_0

    .line 3968
    :cond_2
    const-string/jumbo v0, "false"

    .restart local v0    # "strPhbReady":Ljava/lang/String;
    goto :goto_1
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "dialNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 828
    if-eq p1, v1, :cond_0

    return-void

    .line 830
    :cond_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    .line 832
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 826
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoiceMailNumber, mIsVoiceMailFixed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 675
    const-string/jumbo v2, ", mMailboxIndex "

    .line 674
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 675
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    .line 674
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 675
    const-string/jumbo v2, ", mMailboxIndex "

    .line 674
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 675
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    .line 674
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 677
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 678
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 679
    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmFixedException;

    const-string/jumbo v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmFixedException;-><init>(Ljava/lang/String;)V

    .line 678
    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 680
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 681
    return-void

    .line 684
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    .line 685
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    .line 687
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    .line 691
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 692
    iget v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    .line 693
    const/16 v2, 0x14

    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 691
    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 672
    :goto_0
    return-void

    .line 695
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    const-string/jumbo v0, "setVoiceMailNumber,load EF_MAILBOX_CPHS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 699
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 701
    const/16 v2, 0x19

    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 699
    const/16 v2, 0x6f17

    .line 700
    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    .line 699
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 705
    :cond_2
    const-string/jumbo v0, "setVoiceMailNumber,Update SIM voice mailbox error"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 707
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 708
    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    const-string/jumbo v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 707
    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 709
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 7
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 729
    if-eq p1, v1, :cond_0

    .line 731
    return-void

    .line 735
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    if-eqz v2, :cond_1

    .line 739
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xfe

    .line 740
    if-nez p2, :cond_3

    .line 739
    :goto_0
    or-int/2addr v0, v3

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v2, v1

    .line 743
    if-gez p2, :cond_4

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 751
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 752
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 753
    const/16 v1, 0xe

    const/16 v2, 0x6fca

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 752
    const/16 v1, 0x6fca

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 751
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_5

    .line 758
    const-string/jumbo v0, "[setVoiceMessageWaiting] It is USIM card, skip write CPHS file"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 728
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    .line 740
    goto :goto_0

    .line 748
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    int-to-byte v1, p2

    const/4 v2, 0x1

    aput-byte v1, v0, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 772
    :catch_0
    move-exception v6

    .line 773
    .local v6, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v0, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-virtual {p0, v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 761
    .end local v6    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    if-eqz v0, :cond_2

    .line 763
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v2, v0, 0xf0

    .line 764
    if-nez p2, :cond_6

    const/4 v0, 0x5

    .line 763
    :goto_3
    or-int/2addr v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 765
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 766
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 767
    const/16 v2, 0x6f11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 766
    const/16 v3, 0x6f11

    .line 765
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 764
    :cond_6
    const/16 v0, 0xa

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string/jumbo v1, " mVmConfig"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string/jumbo v1, " mSpnOverride="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "mSpnOverride"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string/jumbo v1, " callForwardingEnabled="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string/jumbo v1, " spnState="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    const-string/jumbo v1, " mCphsInfo="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    const-string/jumbo v1, " mCspPlmnEnabled="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    const-string/jumbo v1, " efMWIS="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    const-string/jumbo v1, " efCPHS_MWI="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    const-string/jumbo v1, " mEfCff="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    const-string/jumbo v1, " mEfCfis="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    const-string/jumbo v1, " getOperatorNumeric="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updatePHBStatus(IZ)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "isSimLocked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4027
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getChildPhoneId()I

    move-result v0

    const-string/jumbo v1, "GSM"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->isRightPhone(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4028
    const-string/jumbo v0, "is not right phone."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4029
    return-void

    .line 4031
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[updatePHBStatus] status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | isSimLocked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4032
    const-string/jumbo v1, " | mPhbReady : "

    .line 4031
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4032
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    .line 4031
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4033
    if-lez p1, :cond_3

    .line 4034
    if-nez p2, :cond_2

    .line 4035
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    if-nez v0, :cond_1

    .line 4036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    .line 4037
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 4026
    :cond_1
    :goto_0
    return-void

    .line 4040
    :cond_2
    const-string/jumbo v0, "phb ready but sim is not ready."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4043
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    if-eqz v0, :cond_1

    .line 4044
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 4045
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    .line 4046
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->broadcastPhbStateChangedIntent(Z)V

    goto :goto_0
.end method
