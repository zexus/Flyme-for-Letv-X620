.class Lcom/android/internal/telephony/cat/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# static fields
.field private static synthetic -com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I = null

.field static final BATTERY_STATE:I = 0xa

.field static final DTTZ_SETTING:I = 0x3

.field static final LANGUAGE_SETTING:I = 0x4

.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field private static final MAX_GSM7_DEFAULT_CHARS:I = 0xef

.field private static final MAX_UCS2_CHARS:I = 0x76

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field static final REFRESH_NAA_INIT:I = 0x3

.field static final REFRESH_NAA_INIT_AND_FILE_CHANGE:I = 0x2

.field static final REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE:I = 0x0

.field static final REFRESH_UICC_RESET:I = 0x4

.field private static sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;


# instance fields
.field private mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

.field private mContext:Landroid/content/Context;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

.field tlvIndex:I


# direct methods
.method private static synthetic -getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ACTIVATE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_28

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CALLCTRL_RSP_MSG:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_27

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_26

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DECLARE_SERVICE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_25

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_24

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_23

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_22

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_FRAME_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_21

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_20

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1f

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_READER_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1e

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_SERVICE_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1d

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1c

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1b

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1a

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_19

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PERFORM_CARD_APDU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_18

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_17

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLLING_OFF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_16

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_15

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_OFF_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_ON_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_13

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_12

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_11

    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_10

    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RETRIEVE_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_f

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT_COMMAND:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_e

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_d

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_c

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_b

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_a

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_9

    :goto_1f
    :try_start_20
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_8

    :goto_20
    :try_start_21
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SERVICE_SEARCH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_7

    :goto_21
    :try_start_22
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_FRAME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_6

    :goto_22
    :try_start_23
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_5

    :goto_23
    :try_start_24
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_4

    :goto_24
    :try_start_25
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_3

    :goto_25
    :try_start_26
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_2

    :goto_26
    :try_start_27
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SUBMIT_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_1

    :goto_27
    :try_start_28
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->TIMER_MANAGEMENT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_0

    :goto_28
    sput-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_28

    :catch_1
    move-exception v1

    goto :goto_27

    :catch_2
    move-exception v1

    goto :goto_26

    :catch_3
    move-exception v1

    goto :goto_25

    :catch_4
    move-exception v1

    goto :goto_24

    :catch_5
    move-exception v1

    goto :goto_23

    :catch_6
    move-exception v1

    goto :goto_22

    :catch_7
    move-exception v1

    goto :goto_21

    :catch_8
    move-exception v1

    goto :goto_20

    :catch_9
    move-exception v1

    goto :goto_1f

    :catch_a
    move-exception v1

    goto :goto_1e

    :catch_b
    move-exception v1

    goto/16 :goto_1d

    :catch_c
    move-exception v1

    goto/16 :goto_1c

    :catch_d
    move-exception v1

    goto/16 :goto_1b

    :catch_e
    move-exception v1

    goto/16 :goto_1a

    :catch_f
    move-exception v1

    goto/16 :goto_19

    :catch_10
    move-exception v1

    goto/16 :goto_18

    :catch_11
    move-exception v1

    goto/16 :goto_17

    :catch_12
    move-exception v1

    goto/16 :goto_16

    :catch_13
    move-exception v1

    goto/16 :goto_15

    :catch_14
    move-exception v1

    goto/16 :goto_14

    :catch_15
    move-exception v1

    goto/16 :goto_13

    :catch_16
    move-exception v1

    goto/16 :goto_12

    :catch_17
    move-exception v1

    goto/16 :goto_11

    :catch_18
    move-exception v1

    goto/16 :goto_10

    :catch_19
    move-exception v1

    goto/16 :goto_f

    :catch_1a
    move-exception v1

    goto/16 :goto_e

    :catch_1b
    move-exception v1

    goto/16 :goto_d

    :catch_1c
    move-exception v1

    goto/16 :goto_c

    :catch_1d
    move-exception v1

    goto/16 :goto_b

    :catch_1e
    move-exception v1

    goto/16 :goto_a

    :catch_1f
    move-exception v1

    goto/16 :goto_9

    :catch_20
    move-exception v1

    goto/16 :goto_8

    :catch_21
    move-exception v1

    goto/16 :goto_7

    :catch_22
    move-exception v1

    goto/16 :goto_6

    :catch_23
    move-exception v1

    goto/16 :goto_5

    :catch_24
    move-exception v1

    goto/16 :goto_4

    :catch_25
    move-exception v1

    goto/16 :goto_3

    :catch_26
    move-exception v1

    goto/16 :goto_2

    :catch_27
    move-exception v1

    goto/16 :goto_1

    :catch_28
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 51
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .param p1, "caller"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 56
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getSlotId()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/android/internal/telephony/cat/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cat/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 127
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V
    .locals 2
    .param p1, "caller"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 56
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    .line 122
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getSlotId()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/android/internal/telephony/cat/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cat/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 124
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method

.method private getAddrIndex(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1335
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1337
    .local v0, "addrIndex":I
    const/4 v2, 0x0

    .line 1338
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1339
    .end local v2    # "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1340
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1341
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1342
    return v0

    .line 1344
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1347
    .end local v2    # "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private getCallingAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 5
    .param p2, "addrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 1434
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1436
    .local v0, "alphaIndex":I
    const/4 v2, 0x0

    .line 1437
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1438
    .end local v2    # "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1439
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1440
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1441
    if-le v0, p2, :cond_0

    .line 1442
    return-object v2

    .line 1444
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1447
    .end local v2    # "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private getCallingAlphaIdIndex(Ljava/util/List;I)I
    .locals 5
    .param p2, "addrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1384
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1386
    .local v0, "alphaIndex":I
    const/4 v2, 0x0

    .line 1387
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1388
    .end local v2    # "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1389
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1390
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1391
    if-le v0, p2, :cond_0

    .line 1392
    return v0

    .line 1394
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1397
    .end local v2    # "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private getCallingIconId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 6
    .param p2, "alpha2Index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v5, 0x0

    .line 1491
    const/4 v3, -0x1

    if-ne v3, p2, :cond_0

    .line 1492
    return-object v5

    .line 1495
    :cond_0
    const/4 v0, 0x0

    .line 1497
    .local v0, "iconIndex":I
    const/4 v2, 0x0

    .line 1498
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1499
    .end local v2    # "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1500
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1501
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1502
    if-le v0, p2, :cond_1

    .line 1503
    return-object v2

    .line 1505
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1508
    .end local v2    # "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_2
    return-object v5
.end method

.method private getConfirmationAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 5
    .param p2, "addrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 1409
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1411
    .local v0, "alphaIndex":I
    const/4 v2, 0x0

    .line 1412
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1413
    .end local v2    # "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1414
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1415
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1416
    if-ge v0, p2, :cond_0

    .line 1417
    return-object v2

    .line 1419
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1422
    .end local v2    # "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private getConfirmationAlphaIdIndex(Ljava/util/List;I)I
    .locals 5
    .param p2, "addrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1359
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1361
    .local v0, "alphaIndex":I
    const/4 v2, 0x0

    .line 1362
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1363
    .end local v2    # "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1364
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1365
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1366
    if-ge v0, p2, :cond_0

    .line 1367
    return v0

    .line 1369
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1372
    .end local v2    # "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private getConfirmationIconId(Ljava/util/List;II)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 7
    .param p2, "alpha1Index"    # I
    .param p3, "alpha2Index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;II)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1462
    if-ne v5, p2, :cond_0

    .line 1463
    return-object v6

    .line 1466
    :cond_0
    const/4 v0, 0x0

    .line 1468
    .local v0, "iconIndex":I
    const/4 v2, 0x0

    .line 1469
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1470
    .end local v2    # "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1471
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1472
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1473
    if-eq v5, p3, :cond_1

    if-ge v0, p3, :cond_2

    .line 1474
    :cond_1
    return-object v2

    .line 1476
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1479
    .end local v2    # "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_3
    return-object v6
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/CommandParamsFactory;
    .locals 3
    .param p0, "caller"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v2, 0x0

    const-class v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 102
    :cond_0
    if-eqz p1, :cond_1

    .line 103
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    monitor-exit v1

    .line 105
    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)Lcom/android/internal/telephony/cat/CommandParamsFactory;
    .locals 3
    .param p0, "caller"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const-class v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    monitor-enter v1

    .line 110
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 114
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 115
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    monitor-exit v1

    .line 118
    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processActivate(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 5
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1309
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string/jumbo v3, "process Activate"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1311
    const/4 v0, 0x0

    .line 1312
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v2, 0x0

    .line 1314
    .local v2, "target":I
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ACTIVATE_DESCRIPTOR:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 1315
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 1317
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTarget(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1324
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/cat/ActivateParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/ActivateParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;I)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1325
    const/4 v3, 0x0

    return v3

    .line 1318
    :catch_0
    move-exception v1

    .line 1319
    .local v1, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3
.end method

.method private processBIPClient(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1514
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 1515
    .local v0, "commandType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_0

    .line 1516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1519
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1520
    .local v4, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v3, 0x0

    .line 1521
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v1, 0x0

    .line 1522
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v2, 0x0

    .line 1525
    .local v2, "has_alpha_id":Z
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1526
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_1

    .line 1527
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "alpha TLV text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1529
    const/4 v2, 0x1

    .line 1533
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1534
    if-eqz v1, :cond_2

    .line 1535
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3

    .line 1536
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v5, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1539
    .end local v3    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_2
    iput-boolean v7, v4, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 1540
    new-instance v5, Lcom/android/internal/telephony/cat/BIPClientParams;

    invoke-direct {v5, p1, v4, v2}, Lcom/android/internal/telephony/cat/BIPClientParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Z)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1542
    if-eqz v3, :cond_3

    .line 1543
    iput v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1544
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v6, v3, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1545
    return v8

    .line 1547
    :cond_3
    return v7
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/CommandDetails;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 137
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    if-eqz p1, :cond_0

    .line 140
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 139
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 141
    .local v1, "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 143
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 150
    .end local v0    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    .end local v1    # "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_0
    return-object v0

    .line 144
    .restart local v0    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    .restart local v1    # "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Lcom/android/internal/telephony/cat/ResultException;
    const-string/jumbo v3, "Failed to procees command details"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3
.end method

.method private processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 429
    const-string/jumbo v5, "process DisplayText"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    new-instance v4, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 432
    .local v4, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v2, 0x0

    .line 434
    .local v2, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 436
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 437
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 441
    :cond_0
    iget-object v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 442
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5

    .line 445
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_2

    .line 447
    iput-boolean v7, v4, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 450
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_3

    .line 453
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 458
    .end local v2    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :goto_0
    :try_start_1
    iget-boolean v5, v2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 464
    :cond_3
    :goto_1
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 465
    if-eqz v0, :cond_4

    .line 467
    :try_start_2
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    .line 474
    :cond_4
    :goto_2
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    move v5, v6

    :goto_3
    iput-boolean v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    .line 475
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6

    move v5, v6

    :goto_4
    iput-boolean v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 477
    new-instance v5, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v5, p1, v4}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 479
    if-eqz v2, :cond_7

    .line 480
    iput v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 481
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v7, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 483
    return v6

    .line 454
    .restart local v2    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retrieveIconId ResultException: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    .end local v1    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .end local v2    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :catch_1
    move-exception v3

    .line 460
    .local v3, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "iconId is null."

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 468
    .end local v3    # "ne":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 469
    .restart local v1    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retrieveDuration ResultException: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :cond_5
    move v5, v7

    .line 474
    goto :goto_3

    :cond_6
    move v5, v7

    .line 475
    goto :goto_4

    .line 485
    :cond_7
    return v7
.end method

.method private processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 897
    const-string/jumbo v3, "process EventNotify"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 899
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 900
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 902
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 904
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 905
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 911
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 912
    if-eqz v0, :cond_0

    .line 913
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 914
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 917
    .end local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_0
    iput-boolean v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 918
    new-instance v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 920
    if-eqz v1, :cond_2

    .line 921
    iput v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 922
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v4, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 924
    return v6

    .line 908
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_1
    iput-object v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_0

    .line 926
    .end local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_2
    return v5
.end method

.method private processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 545
    const-string/jumbo v5, "process GetInkey"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    new-instance v3, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 548
    .local v3, "input":Lcom/android/internal/telephony/cat/Input;
    const/4 v2, 0x0

    .line 550
    .local v2, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 552
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_2

    .line 553
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 558
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_0

    .line 561
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 567
    .end local v2    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :goto_0
    :try_start_1
    iget-boolean v5, v2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 574
    :cond_0
    :goto_1
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_1

    .line 577
    :try_start_2
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    .line 583
    :cond_1
    :goto_2
    iput v6, v3, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 584
    iput v6, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 586
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3

    move v5, v6

    :goto_3
    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 587
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    move v5, v6

    :goto_4
    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 588
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5

    move v5, v6

    :goto_5
    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 589
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6

    move v5, v6

    :goto_6
    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 590
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 592
    new-instance v5, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {v5, p1, v3}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 594
    if-eqz v2, :cond_7

    .line 595
    iput v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 596
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v7, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 598
    return v6

    .line 555
    .restart local v2    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_2
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5

    .line 562
    :catch_0
    move-exception v1

    .line 563
    .local v1, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retrieveIconId ResultException: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    .end local v1    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .end local v2    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :catch_1
    move-exception v4

    .line 569
    .local v4, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "iconId is null."

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 578
    .end local v4    # "ne":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 579
    .restart local v1    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retrieveDuration ResultException: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v1    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :cond_3
    move v5, v7

    .line 586
    goto/16 :goto_3

    :cond_4
    move v5, v7

    .line 587
    goto :goto_4

    :cond_5
    move v5, v7

    .line 588
    goto :goto_5

    :cond_6
    move v5, v7

    .line 589
    goto :goto_6

    .line 600
    :cond_7
    return v7
.end method

.method private processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 616
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string/jumbo v8, "process GetInput"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    new-instance v4, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v4}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 619
    .local v4, "input":Lcom/android/internal/telephony/cat/Input;
    const/4 v3, 0x0

    .line 621
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 623
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_5

    .line 624
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 629
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_6

    .line 632
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v6

    .line 633
    .local v6, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 636
    .local v7, "valueIndex":I
    aget-byte v8, v6, v7

    and-int/lit16 v8, v8, 0xff

    iput v8, v4, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 637
    iget v8, v4, Lcom/android/internal/telephony/cat/Input;->minLen:I

    const/16 v9, 0xef

    if-le v8, v9, :cond_0

    .line 638
    const/16 v8, 0xef

    iput v8, v4, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 641
    :cond_0
    add-int/lit8 v8, v7, 0x1

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    iput v8, v4, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 642
    iget v8, v4, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    const/16 v9, 0xef

    if-le v8, v9, :cond_1

    .line 643
    const/16 v8, 0xef

    iput v8, v4, Lcom/android/internal/telephony/cat/Input;->maxLen:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :cond_1
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 653
    if-eqz v0, :cond_2

    .line 655
    :try_start_1
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    .line 661
    :cond_2
    :goto_0
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_3

    .line 664
    :try_start_2
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 670
    .end local v3    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :goto_1
    :try_start_3
    iget-boolean v8, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v8, v4, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 676
    :cond_3
    :goto_2
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_7

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, v4, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 677
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, v4, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 678
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_9

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, v4, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 679
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    :goto_6
    iput-boolean v8, v4, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 680
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    :goto_7
    iput-boolean v8, v4, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 684
    iget-boolean v8, v4, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    if-eqz v8, :cond_c

    iget v8, v4, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    const/16 v9, 0x76

    if-le v8, v9, :cond_c

    .line 685
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UCS2: received maxLen = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 686
    const-string/jumbo v9, ", truncating to "

    .line 685
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 686
    const/16 v9, 0x76

    .line 685
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    const/16 v8, 0x76

    iput v8, v4, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 694
    :cond_4
    :goto_8
    new-instance v8, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {v8, p1, v4}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 696
    if-eqz v3, :cond_d

    .line 697
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 698
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v9, v3, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 699
    const/4 v10, 0x1

    .line 698
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 700
    const/4 v8, 0x1

    return v8

    .line 626
    .end local v6    # "rawValue":[B
    .end local v7    # "valueIndex":I
    .restart local v3    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_5
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 645
    :catch_0
    move-exception v2

    .line 646
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 649
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_6
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 656
    .restart local v6    # "rawValue":[B
    .restart local v7    # "valueIndex":I
    :catch_1
    move-exception v1

    .line 657
    .local v1, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveTextString ResultException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 665
    .end local v1    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :catch_2
    move-exception v1

    .line 666
    .restart local v1    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveIconId ResultException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 671
    .end local v1    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .end local v3    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :catch_3
    move-exception v5

    .line 672
    .local v5, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v8, "iconId is null."

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 676
    .end local v5    # "ne":Ljava/lang/NullPointerException;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 677
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 678
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 679
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 680
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 688
    :cond_c
    iget-boolean v8, v4, Lcom/android/internal/telephony/cat/Input;->packed:Z

    if-nez v8, :cond_4

    iget v8, v4, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    const/16 v9, 0xef

    if-le v8, v9, :cond_4

    .line 689
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "GSM 7Bit Default: received maxLen = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 690
    const-string/jumbo v9, ", truncating to "

    .line 689
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 690
    const/16 v9, 0xef

    .line 689
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    const/16 v8, 0xef

    iput v8, v4, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    goto/16 :goto_8

    .line 702
    :cond_d
    const/4 v8, 0x0

    return v8
.end method

.method private processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 1066
    const-string/jumbo v9, "process LaunchBrowser"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1069
    .local v0, "confirmMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v3, 0x0

    .line 1070
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v6, 0x0

    .line 1072
    .local v6, "url":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1073
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 1075
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 1076
    .local v5, "rawValue":[B
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 1077
    .local v7, "valueIndex":I
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v8

    .line 1078
    .local v8, "valueLen":I
    if-lez v8, :cond_3

    .line 1079
    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1090
    .end local v5    # "rawValue":[B
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "valueIndex":I
    .end local v8    # "valueLen":I
    :cond_0
    :goto_0
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1091
    if-eqz v1, :cond_1

    .line 1092
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1095
    :cond_1
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1096
    if-eqz v1, :cond_2

    .line 1097
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3

    .line 1098
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v9, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v9, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1103
    .end local v3    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_2
    iget v9, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v9, :pswitch_data_0

    .line 1106
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 1116
    .local v4, "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :goto_1
    new-instance v9, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    invoke-direct {v9, p1, v0, v6, v4}, Lcom/android/internal/telephony/cat/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cat/LaunchBrowserMode;)V

    iput-object v9, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1118
    if-eqz v3, :cond_4

    .line 1119
    iput v12, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1120
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v10, v3, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1122
    return v12

    .line 1082
    .end local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    .restart local v5    # "rawValue":[B
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v7    # "valueIndex":I
    .restart local v8    # "valueLen":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 1084
    .end local v5    # "rawValue":[B
    .end local v7    # "valueIndex":I
    .end local v8    # "valueLen":I
    :catch_0
    move-exception v2

    .line 1085
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v9

    .line 1109
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    .end local v6    # "url":Ljava/lang/String;
    :pswitch_0
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .restart local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_1

    .line 1112
    .end local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .restart local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_1

    .line 1124
    :cond_4
    return v10

    .line 1103
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 15
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1140
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string/jumbo v1, "process PlayTone"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1142
    const/4 v4, 0x0

    .line 1143
    .local v4, "tone":Lcom/android/internal/telephony/cat/Tone;
    new-instance v3, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1144
    .local v3, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v5, 0x0

    .line 1145
    .local v5, "duration":Lcom/android/internal/telephony/cat/Duration;
    const/4 v10, 0x0

    .line 1147
    .local v10, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p2

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1148
    .local v7, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v7, :cond_0

    .line 1150
    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    .line 1152
    :try_start_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v11

    .line 1153
    .local v11, "rawValue":[B
    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v13

    .line 1154
    .local v13, "valueIndex":I
    aget-byte v12, v11, v13

    .line 1155
    .local v12, "toneVal":I
    invoke-static {v12}, Lcom/android/internal/telephony/cat/Tone;->fromInt(I)Lcom/android/internal/telephony/cat/Tone;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1163
    .end local v4    # "tone":Lcom/android/internal/telephony/cat/Tone;
    .end local v11    # "rawValue":[B
    .end local v12    # "toneVal":I
    .end local v13    # "valueIndex":I
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p2

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1164
    if-eqz v7, :cond_1

    .line 1166
    :try_start_1
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1172
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p2

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1173
    if-eqz v7, :cond_2

    .line 1175
    :try_start_2
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 1181
    .end local v5    # "duration":Lcom/android/internal/telephony/cat/Duration;
    :cond_2
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p2

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1182
    if-eqz v7, :cond_3

    .line 1183
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v10

    .line 1184
    .local v10, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v1, v10, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v1, v3, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1187
    .end local v10    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_3
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    const/4 v6, 0x1

    .line 1189
    .local v6, "vibrate":Z
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 1190
    new-instance v1, Lcom/android/internal/telephony/cat/PlayToneParams;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/PlayToneParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/Tone;Lcom/android/internal/telephony/cat/Duration;Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1192
    if-eqz v10, :cond_5

    .line 1193
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1194
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v2, v10, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 1195
    const/4 v14, 0x1

    .line 1194
    invoke-virtual {p0, v14}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v1, v2, v14}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1196
    const/4 v1, 0x1

    return v1

    .line 1156
    .end local v6    # "vibrate":Z
    .restart local v4    # "tone":Lcom/android/internal/telephony/cat/Tone;
    .restart local v5    # "duration":Lcom/android/internal/telephony/cat/Duration;
    .local v10, "iconId":Lcom/android/internal/telephony/cat/IconId;
    :catch_0
    move-exception v9

    .line 1157
    .local v9, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/android/internal/telephony/cat/ResultException;

    .line 1158
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1157
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v1

    .line 1167
    .end local v4    # "tone":Lcom/android/internal/telephony/cat/Tone;
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v8

    .line 1168
    .local v8, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retrieveAlphaId ResultException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1176
    .end local v8    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :catch_2
    move-exception v8

    .line 1177
    .restart local v8    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retrieveDuration ResultException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1187
    .end local v5    # "duration":Lcom/android/internal/telephony/cat/Duration;
    .end local v8    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .end local v10    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "vibrate":Z
    goto :goto_2

    .line 1198
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method private processProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 2
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1278
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string/jumbo v0, "process ProvideLocalInfo"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1279
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v0, :pswitch_data_0

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PLI["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] Command Not Supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1290
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1291
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    .line 1281
    :pswitch_0
    const-string/jumbo v0, "PLI [DTTZ_SETTING]"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1282
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1293
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1285
    :pswitch_1
    const-string/jumbo v0, "PLI [LANGUAGE_SETTING]"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1286
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    goto :goto_0

    .line 1279
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processRefresh(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 2
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 715
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string/jumbo v1, "process Refresh"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 721
    .local v0, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v1, :pswitch_data_0

    .line 730
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 726
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 727
    new-instance v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    goto :goto_0

    .line 721
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 15
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 746
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string/jumbo v11, "process SelectItem"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    new-instance v6, Lcom/android/internal/telephony/cat/Menu;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/Menu;-><init>()V

    .line 749
    .local v6, "menu":Lcom/android/internal/telephony/cat/Menu;
    const/4 v10, 0x0

    .line 750
    .local v10, "titleIconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v4, 0x0

    .line 751
    .local v4, "itemsIconId":Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 753
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p2

    invoke-direct {p0, v11, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 755
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 757
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "add AlphaId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    :cond_0
    :goto_1
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v11, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 766
    if-eqz v1, :cond_2

    .line 767
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;

    move-result-object v3

    .line 768
    .local v3, "item":Lcom/android/internal/telephony/cat/Item;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "add menu item: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v3, :cond_1

    const-string/jumbo v11, ""

    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    iget-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 758
    .end local v3    # "item":Lcom/android/internal/telephony/cat/Item;
    :catch_0
    move-exception v2

    .line 759
    .local v2, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "retrieveAlphaId ResultException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 768
    .end local v2    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .restart local v3    # "item":Lcom/android/internal/telephony/cat/Item;
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/Item;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 776
    .end local v3    # "item":Lcom/android/internal/telephony/cat/Item;
    :cond_2
    iget-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_3

    .line 777
    const-string/jumbo v11, "no menu item"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 778
    new-instance v11, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v11

    .line 781
    :cond_3
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->NEXT_ACTION_INDICATOR:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p2

    invoke-direct {p0, v11, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 782
    if-eqz v1, :cond_4

    .line 784
    :try_start_1
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveNextActionIndicator(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B

    move-result-object v11

    iput-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    .line 789
    :goto_3
    :try_start_2
    iget-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    array-length v11, v11

    iget-object v12, v6, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-eq v11, v12, :cond_4

    .line 790
    const-string/jumbo v11, "nextActionIndicator.length != number of menu items"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 791
    const/4 v11, 0x0

    iput-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 798
    :cond_4
    :goto_4
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p2

    invoke-direct {p0, v11, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 799
    if-eqz v1, :cond_5

    .line 803
    :try_start_3
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    iput v11, v6, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I
    :try_end_3
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_3 .. :try_end_3} :catch_3

    .line 807
    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "default item: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 810
    :cond_5
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p2

    invoke-direct {p0, v11, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 811
    if-eqz v1, :cond_6

    .line 812
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 814
    :try_start_4
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    :try_end_4
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v10

    .line 819
    .end local v10    # "titleIconId":Lcom/android/internal/telephony/cat/IconId;
    :goto_6
    :try_start_5
    iget-boolean v11, v10, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v11, v6, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5

    .line 825
    :cond_6
    :goto_7
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p2

    invoke-direct {p0, v11, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 826
    if-eqz v1, :cond_7

    .line 827
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 829
    :try_start_6
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;
    :try_end_6
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v4

    .line 834
    .end local v4    # "itemsIconId":Lcom/android/internal/telephony/cat/ItemsIconId;
    :goto_8
    :try_start_7
    iget-boolean v11, v4, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    iput-boolean v11, v6, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_7

    .line 840
    :cond_7
    :goto_9
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_9

    const/4 v8, 0x1

    .line 841
    .local v8, "presentTypeSpecified":Z
    :goto_a
    if-eqz v8, :cond_8

    .line 842
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_a

    .line 843
    sget-object v11, Lcom/android/internal/telephony/cat/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    .line 848
    :cond_8
    :goto_b
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    :goto_c
    iput-boolean v11, v6, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    .line 849
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    :goto_d
    iput-boolean v11, v6, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 851
    new-instance v12, Lcom/android/internal/telephony/cat/SelectItemParams;

    if-eqz v10, :cond_d

    const/4 v11, 0x1

    :goto_e
    move-object/from16 v0, p1

    invoke-direct {v12, v0, v6, v11}, Lcom/android/internal/telephony/cat/SelectItemParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V

    iput-object v12, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 854
    iget v11, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    packed-switch v11, :pswitch_data_0

    .line 882
    :goto_f
    const/4 v11, 0x1

    return v11

    .line 785
    .end local v8    # "presentTypeSpecified":Z
    .restart local v4    # "itemsIconId":Lcom/android/internal/telephony/cat/ItemsIconId;
    .restart local v10    # "titleIconId":Lcom/android/internal/telephony/cat/IconId;
    :catch_1
    move-exception v2

    .line 786
    .restart local v2    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "retrieveNextActionIndicator ResultException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 793
    .end local v2    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :catch_2
    move-exception v7

    .line 794
    .local v7, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v11, "nextActionIndicator is null."

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 804
    .end local v7    # "ne":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v2

    .line 805
    .restart local v2    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "retrieveItemId ResultException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 815
    .end local v2    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :catch_4
    move-exception v2

    .line 816
    .restart local v2    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "retrieveIconId ResultException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 820
    .end local v2    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .end local v10    # "titleIconId":Lcom/android/internal/telephony/cat/IconId;
    :catch_5
    move-exception v7

    .line 821
    .restart local v7    # "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v11, "titleIconId is null."

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 830
    .end local v7    # "ne":Ljava/lang/NullPointerException;
    :catch_6
    move-exception v2

    .line 831
    .restart local v2    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "retrieveItemsIconId ResultException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 835
    .end local v2    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .end local v4    # "itemsIconId":Lcom/android/internal/telephony/cat/ItemsIconId;
    :catch_7
    move-exception v7

    .line 836
    .restart local v7    # "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v11, "itemsIconId is null."

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 840
    .end local v7    # "ne":Ljava/lang/NullPointerException;
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "presentTypeSpecified":Z
    goto/16 :goto_a

    .line 845
    :cond_a
    sget-object v11, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    goto/16 :goto_b

    .line 848
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_c

    .line 849
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_d

    .line 851
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_e

    .line 856
    :pswitch_0
    const/4 v11, 0x0

    return v11

    .line 858
    :pswitch_1
    if-eqz v10, :cond_e

    iget v11, v10, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    if-lez v11, :cond_e

    .line 859
    iget-object v11, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v12, v10, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 860
    const/4 v13, 0x1

    .line 859
    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    goto/16 :goto_f

    .line 863
    :cond_e
    const/4 v11, 0x0

    return v11

    .line 866
    :pswitch_2
    if-eqz v4, :cond_10

    .line 867
    iget-object v9, v4, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    .line 869
    .local v9, "recordNumbers":[I
    iget-object v11, v4, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    new-array v9, v11, [I

    .line 870
    if-eqz v10, :cond_f

    .line 871
    iget v11, v10, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    const/4 v12, 0x0

    aput v11, v9, v12

    .line 873
    :cond_f
    iget-object v11, v4, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    .line 874
    iget-object v12, v4, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    array-length v12, v12

    .line 873
    const/4 v13, 0x0

    .line 874
    const/4 v14, 0x1

    .line 873
    invoke-static {v11, v13, v9, v14, v12}, Ljava/lang/System;->arraycopy([II[III)V

    .line 875
    iget-object v11, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 876
    const/4 v12, 0x1

    .line 875
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    goto/16 :goto_f

    .line 879
    .end local v9    # "recordNumbers":[I
    :cond_10
    const/4 v11, 0x0

    return v11

    .line 854
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1005
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string/jumbo v8, "process SetUpEventList"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 1010
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_3

    .line 1012
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 1013
    .local v5, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 1014
    .local v6, "valueIndex":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v7

    .line 1016
    .local v7, "valueLen":I
    new-array v2, v7, [B

    .line 1017
    .local v2, "eventList":[B
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 1018
    aget-byte v8, v5, v6

    aput-byte v8, v2, v3

    .line 1019
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CPF-processSetUpEventList: eventList["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1020
    aget-byte v9, v2, v3

    .line 1019
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    aget-byte v8, v5, v6

    const/4 v9, 0x5

    if-ne v8, v9, :cond_1

    .line 1022
    const-string/jumbo v8, "CPF-processSetUpEventList: sent intent with idle = true"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.IDLE_SCREEN_NEEDED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "_enable"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1025
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1041
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 1042
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1035
    :cond_1
    aget-byte v8, v5, v6

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 1036
    const-string/jumbo v8, "CPF-processSetUpEventList: sent intent for user activity"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1037
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.stk.USER_ACTIVITY.enable"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1038
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "state"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1039
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1045
    .end local v2    # "eventList":[B
    .end local v3    # "index":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "rawValue":[B
    .end local v6    # "valueIndex":I
    .end local v7    # "valueLen":I
    :catch_0
    move-exception v1

    .line 1046
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 1044
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "eventList":[B
    .restart local v3    # "index":I
    .restart local v5    # "rawValue":[B
    .restart local v6    # "valueIndex":I
    .restart local v7    # "valueLen":I
    :cond_2
    :try_start_1
    new-instance v8, Lcom/android/internal/telephony/cat/SetupEventListParams;

    invoke-direct {v8, p1, v2}, Lcom/android/internal/telephony/cat/SetupEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[B)V

    iput-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1050
    .end local v2    # "eventList":[B
    .end local v3    # "index":I
    .end local v5    # "rawValue":[B
    .end local v6    # "valueIndex":I
    .end local v7    # "valueLen":I
    :cond_3
    const/4 v8, 0x0

    return v8
.end method

.method private processSetUpIdleModeText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v6, 0x1

    .line 501
    const-string/jumbo v3, "process SetUpIdleModeText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 504
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 506
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 508
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 509
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 514
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_1

    .line 516
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 517
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 521
    .end local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 523
    if-eqz v1, :cond_2

    .line 524
    iput v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 525
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v4, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 527
    return v6

    .line 529
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1213
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string/jumbo v10, "process SetupCall"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1215
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1216
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v7, 0x0

    .line 1218
    .local v7, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v6, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1220
    .local v6, "confirmMsg":Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v4, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1221
    .local v4, "callMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v5, 0x0

    .line 1222
    .local v5, "confirmIconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v3, 0x0

    .line 1228
    .local v3, "callIconId":Lcom/android/internal/telephony/cat/IconId;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getAddrIndex(Ljava/util/List;)I

    move-result v0

    .line 1229
    .local v0, "addrIndex":I
    const/4 v10, -0x1

    if-ne v10, v0, :cond_0

    .line 1230
    const-string/jumbo v10, "fail to get ADDRESS data object"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1231
    const/4 v10, 0x0

    return v10

    .line 1234
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getConfirmationAlphaIdIndex(Ljava/util/List;I)I

    move-result v1

    .line 1235
    .local v1, "alpha1Index":I
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getCallingAlphaIdIndex(Ljava/util/List;I)I

    move-result v2

    .line 1237
    .local v2, "alpha2Index":I
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getConfirmationAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1238
    .local v7, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v7, :cond_1

    .line 1239
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1242
    :cond_1
    invoke-direct {p0, p2, v1, v2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getConfirmationIconId(Ljava/util/List;II)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1243
    if-eqz v7, :cond_2

    .line 1244
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v5

    .line 1245
    .local v5, "confirmIconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v10, v5, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v10, v6, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1248
    .end local v5    # "confirmIconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getCallingAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1249
    if-eqz v7, :cond_3

    .line 1250
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1253
    :cond_3
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getCallingIconId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1254
    if-eqz v7, :cond_4

    .line 1255
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3

    .line 1256
    .local v3, "callIconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v10, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v10, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1259
    .end local v3    # "callIconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_4
    new-instance v10, Lcom/android/internal/telephony/cat/CallSetupParams;

    invoke-direct {v10, p1, v6, v4}, Lcom/android/internal/telephony/cat/CallSetupParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1261
    if-nez v5, :cond_5

    if-eqz v3, :cond_8

    .line 1262
    :cond_5
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1263
    const/4 v10, 0x2

    new-array v9, v10, [I

    .line 1264
    .local v9, "recordNumbers":[I
    if-eqz v5, :cond_6

    .line 1265
    iget v10, v5, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 1264
    :goto_0
    const/4 v11, 0x0

    aput v10, v9, v11

    .line 1266
    if-eqz v3, :cond_7

    iget v10, v3, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    :goto_1
    const/4 v11, 0x1

    aput v10, v9, v11

    .line 1269
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 1270
    const/4 v11, 0x1

    .line 1269
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    .line 1271
    const/4 v10, 0x1

    return v10

    .line 1265
    :cond_6
    const/4 v10, -0x1

    goto :goto_0

    .line 1267
    :cond_7
    const/4 v10, -0x1

    goto :goto_1

    .line 1273
    .end local v9    # "recordNumbers":[I
    :cond_8
    const/4 v10, 0x0

    return v10
.end method

.method private resetTlvIndex()V
    .locals 1

    .prologue
    .line 361
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    .line 360
    return-void
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 3
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 350
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 351
    .local v1, "tagValue":I
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 353
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 354
    return-object v0

    .line 357
    .end local v0    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 4
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v3, 0x0

    .line 379
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 380
    :cond_0
    const-string/jumbo v2, "CPF-searchForNextTagAndIndex: Invalid params"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    return-object v3

    .line 384
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 386
    .local v1, "tagValue":I
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 387
    iget v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    .line 388
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 389
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 390
    return-object v0

    .line 395
    .end local v0    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_3
    return-object v3
.end method

.method private searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 2
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 332
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 333
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private searchForTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 2
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 410
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->resetTlvIndex()V

    .line 411
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 412
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 2
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 316
    :cond_0
    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 295
    const/4 v2, 0x0

    .line 296
    .local v2, "icons":[Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 298
    .local v1, "iconIndex":I
    if-nez p1, :cond_0

    .line 299
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    return-object v3

    .line 301
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    packed-switch v3, :pswitch_data_0

    .line 313
    .end local v2    # "icons":[Landroid/graphics/Bitmap;
    .end local p1    # "data":Ljava/lang/Object;
    :cond_1
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    return-object v3

    .line 303
    .restart local v2    # "icons":[Landroid/graphics/Bitmap;
    .restart local p1    # "data":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    goto :goto_0

    .restart local p1    # "data":Ljava/lang/Object;
    :pswitch_1
    move-object v2, p1

    .line 306
    check-cast v2, [Landroid/graphics/Bitmap;

    .line 308
    .local v2, "icons":[Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 309
    .local v0, "icon":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    .line 308
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1551
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/IconLoader;->dispose()V

    .line 1552
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 1553
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1554
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 1555
    sput-object v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 1550
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 287
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 289
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/cat/BerTlv;)V
    .locals 7
    .param p1, "berTlv"    # Lcom/android/internal/telephony/cat/BerTlv;

    .prologue
    const/4 v5, 0x0

    .line 154
    if-nez p1, :cond_0

    .line 155
    return-void

    .line 158
    :cond_0
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 159
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 161
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getTag()I

    move-result v5

    const/16 v6, 0xd0

    if-eq v5, v6, :cond_1

    .line 162
    const-string/jumbo v5, "CPF-make: Ununderstood proactive command tag"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 164
    return-void

    .line 166
    :cond_1
    const/4 v1, 0x0

    .line 167
    .local v1, "cmdPending":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v3

    .line 169
    .local v3, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 171
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    if-nez v0, :cond_2

    .line 178
    const-string/jumbo v5, "CPF-make: No CommandDetails object"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 180
    return-void

    .line 172
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    :catch_0
    move-exception v4

    .line 173
    .local v4, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CPF-make: Except to procees command details : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 175
    return-void

    .line 186
    .end local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    :cond_2
    iget v5, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 185
    invoke-static {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    .line 187
    .local v2, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-nez v2, :cond_3

    .line 188
    const-string/jumbo v5, "CPF-make: Command type can\'t be found"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 194
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 195
    return-void

    .line 199
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->isLengthValid()Z

    move-result v5

    if-nez v5, :cond_4

    .line 200
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 201
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 202
    return-void

    .line 206
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 268
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 269
    const-string/jumbo v5, "CPF-make: default case"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 272
    return-void

    .line 208
    :pswitch_0
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 280
    .end local v1    # "cmdPending":Z
    :goto_0
    if-nez v1, :cond_5

    .line 281
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 153
    :cond_5
    return-void

    .line 211
    .restart local v1    # "cmdPending":Z
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 214
    .local v1, "cmdPending":Z
    :pswitch_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 217
    .local v1, "cmdPending":Z
    :pswitch_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 220
    .local v1, "cmdPending":Z
    :pswitch_4
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 223
    .local v1, "cmdPending":Z
    :pswitch_5
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 229
    .local v1, "cmdPending":Z
    :pswitch_6
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 233
    .local v1, "cmdPending":Z
    :pswitch_7
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 236
    .local v1, "cmdPending":Z
    :pswitch_8
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processRefresh(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    .line 237
    const/4 v1, 0x0

    .line 238
    goto :goto_0

    .line 240
    :pswitch_9
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 243
    .local v1, "cmdPending":Z
    :pswitch_a
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 246
    .local v1, "cmdPending":Z
    :pswitch_b
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 247
    .local v1, "cmdPending":Z
    const-string/jumbo v5, "process ProvideLocalInformation"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 274
    .end local v1    # "cmdPending":Z
    :catch_1
    move-exception v4

    .line 275
    .restart local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "make: caught ResultException e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 277
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 278
    return-void

    .line 250
    .end local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .local v1, "cmdPending":Z
    :pswitch_c
    :try_start_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 261
    .local v1, "cmdPending":Z
    :pswitch_d
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processBIPClient(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 264
    .local v1, "cmdPending":Z
    :pswitch_e
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processActivate(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    :try_end_3
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_8
        :pswitch_1
        :pswitch_d
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
