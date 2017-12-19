.class public Lcom/android/internal/telephony/cat/BipService;
.super Ljava/lang/Object;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipService$SendDataThread;,
        Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;,
        Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;,
        Lcom/android/internal/telephony/cat/BipService$1;,
        Lcom/android/internal/telephony/cat/BipService$2;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I = null

.field static final ADDITIONAL_INFO_FOR_BIP_CHANNEL_CLOSED:I = 0x2

.field static final ADDITIONAL_INFO_FOR_BIP_CHANNEL_ID_NOT_AVAILABLE:I = 0x3

.field static final ADDITIONAL_INFO_FOR_BIP_NO_CHANNEL_AVAILABLE:I = 0x1

.field static final ADDITIONAL_INFO_FOR_BIP_NO_SPECIFIC_CAUSE:I = 0x0

.field static final ADDITIONAL_INFO_FOR_BIP_REQUESTED_BUFFER_SIZE_NOT_AVAILABLE:I = 0x4

.field static final ADDITIONAL_INFO_FOR_BIP_REQUESTED_INTERFACE_TRANSPORT_LEVEL_NOT_AVAILABLE:I = 0x6

.field static final ADDITIONAL_INFO_FOR_BIP_SECURITY_ERROR:I = 0x5

.field private static final BIP_NAME:Ljava/lang/String; = "__M-BIP__"

.field private static final CONN_DELAY_TIMEOUT:I = 0x1388

.field private static final CONN_MGR_TIMEOUT:I = 0xc350

.field private static final DBG:Z = true

.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field protected static final MSG_ID_BIP_CONN_DELAY_TIMEOUT:I = 0xb

.field protected static final MSG_ID_BIP_CONN_MGR_TIMEOUT:I = 0xa

.field protected static final MSG_ID_BIP_DISCONNECT_TIMEOUT:I = 0xc

.field protected static final MSG_ID_BIP_PROACTIVE_COMMAND:I = 0x12

.field protected static final MSG_ID_CLOSE_CHANNEL_DONE:I = 0x10

.field protected static final MSG_ID_EVENT_NOTIFY:I = 0x13

.field protected static final MSG_ID_GET_CHANNEL_STATUS_DONE:I = 0x11

.field protected static final MSG_ID_OPEN_CHANNEL_DONE:I = 0xd

.field protected static final MSG_ID_RECEIVE_DATA_DONE:I = 0xf

.field protected static final MSG_ID_RIL_MSG_DECODED:I = 0x14

.field protected static final MSG_ID_SEND_DATA_DONE:I = 0xe

.field private static final PROPERTY_OVERRIDE_APN:Ljava/lang/String; = "ril.pdn.overrideApn"

.field private static final PROPERTY_PDN_REUSE:Ljava/lang/String; = "ril.pdn.reuse"

.field private static mInstance:[Lcom/android/internal/telephony/cat/BipService;

.field private static mSimCount:I


# instance fields
.field final NETWORK_TYPE:I

.field private isConnMgrIntentTimeout:Z

.field private isParamsValid:Z

.field mApn:Ljava/lang/String;

.field mAutoReconnected:Z

.field mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

.field private mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

.field private mBipMsgDecoder:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

.field private mBipSrvHandler:Landroid/os/Handler;

.field mBufferSize:I

.field private mChannel:Lcom/android/internal/telephony/cat/Channel;

.field private mChannelId:I

.field private mChannelStatus:I

.field private mChannelStatusDataObject:Lcom/android/internal/telephony/cat/ChannelStatus;

.field private final mCloseLock:Ljava/lang/Object;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mCmdMessage:Lcom/android/internal/telephony/cat/BipCmdMessage;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

.field protected mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCurrntCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

.field mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

.field private mHandler:Landroid/os/Handler;

.field private mIsApnInserting:Z

.field private mIsCloseInProgress:Z

.field private mIsListenChannelStatus:Z

.field private mIsListenDataAvailable:Z

.field private mIsNetworkAvailableReceived:Z

.field private mIsOpenInProgress:Z

.field mLinkMode:I

.field mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

.field mLogin:Ljava/lang/String;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkRequest:Landroid/net/NetworkRequest;

.field mPassword:Ljava/lang/String;

.field private mSlotId:I

.field mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/cat/BipService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipChannelManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/telephony/cat/BipService;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/telephony/cat/BipService;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipRilMessageDecoder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/cat/BipService;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/cat/BipService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mCloseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipCmdMessage;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/telephony/cat/BipService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/telephony/cat/BipService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/internal/telephony/cat/BipService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    return v0
.end method

.method private static synthetic -getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/cat/BipService;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cat/BipService;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

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

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_28

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CALLCTRL_RSP_MSG:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_27

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_26

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DECLARE_SERVICE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_25

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_24

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_23

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_22

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_FRAME_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_21

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_20

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1f

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_READER_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1e

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_SERVICE_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1d

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1c

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1b

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1a

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_19

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PERFORM_CARD_APDU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_18

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_17

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLLING_OFF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_16

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_15

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_OFF_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_ON_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_13

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_12

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_11

    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_10

    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RETRIEVE_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_f

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT_COMMAND:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_e

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_d

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_c

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_b

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_a

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_9

    :goto_1f
    :try_start_20
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_8

    :goto_20
    :try_start_21
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SERVICE_SEARCH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_7

    :goto_21
    :try_start_22
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_FRAME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_6

    :goto_22
    :try_start_23
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_5

    :goto_23
    :try_start_24
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_4

    :goto_24
    :try_start_25
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_3

    :goto_25
    :try_start_26
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x27

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
    sput-object v0, Lcom/android/internal/telephony/cat/BipService;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/internal/telephony/cat/BipService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/cat/BipService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/cat/BipService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/cat/BipService;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/cat/BipService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->connect()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/cat/BipService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->disconnect()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 0
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/cat/BipService;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipService;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/cat/BipService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->resetLocked()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "includeAdditionalInfo"    # Z
    .param p4, "additionalInfo"    # I
    .param p5, "resp"    # Lcom/android/internal/telephony/cat/ResponseData;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/cat/BipService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    .line 131
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sim_id"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 104
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCmdMessage:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 106
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 108
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 111
    iput v3, p0, Lcom/android/internal/telephony/cat/BipService;->mBufferSize:I

    .line 112
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 113
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    .line 114
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 115
    iput v3, p0, Lcom/android/internal/telephony/cat/BipService;->mLinkMode:I

    .line 116
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mAutoReconnected:Z

    .line 117
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCloseLock:Ljava/lang/Object;

    .line 119
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    .line 120
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    .line 121
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    .line 123
    iput v3, p0, Lcom/android/internal/telephony/cat/BipService;->NETWORK_TYPE:I

    .line 125
    iput v3, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 126
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    .line 127
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    .line 128
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatusDataObject:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 129
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->isParamsValid:Z

    .line 130
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    .line 132
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mIsApnInserting:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    .line 134
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    .line 135
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 166
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    .line 167
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    .line 168
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .line 169
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrntCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 170
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 171
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 172
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    .line 173
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    .line 181
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 183
    new-instance v1, Lcom/android/internal/telephony/cat/BipService$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/BipService$1;-><init>(Lcom/android/internal/telephony/cat/BipService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    .line 1689
    new-instance v1, Lcom/android/internal/telephony/cat/BipService$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/BipService$2;-><init>(Lcom/android/internal/telephony/cat/BipService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    .line 332
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "Construct BipService"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    if-nez p1, :cond_0

    .line 335
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "Fail to construct BipService"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void

    .line 339
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 340
    iput p3, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    .line 341
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Construct instance sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 343
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    .line 344
    new-instance v1, Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/BipChannelManager;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    .line 346
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 347
    .local v0, "connFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->deleteApnParams()V

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sim_id"    # I
    .param p4, "cmdIf"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 104
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mCmdMessage:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 106
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 108
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 110
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 111
    iput v2, p0, Lcom/android/internal/telephony/cat/BipService;->mBufferSize:I

    .line 112
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 113
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    .line 114
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 115
    iput v2, p0, Lcom/android/internal/telephony/cat/BipService;->mLinkMode:I

    .line 116
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->mAutoReconnected:Z

    .line 117
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCloseLock:Ljava/lang/Object;

    .line 119
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    .line 120
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    .line 121
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    .line 123
    iput v2, p0, Lcom/android/internal/telephony/cat/BipService;->NETWORK_TYPE:I

    .line 125
    iput v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 126
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    .line 127
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    .line 128
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatusDataObject:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 129
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->isParamsValid:Z

    .line 130
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    .line 132
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->mIsApnInserting:Z

    .line 133
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    .line 135
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 166
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    .line 167
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    .line 168
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .line 169
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrntCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 170
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 171
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 172
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    .line 173
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    .line 181
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 183
    new-instance v1, Lcom/android/internal/telephony/cat/BipService$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/BipService$1;-><init>(Lcom/android/internal/telephony/cat/BipService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    .line 1689
    new-instance v1, Lcom/android/internal/telephony/cat/BipService$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/BipService$2;-><init>(Lcom/android/internal/telephony/cat/BipService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    .line 358
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Construct BipService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    if-nez p1, :cond_0

    .line 361
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "Fail to construct BipService"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void

    .line 365
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 366
    iput p3, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    .line 367
    iput-object p4, p0, Lcom/android/internal/telephony/cat/BipService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 368
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 369
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    .line 370
    new-instance v1, Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/BipChannelManager;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    .line 371
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v1, p5, v2}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .line 372
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    if-nez v1, :cond_1

    .line 373
    const-string/jumbo v1, "Null BipRilMessageDecoder instance"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    return-void

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->start()V

    .line 378
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-interface {p4, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnBipProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 379
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 380
    .local v0, "connFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 386
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->deleteApnParams()V

    .line 357
    return-void
.end method

.method private checkDataCapability(Lcom/android/internal/telephony/cat/BipCmdMessage;)Z
    .locals 11
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 1522
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 1523
    const-string/jumbo v7, "phone"

    .line 1522
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1524
    .local v3, "mTelMan":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    .line 1525
    .local v4, "simInsertedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v6, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    if-ge v2, v6, :cond_1

    .line 1526
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1527
    add-int/lit8 v4, v4, 0x1

    .line 1525
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1530
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 1531
    .local v1, "defaultDataSubId":I
    iget v6, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    .line 1532
    .local v5, "subId":[I
    const/4 v0, -0x1

    .line 1533
    .local v0, "currentSubId":I
    if-eqz v5, :cond_3

    .line 1534
    aget v0, v5, v9

    .line 1539
    const-string/jumbo v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkDataCapability: simInsertedCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1540
    const-string/jumbo v8, " currentSubId:"

    .line 1539
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1540
    const-string/jumbo v8, " defaultDataSubId:"

    .line 1539
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    if-lt v4, v10, :cond_5

    .line 1543
    iget-object v6, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    if-eqz v6, :cond_5

    .line 1544
    iget-object v6, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v6, v6, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    if-eq v10, v6, :cond_2

    .line 1545
    iget-object v6, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v6, v6, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    const/4 v7, 0x3

    if-ne v7, v6, :cond_4

    .line 1547
    :cond_2
    if-eq v0, v1, :cond_5

    .line 1548
    const-string/jumbo v6, "[BIP]"

    const-string/jumbo v7, "checkDataCapability: return false"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    return v9

    .line 1536
    :cond_3
    const-string/jumbo v6, "[BIP]"

    const-string/jumbo v7, "checkDataCapability: invalid subId"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    return v9

    .line 1546
    :cond_4
    iget-object v6, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v6, v6, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    const/16 v7, 0xb

    if-eq v7, v6, :cond_2

    .line 1551
    :cond_5
    const-string/jumbo v6, "[BIP]"

    const-string/jumbo v7, "checkDataCapability: return true"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    const/4 v6, 0x1

    return v6
.end method

.method private checkNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Z
    .locals 6
    .param p1, "nwInfo"    # Landroid/net/NetworkInfo;
    .param p2, "exState"    # Landroid/net/NetworkInfo$State;

    .prologue
    const/4 v5, 0x0

    .line 1321
    if-nez p1, :cond_0

    .line 1322
    return v5

    .line 1325
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 1326
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 1327
    .local v0, "state":Landroid/net/NetworkInfo$State;
    const-string/jumbo v3, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "network type is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_1

    .line 1328
    const-string/jumbo v2, "MOBILE"

    .line 1327
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "network state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    if-nez v1, :cond_2

    if-ne v0, p2, :cond_2

    .line 1332
    const/4 v2, 0x1

    return v2

    .line 1328
    :cond_1
    const-string/jumbo v2, "WIFI"

    goto :goto_0

    .line 1335
    :cond_2
    return v5
.end method

.method private checkPSEvent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 7
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 492
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    .line 493
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    .line 494
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 495
    .local v0, "eventVal":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    packed-switch v0, :pswitch_data_0

    .line 494
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    :pswitch_0
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    goto :goto_1

    .line 503
    :pswitch_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    goto :goto_1

    .line 491
    .end local v0    # "eventVal":I
    :cond_0
    return-void

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private connect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 685
    const/4 v1, 0x0

    .line 686
    .local v1, "ret":I
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "establishConnect"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 695
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "requestNetwork: establish data channel"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->establishLink()I

    move-result v1

    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, "response":Landroid/os/Message;
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 700
    if-eqz v1, :cond_0

    .line 701
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 702
    :cond_0
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "1 channel is activated"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const/16 v2, 0x80

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/BipService;->updateCurrentChannelStatus(I)V

    .line 708
    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 709
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    .line 710
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    const/16 v4, 0xd

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 711
    .local v0, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 684
    .end local v0    # "response":Landroid/os/Message;
    :cond_1
    return-void

    .line 705
    .local v0, "response":Landroid/os/Message;
    :cond_2
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "2 channel is un-activated"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/BipService;->updateCurrentChannelStatus(I)V

    goto :goto_0
.end method

.method private deleteApnParams()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1432
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget v6, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/cat/BipService;->getUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    .line 1433
    .local v4, "uri":Landroid/net/Uri;
    iget v5, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 1434
    .local v3, "subId":[I
    const/4 v0, 0x0

    .line 1436
    .local v0, "numeric":Ljava/lang/String;
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-deleteApnParams: enter. "

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    aget v5, v3, v7

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1439
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1442
    .end local v0    # "numeric":Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_1

    .line 1443
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-deleteApnParams: Invalid uri"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    return-void

    .line 1446
    :cond_1
    const-string/jumbo v2, "name = \'__M-BIP__\'"

    .line 1447
    .local v2, "selection":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v2, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1448
    .local v1, "rows":I
    const-string/jumbo v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BM-deleteApnParams:["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] end"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    return-void
.end method

.method private disconnect()V
    .locals 14

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 716
    const/4 v7, 0x0

    .line 717
    .local v7, "ret":I
    const/4 v6, 0x0

    .line 719
    .local v6, "response":Landroid/os/Message;
    const-string/jumbo v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "disconnect: opening ? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->deleteApnParams()V

    .line 723
    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    if-eqz v8, :cond_1

    .line 724
    iget v8, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    .line 725
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v9, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v2

    .line 726
    .local v2, "channel":Lcom/android/internal/telephony/cat/Channel;
    const/4 v7, 0x2

    .line 728
    if-eqz v2, :cond_0

    .line 729
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/Channel;->closeChannel()I

    .line 730
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v9, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 735
    :goto_0
    iput v12, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 736
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput v11, v8, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 737
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput-boolean v11, v8, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 738
    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 739
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    const/16 v10, 0xd

    invoke-virtual {v8, v10, v7, v11, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 740
    .local v6, "response":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 715
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/Channel;
    .end local v6    # "response":Landroid/os/Message;
    :goto_1
    return-void

    .line 732
    .restart local v2    # "channel":Lcom/android/internal/telephony/cat/Channel;
    .local v6, "response":Landroid/os/Message;
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v9, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    iget-object v10, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v10, v10, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    goto :goto_0

    .line 742
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/Channel;
    :cond_1
    const/4 v3, 0x0

    .line 743
    .local v3, "i":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v1, "alByte":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 745
    .local v0, "additionalInfo":[B
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "this is a drop link"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iput v12, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 749
    new-instance v5, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {v5, v13}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 751
    .local v5, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    const/4 v3, 0x1

    :goto_2
    const/4 v8, 0x7

    if-gt v3, v8, :cond_4

    .line 752
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cat/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 754
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v2

    .line 755
    .restart local v2    # "channel":Lcom/android/internal/telephony/cat/Channel;
    const-string/jumbo v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "channel protocolType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget v8, v2, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v9, 0x1

    if-eq v9, v8, :cond_2

    .line 757
    iget v8, v2, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    if-ne v12, v8, :cond_3

    .line 758
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cat/BipService;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 759
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->resetLocked()V

    .line 760
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/Channel;->closeChannel()I

    .line 761
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 763
    const/16 v8, -0x48

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    iget v8, v2, Lcom/android/internal/telephony/cat/Channel;->mChannelId:I

    or-int/lit8 v8, v8, 0x0

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/Channel;
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 774
    :catch_0
    move-exception v4

    .line 775
    .local v4, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "NPE, channel null."

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 780
    .end local v4    # "ne":Ljava/lang/NullPointerException;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 781
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v0, v8, [B

    .line 782
    .local v0, "additionalInfo":[B
    const/4 v3, 0x0

    :goto_4
    array-length v8, v0

    if-ge v3, v8, :cond_5

    .line 783
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v0, v3

    .line 782
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 785
    :cond_5
    const/16 v8, 0x82

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 786
    const/16 v8, 0x81

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 787
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 788
    invoke-virtual {v5, v11}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 789
    invoke-virtual {v5, v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    .line 790
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "onEventDownload: for channel status"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    check-cast v8, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_1

    .line 793
    .local v0, "additionalInfo":[B
    :cond_6
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "onEventDownload: No client channels are opened."

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private establishLink()I
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, 0x4

    const/4 v12, 0x7

    const/4 v11, 0x3

    .line 1339
    const/4 v10, 0x0

    .line 1340
    .local v10, "ret":I
    const/4 v0, 0x0

    .line 1342
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    if-ne v1, v11, :cond_3

    .line 1343
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-establishLink: establish a TCPServer link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cat/TcpServerChannel;

    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget v1, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mLinkMode:I

    .line 1346
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    .line 1347
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v4, v4, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    iget v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBufferSize:I

    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    check-cast v6, Lcom/android/internal/telephony/cat/CatService;

    move-object v7, p0

    .line 1345
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cat/TcpServerChannel;-><init>(IIIIILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/BipService;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1353
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cat/Channel;->openChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I

    move-result v10

    .line 1354
    if-eqz v10, :cond_0

    .line 1355
    if-ne v10, v11, :cond_2

    .line 1356
    :cond_0
    iput v13, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 1357
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/Channel;)I

    .line 1417
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_1
    :goto_0
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BM-establishLink: ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    return v10

    .line 1348
    :catch_0
    move-exception v9

    .line 1349
    .local v9, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-establishLink: NE,new TCP server channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1351
    return v14

    .line 1359
    .end local v9    # "ne":Ljava/lang/NullPointerException;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, v11}, Lcom/android/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 1360
    iput v12, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    goto :goto_0

    .line 1362
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1363
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-establishLink: establish a TCP link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cat/TcpChannel;

    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget v1, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mLinkMode:I

    .line 1366
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    .line 1367
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/android/internal/telephony/cat/BipService;->mBufferSize:I

    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    check-cast v7, Lcom/android/internal/telephony/cat/CatService;

    move-object v8, p0

    .line 1365
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/TcpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/BipService;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1377
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cat/Channel;->openChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I

    move-result v10

    .line 1378
    const/16 v1, 0xa

    if-eq v10, v1, :cond_1

    .line 1379
    if-eqz v10, :cond_4

    .line 1380
    if-ne v10, v11, :cond_6

    .line 1381
    :cond_4
    iput v13, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 1382
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/Channel;)I

    goto :goto_0

    .line 1368
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :catch_1
    move-exception v9

    .line 1369
    .restart local v9    # "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-establishLink: NE,new TCP client channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1371
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    if-nez v1, :cond_5

    .line 1372
    const/16 v1, 0x9

    return v1

    .line 1374
    :cond_5
    return v14

    .line 1384
    .end local v9    # "ne":Ljava/lang/NullPointerException;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    .line 1385
    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    const/4 v3, 0x2

    .line 1384
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 1386
    iput v12, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    goto/16 :goto_0

    .line 1389
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1391
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-establishLink: establish a UDP link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    :try_start_2
    new-instance v0, Lcom/android/internal/telephony/cat/UdpChannel;

    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget v1, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    .line 1394
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/android/internal/telephony/cat/BipService;->mBufferSize:I

    .line 1395
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    check-cast v7, Lcom/android/internal/telephony/cat/CatService;

    move-object v8, p0

    .line 1393
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/UdpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/BipService;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1401
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cat/Channel;->openChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I

    move-result v10

    .line 1402
    if-eqz v10, :cond_8

    .line 1403
    if-ne v10, v11, :cond_9

    .line 1404
    :cond_8
    iput v13, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 1405
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/Channel;)I

    goto/16 :goto_0

    .line 1396
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :catch_2
    move-exception v9

    .line 1397
    .restart local v9    # "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-establishLink: NE,new UDP client channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1399
    return v14

    .line 1407
    .end local v9    # "ne":Ljava/lang/NullPointerException;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    .line 1408
    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    const/4 v3, 0x1

    .line 1407
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 1409
    iput v12, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    goto/16 :goto_0

    .line 1412
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_a
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-establishLink: unsupported channel type"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const/4 v10, 0x4

    .line 1414
    iput v12, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    goto/16 :goto_0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 392
    const-string/jumbo v1, "connectivity"

    .line 391
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getDataConnectionFromSetting()I
    .locals 4

    .prologue
    .line 675
    const/4 v0, -0x1

    .line 678
    .local v0, "currentDataConnectionSimId":I
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "gprs_connection_setting"

    .line 679
    const/4 v3, -0x4

    .line 677
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 680
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Default Data Setting value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;I)Lcom/android/internal/telephony/cat/BipService;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    const/4 v4, 0x0

    .line 398
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInstance sim : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    if-nez v1, :cond_0

    .line 400
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    .line 401
    sget v1, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    new-array v1, v1, [Lcom/android/internal/telephony/cat/BipService;

    sput-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    .line 402
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    if-ge v0, v1, :cond_0

    .line 403
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    aput-object v4, v1, v0

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    .end local v0    # "i":I
    :cond_0
    if-ltz p2, :cond_1

    sget v1, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    if-le p2, v1, :cond_2

    .line 407
    :cond_1
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInstance invalid sim : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-object v4

    .line 410
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    aget-object v1, v1, p2

    if-nez v1, :cond_3

    .line 411
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    new-instance v2, Lcom/android/internal/telephony/cat/BipService;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/telephony/cat/BipService;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    aput-object v2, v1, p2

    .line 413
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    aget-object v1, v1, p2

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/BipService;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "simId"    # I
    .param p3, "cmdIf"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v3, 0x0

    .line 418
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInstance sim : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    sget-object v0, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    if-nez v0, :cond_0

    .line 420
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    .line 421
    sget v0, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    new-array v0, v0, [Lcom/android/internal/telephony/cat/BipService;

    sput-object v0, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    .line 422
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget v0, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    if-ge v6, v0, :cond_0

    .line 423
    sget-object v0, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    aput-object v3, v0, v6

    .line 422
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 426
    .end local v6    # "i":I
    :cond_0
    if-ltz p2, :cond_1

    sget v0, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    if-le p2, v0, :cond_2

    .line 427
    :cond_1
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInstance invalid sim : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-object v3

    .line 430
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    aget-object v0, v0, p2

    if-nez v0, :cond_3

    .line 431
    sget-object v7, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    new-instance v0, Lcom/android/internal/telephony/cat/BipService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/BipService;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    aput-object v0, v7, p2

    .line 433
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    aget-object v0, v0, p2

    return-object v0
.end method

.method private getUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "slodId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1422
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1424
    .local v0, "subId":[I
    aget v1, v0, v3

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 1427
    :cond_0
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-getUri: invalid subId."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .locals 11
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;
    .param p2, "isProactiveCmd"    # Z

    .prologue
    const/16 v10, 0xd

    const/4 v9, 0x0

    .line 535
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    new-instance v2, Lcom/android/internal/telephony/cat/BipCmdMessage;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/cat/BipCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 539
    .local v2, "cmdMsg":Lcom/android/internal/telephony/cat/BipCmdMessage;
    const/4 v5, 0x0

    .line 541
    .local v5, "response":Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/cat/BipService;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 599
    const-string/jumbo v7, "Unsupported command"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    return-void

    .line 543
    :pswitch_0
    const-string/jumbo v7, "SS-handleProactiveCommand: process OPEN_CHANNEL"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 545
    .local v0, "call_state":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    .line 546
    .local v1, "callmgr":Lcom/android/internal/telephony/CallManager;
    iget v7, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    .line 547
    .local v6, "subId":[I
    aget v7, v6, v9

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 548
    .local v4, "phoneId":I
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 549
    .local v3, "myPhone":Lcom/android/internal/telephony/Phone;
    if-nez v3, :cond_0

    .line 550
    const-string/jumbo v7, "myPhone is still null"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    .end local v0    # "call_state":Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v1    # "callmgr":Lcom/android/internal/telephony/CallManager;
    .end local v3    # "myPhone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phoneId":I
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "subId":[I
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrntCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 534
    return-void

    .line 553
    .restart local v0    # "call_state":Lcom/android/internal/telephony/PhoneConstants$State;
    .restart local v1    # "callmgr":Lcom/android/internal/telephony/CallManager;
    .restart local v3    # "myPhone":Lcom/android/internal/telephony/Phone;
    .restart local v4    # "phoneId":I
    .restart local v5    # "response":Landroid/os/Message;
    .restart local v6    # "subId":[I
    :cond_0
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v7

    .line 554
    const/4 v8, 0x2

    .line 553
    if-gt v7, v8, :cond_1

    .line 554
    if-eqz v1, :cond_1

    .line 555
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 556
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "call_state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v7, :cond_2

    .line 558
    const-string/jumbo v7, "SS-handleProactiveCommand: ME is busy on call"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    new-instance v7, Lcom/android/internal/telephony/cat/ChannelStatus;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/BipService;->getFreeChannelId()I

    move-result v8

    invoke-direct {v7, v8, v9, v9}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v7, v2, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 562
    iget-object v7, v2, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput v9, v7, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 564
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 565
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    .line 566
    const/4 v8, 0x6

    .line 565
    invoke-virtual {v7, v10, v8, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 567
    .local v5, "response":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 568
    return-void

    .line 571
    .local v5, "response":Landroid/os/Message;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SS-handleProactiveCommand: type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 572
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v8

    .line 571
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 572
    const-string/jumbo v8, ",or null callmgr"

    .line 571
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 575
    .local v5, "response":Landroid/os/Message;
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/cat/BipService;->openChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    goto :goto_0

    .line 578
    .end local v0    # "call_state":Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v1    # "callmgr":Lcom/android/internal/telephony/CallManager;
    .end local v3    # "myPhone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phoneId":I
    .end local v6    # "subId":[I
    .local v5, "response":Landroid/os/Message;
    :pswitch_1
    const-string/jumbo v7, "SS-handleProactiveCommand: process CLOSE_CHANNEL"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 580
    .local v5, "response":Landroid/os/Message;
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/cat/BipService;->closeChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 583
    .local v5, "response":Landroid/os/Message;
    :pswitch_2
    const-string/jumbo v7, "SS-handleProactiveCommand: process RECEIVE_DATA"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 585
    .local v5, "response":Landroid/os/Message;
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/cat/BipService;->receiveData(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 588
    .local v5, "response":Landroid/os/Message;
    :pswitch_3
    const-string/jumbo v7, "SS-handleProactiveCommand: process SEND_DATA"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 590
    .local v5, "response":Landroid/os/Message;
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/cat/BipService;->sendData(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 593
    .local v5, "response":Landroid/os/Message;
    :pswitch_4
    const-string/jumbo v7, "SS-handleProactiveCommand: process GET_CHANNEL_STATUS"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCmdMessage:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 595
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 596
    .local v5, "response":Landroid/os/Message;
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/cat/BipService;->getChannelStatus(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 541
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 9
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 457
    if-nez p1, :cond_0

    .line 458
    return-void

    .line 462
    :cond_0
    const/4 v7, 0x0

    .line 463
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_0

    .line 456
    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_1
    :goto_0
    return-void

    .line 466
    .restart local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_0
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_1

    .line 478
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_2

    .line 479
    const/4 v1, 0x1

    invoke-direct {p0, v7, v1}, Lcom/android/internal/telephony/cat/BipService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 467
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :catch_0
    move-exception v8

    .line 469
    .local v8, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrntCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrntCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/BipService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 484
    .end local v8    # "e":Ljava/lang/ClassCastException;
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_2
    iget-object v2, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/BipService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method private newRequest()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1110
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1111
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v2, Lcom/android/internal/telephony/cat/BipService$3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/BipService$3;-><init>(Lcom/android/internal/telephony/cat/BipService;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1164
    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 1165
    .local v1, "subId":[I
    aget v2, v1, v3

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1166
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 1169
    aget v3, v1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1166
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 1179
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const v4, 0xc350

    .line 1178
    invoke-virtual {v0, v2, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 1181
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "Start request network timer."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/BipService;->sendBipConnTimeOutMsg(Lcom/android/internal/telephony/cat/BipCmdMessage;)V

    .line 1109
    return-void

    .line 1172
    :cond_0
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    goto :goto_0
.end method

.method private releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 1199
    if-eqz p1, :cond_0

    .line 1200
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "releaseRequest"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1202
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1198
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 1204
    :cond_0
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "releaseRequest: networkCallback is null."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestRouteToHost()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1303
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "requestRouteToHost"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const/4 v1, 0x0

    .line 1305
    .local v1, "addressBytes":[B
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    if-eqz v2, :cond_0

    .line 1306
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 1311
    .local v1, "addressBytes":[B
    const/4 v0, 0x0

    .line 1312
    .local v0, "addr":I
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 1313
    const/4 v3, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    .line 1312
    or-int/2addr v2, v3

    .line 1314
    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 1312
    or-int/2addr v2, v3

    .line 1315
    aget-byte v3, v1, v4

    and-int/lit16 v3, v3, 0xff

    .line 1312
    or-int v0, v2, v3

    .line 1317
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v5, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    return v2

    .line 1308
    .end local v0    # "addr":I
    .local v1, "addressBytes":[B
    :cond_0
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "mDataDestinationAddress is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    return v4
.end method

.method private resetLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1189
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1190
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    .line 1188
    return-void
.end method

.method private sendBipConnTimeOutMsg(Lcom/android/internal/telephony/cat/BipCmdMessage;)V
    .locals 4
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;

    .prologue
    .line 1282
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1283
    .local v0, "bipTimerMsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1284
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xc350

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1281
    return-void
.end method

.method private sendBipDisconnectTimeOutMsg(Lcom/android/internal/telephony/cat/BipCmdMessage;)V
    .locals 4
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;

    .prologue
    .line 1288
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1289
    .local v0, "bipTimerMsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1290
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1287
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 8
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "includeAdditionalInfo"    # Z
    .param p4, "additionalInfo"    # I
    .param p5, "resp"    # Lcom/android/internal/telephony/cat/ResponseData;

    .prologue
    const/4 v7, 0x0

    .line 609
    if-nez p1, :cond_0

    .line 610
    const-string/jumbo v5, "SS-sendTR: cmdDet is null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    return-void

    .line 614
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SS-sendTR: command type is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 618
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 619
    .local v4, "tag":I
    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v5, :cond_1

    .line 620
    or-int/lit16 v4, v4, 0x80

    .line 622
    :cond_1
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 623
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 624
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 625
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 626
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 635
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 636
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 637
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 638
    const/16 v5, 0x82

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 639
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 642
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 643
    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v5, :cond_2

    .line 644
    or-int/lit16 v4, v4, 0x80

    .line 646
    :cond_2
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 647
    if-eqz p3, :cond_4

    const/4 v2, 0x2

    .line 648
    .local v2, "length":I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 649
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 652
    if-eqz p3, :cond_3

    .line 653
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 657
    :cond_3
    if-eqz p5, :cond_5

    .line 658
    const-string/jumbo v5, "SS-sendTR: write response data into TR"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 665
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 666
    .local v3, "rawData":[B
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "hexString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TERMINAL RESPONSE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 607
    return-void

    .line 647
    .end local v1    # "hexString":Ljava/lang/String;
    .end local v2    # "length":I
    .end local v3    # "rawData":[B
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "length":I
    goto :goto_0

    .line 662
    :cond_5
    const-string/jumbo v5, "SS-sendTR: null resp."

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    .line 1451
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "BM-setApnParams: enter"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    if-nez p1, :cond_0

    .line 1453
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "BM-setApnParams: No apn parameters"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    return-void

    .line 1457
    :cond_0
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget v3, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cat/BipService;->getUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 1458
    .local v2, "uri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 1459
    .local v12, "numeric":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1460
    .local v9, "mcc":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1461
    .local v10, "mnc":Ljava/lang/String;
    const-string/jumbo v7, "supl"

    .line 1462
    .local v7, "apnType":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v13

    .line 1468
    .local v13, "subId":[I
    const/4 v1, 0x0

    aget v1, v13, v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1469
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v3, 0x0

    aget v3, v13, v3

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v12

    .line 1471
    .end local v12    # "numeric":Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    .line 1472
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "BM-setApnParams: Invalid uri"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_3

    .line 1476
    const/4 v8, 0x0

    .line 1477
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-virtual {v12, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1478
    .local v9, "mcc":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1479
    .local v10, "mnc":Ljava/lang/String;
    const-string/jumbo v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BM-setApnParams: apn = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "mcc = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", mnc = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "apn = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1481
    const-string/jumbo v3, " and "

    .line 1480
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1481
    const-string/jumbo v3, "numeric"

    .line 1480
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1481
    const-string/jumbo v3, " = \'"

    .line 1480
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1481
    const-string/jumbo v3, "\'"

    .line 1480
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1482
    const-string/jumbo v3, " and "

    .line 1480
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1482
    const-string/jumbo v3, "sub_id"

    .line 1480
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1482
    const-string/jumbo v3, " = \'"

    .line 1480
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1482
    const/4 v3, 0x0

    aget v3, v13, v3

    .line 1480
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1482
    const-string/jumbo v3, "\'"

    .line 1480
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1484
    .local v4, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1485
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1484
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1487
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 1488
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1489
    .local v14, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    const-string/jumbo v3, "__M-BIP__"

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    const-string/jumbo v1, "apn"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    const-string/jumbo v1, "user"

    move-object/from16 v0, p2

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    const-string/jumbo v1, "password"

    move-object/from16 v0, p3

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    const-string/jumbo v1, "type"

    invoke-virtual {v14, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    const-string/jumbo v1, "mcc"

    invoke-virtual {v14, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const-string/jumbo v1, "mnc"

    invoke-virtual {v14, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const-string/jumbo v1, "numeric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const-string/jumbo v1, "sub_id"

    const/4 v3, 0x0

    aget v3, v13, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1499
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 1502
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "BM-setApnParams: insert one record"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1504
    .local v11, "newRow":Landroid/net/Uri;
    if-eqz v11, :cond_4

    .line 1505
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "insert a new record into db"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsApnInserting:Z

    .line 1514
    .end local v11    # "newRow":Landroid/net/Uri;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1518
    .end local v4    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "mcc":Ljava/lang/String;
    .end local v10    # "mnc":Ljava/lang/String;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_3
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "BM-setApnParams: exit"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    return-void

    .line 1508
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "mcc":Ljava/lang/String;
    .restart local v10    # "mnc":Ljava/lang/String;
    .restart local v11    # "newRow":Landroid/net/Uri;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "Fail to insert apn params into db"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1511
    .end local v11    # "newRow":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "BM-setApnParams: do not update one record"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCurrentChannelStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 1295
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/cat/BipChannelManager;->updateChannelStatus(II)V

    .line 1296
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput p1, v1, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    :goto_0
    return-void

    .line 1297
    :catch_0
    move-exception v0

    .line 1298
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCurrentChannelStatus id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public acquireNetwork()V
    .locals 6

    .prologue
    .line 799
    const/4 v1, 0x2

    .line 800
    .local v1, "result":I
    const/4 v2, 0x0

    .line 802
    .local v2, "ret":I
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 803
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_1

    .line 805
    const-string/jumbo v3, "[BIP]"

    const-string/jumbo v4, "acquireNetwork: already available"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v4, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v0

    .line 807
    .local v0, "channel":Lcom/android/internal/telephony/cat/Channel;
    if-nez v0, :cond_0

    .line 808
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->connect()V

    .line 810
    :cond_0
    return-void

    .line 813
    .end local v0    # "channel":Lcom/android/internal/telephony/cat/Channel;
    :cond_1
    const-string/jumbo v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestNetwork: slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->newRequest()V

    .line 798
    return-void
.end method

.method public closeChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .locals 11
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x7

    .line 998
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-closeChannel: enter"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const/4 v3, 0x0

    .line 1001
    .local v3, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget v1, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCloseCid:I

    .line 1003
    .local v1, "cId":I
    iput v9, p2, Landroid/os/Message;->arg1:I

    .line 1004
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 1005
    if-ltz v1, :cond_0

    if-ge v8, v1, :cond_1

    .line 1006
    :cond_0
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-closeChannel: channel id is wrong"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    iput v8, p2, Landroid/os/Message;->arg1:I

    .line 1054
    .end local v3    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :goto_0
    iput-boolean v9, p0, Lcom/android/internal/telephony/cat/BipService;->isParamsValid:Z

    .line 1055
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    if-nez v5, :cond_9

    .line 1056
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1057
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1061
    :goto_1
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-closeChannel: exit"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    return-void

    .line 1011
    .restart local v3    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    .line 1010
    if-nez v5, :cond_2

    .line 1012
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1049
    .end local v3    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :catch_0
    move-exception v2

    .line 1050
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BM-closeChannel: IndexOutOfBoundsException cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iput v8, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 1014
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    .line 1013
    if-ne v7, v5, :cond_3

    .line 1015
    const/16 v5, 0x8

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 1017
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v3

    .line 1018
    .local v3, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    if-nez v3, :cond_4

    .line 1019
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-closeChannel: channel has already been closed"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 1023
    :cond_4
    const/4 v4, 0x0

    .line 1024
    .local v4, "tcpSerCh":Lcom/android/internal/telephony/cat/TcpServerChannel;
    iget v5, v3, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    if-ne v10, v5, :cond_7

    .line 1025
    instance-of v5, v3, Lcom/android/internal/telephony/cat/TcpServerChannel;

    if-eqz v5, :cond_5

    .line 1026
    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object v4, v0

    .line 1027
    .local v4, "tcpSerCh":Lcom/android/internal/telephony/cat/TcpServerChannel;
    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCloseBackToTcpListen:Z

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/TcpServerChannel;->setCloseBackToTcpListen(Z)V

    .line 1035
    .end local v4    # "tcpSerCh":Lcom/android/internal/telephony/cat/TcpServerChannel;
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->deleteApnParams()V

    .line 1036
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/Channel;->closeChannel()I

    move-result v5

    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 1037
    iget v5, v3, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    if-ne v10, v5, :cond_8

    .line 1038
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/TcpServerChannel;->isCloseBackToTcpListen()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1039
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 1045
    :cond_6
    :goto_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    .line 1046
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    goto/16 :goto_0

    .line 1030
    .local v4, "tcpSerCh":Lcom/android/internal/telephony/cat/TcpServerChannel;
    :cond_7
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-closeChannel: stop data connection"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    .line 1032
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/BipService;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1033
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->resetLocked()V

    goto :goto_2

    .line 1042
    .end local v4    # "tcpSerCh":Lcom/android/internal/telephony/cat/TcpServerChannel;
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/BipChannelManager;->removeChannel(I)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1059
    .end local v3    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipService;->sendBipDisconnectTimeOutMsg(Lcom/android/internal/telephony/cat/BipCmdMessage;)V

    goto/16 :goto_1
.end method

.method public dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "i":I
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispose slotId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    if-eqz v1, :cond_2

    .line 440
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 441
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    aput-object v4, v1, v2

    .line 444
    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 445
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 450
    :cond_1
    sget v1, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    if-ne v0, v1, :cond_2

    .line 451
    sput-object v4, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    .line 436
    :cond_2
    return-void

    .line 444
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBipChannelManager()Lcom/android/internal/telephony/cat/BipChannelManager;
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    return-object v0
.end method

.method public getChannelId()I
    .locals 3

    .prologue
    .line 1556
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BM-getChannelId: channel id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    iget v0, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    return v0
.end method

.method public getChannelStatus(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .locals 6
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1260
    const/4 v0, 0x1

    .line 1261
    .local v0, "cId":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    .local v1, "csList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ChannelStatus;>;"
    :goto_0
    const/4 v3, 0x7

    if-gt v0, v3, :cond_1

    .line 1265
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cat/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1266
    const-string/jumbo v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getChannelStatus: cId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1271
    :catch_0
    move-exception v2

    .line 1272
    .local v2, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "[BIP]"

    const-string/jumbo v4, "getChannelStatus: NE"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1275
    .end local v2    # "ne":Ljava/lang/NullPointerException;
    :cond_1
    iput-object v1, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusList:Ljava/util/List;

    .line 1259
    const/4 v3, 0x0

    .line 1276
    iput v3, p2, Landroid/os/Message;->arg1:I

    .line 1277
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1278
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1258
    return-void
.end method

.method public getFreeChannelId()I
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipChannelManager;->getFreeChannelId()I

    move-result v0

    return v0
.end method

.method hasPsEvent(I)Z
    .locals 1
    .param p1, "eventId"    # I

    .prologue
    .line 515
    packed-switch p1, :pswitch_data_0

    .line 525
    const/4 v0, 0x0

    return v0

    .line 519
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    return v0

    .line 521
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    return v0

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isTestSim()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1595
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isTestSim slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    iget v0, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    if-nez v0, :cond_0

    .line 1597
    const-string/jumbo v0, "gsm.sim.ril.testsim"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1598
    const-string/jumbo v1, "1"

    .line 1597
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1599
    return v3

    .line 1600
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    if-ne v3, v0, :cond_1

    .line 1601
    const-string/jumbo v0, "gsm.sim.ril.testsim.2"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1602
    const-string/jumbo v1, "1"

    .line 1601
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1603
    return v3

    .line 1604
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 1605
    const-string/jumbo v0, "gsm.sim.ril.testsim.3"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1606
    const-string/jumbo v1, "1"

    .line 1605
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1607
    return v3

    .line 1608
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_3

    .line 1609
    const-string/jumbo v0, "gsm.sim.ril.testsim.4"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1610
    const-string/jumbo v1, "1"

    .line 1609
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1611
    return v3

    .line 1613
    :cond_3
    return v4
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .locals 12
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v6, 0x0

    .line 818
    const/4 v2, 0x2

    .line 819
    .local v2, "result":I
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v8, "BM-openChannel: enter"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const/4 v3, 0x0

    .line 821
    .local v3, "ret":I
    const/4 v0, 0x0

    .line 829
    .local v0, "channel":Lcom/android/internal/telephony/cat/Channel;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipService;->checkDataCapability(Lcom/android/internal/telephony/cat/BipCmdMessage;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 830
    new-instance v5, Lcom/android/internal/telephony/cat/ChannelStatus;

    invoke-direct {v5, v6, v6, v6}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 833
    iput v11, p2, Landroid/os/Message;->arg1:I

    .line 834
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 835
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 836
    return-void

    .line 839
    :cond_0
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v8, "BM-openChannel: init channel status object"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    .line 843
    iget-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    if-nez v5, :cond_1

    .line 844
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-openChannel: transport protocol is null"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    return-void

    .line 848
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget-object v8, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v8, v8, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/BipChannelManager;->acquireChannelId(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    .line 849
    iget v5, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    if-nez v5, :cond_2

    .line 850
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-openChannel: acquire channel id = 0"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iput v11, p2, Landroid/os/Message;->arg1:I

    .line 852
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 853
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 854
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 855
    return-void

    .line 857
    :cond_2
    new-instance v5, Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v8, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-direct {v5, v8, v6, v6}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 860
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 862
    iget-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 863
    iget-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    if-eqz v5, :cond_6

    .line 864
    const-string/jumbo v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BM-openChannel: bearer type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v9, v9, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :goto_0
    iget v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    iput v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBufferSize:I

    .line 870
    const-string/jumbo v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BM-openChannel: buffer size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 873
    iget-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    if-eqz v5, :cond_7

    .line 874
    const-string/jumbo v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BM-openChannel: local address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 875
    iget-object v9, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    .line 874
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :goto_1
    iget-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    .line 881
    const-string/jumbo v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BM-openChannel: transport protocol type/port "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 882
    iget-object v9, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v9, v9, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    .line 881
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 882
    const-string/jumbo v9, "/"

    .line 881
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 883
    iget-object v9, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v9, v9, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    .line 881
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 886
    iget-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    if-eqz v5, :cond_8

    .line 887
    const-string/jumbo v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BM-openChannel: dest address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 888
    iget-object v9, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    .line 887
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :goto_2
    iget-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    .line 894
    iget-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 895
    const-string/jumbo v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BM-openChannel: apn "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :goto_3
    iget-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLogin:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    .line 901
    const-string/jumbo v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BM-openChannel: login "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLogin:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mPwd:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    .line 903
    const-string/jumbo v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BM-openChannel: password "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mPwd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_a

    move v5, v6

    :goto_4
    iput v5, p0, Lcom/android/internal/telephony/cat/BipService;->mLinkMode:I

    .line 909
    const-string/jumbo v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BM-openChannel: mLinkMode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    move v7, v6

    :cond_3
    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/BipService;->mAutoReconnected:Z

    .line 913
    const-string/jumbo v5, "ril.pdn.reuse"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, "isPdnReuse":Ljava/lang/String;
    const-string/jumbo v5, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BM-openChannel: isPdnReuse: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    if-eqz v5, :cond_d

    .line 917
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v5, v5, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    if-ne v5, v10, :cond_b

    .line 919
    const-string/jumbo v5, "ril.pdn.reuse"

    const-string/jumbo v7, "2"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :cond_4
    :goto_5
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v5, v7, v8}, Lcom/android/internal/telephony/cat/BipService;->setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string/jumbo v5, "gsm.stk.bip"

    const-string/jumbo v7, "1"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string/jumbo v5, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BM-openChannel: call startUsingNetworkFeature:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v7, "MAXCHANNELID :7"

    invoke-static {v5, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    if-ne v10, v5, :cond_f

    .line 960
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->establishLink()I

    move-result v3

    .line 962
    if-eqz v3, :cond_5

    if-ne v3, v10, :cond_e

    .line 964
    :cond_5
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-openChannel: channel is activated"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v6, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v0

    .line 966
    .local v0, "channel":Lcom/android/internal/telephony/cat/Channel;
    iget-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 967
    iget-object v6, v0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v6, v6, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 966
    iput v6, v5, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 973
    .end local v0    # "channel":Lcom/android/internal/telephony/cat/Channel;
    :goto_6
    iput v3, p2, Landroid/os/Message;->arg1:I

    .line 974
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iput-object v5, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 975
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 994
    :goto_7
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-openChannel: exit"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    return-void

    .line 866
    .end local v1    # "isPdnReuse":Ljava/lang/String;
    .local v0, "channel":Lcom/android/internal/telephony/cat/Channel;
    :cond_6
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v8, "BM-openChannel: bearer type is null"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 877
    :cond_7
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v8, "BM-openChannel: local address is null"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 890
    :cond_8
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v8, "BM-openChannel: dest address is null"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 897
    :cond_9
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v8, "BM-openChannel: apn is null."

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    move v5, v7

    .line 907
    goto/16 :goto_4

    .line 922
    .restart local v1    # "isPdnReuse":Ljava/lang/String;
    :cond_b
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c

    .line 923
    const-string/jumbo v5, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BM-openChannel: override apn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const-string/jumbo v5, "ril.pdn.overrideApn"

    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_c
    const-string/jumbo v5, "ril.pdn.reuse"

    const-string/jumbo v7, "0"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 929
    :cond_d
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    if-eq v10, v5, :cond_4

    .line 930
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v7, 0x4

    if-eq v7, v5, :cond_4

    .line 931
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    if-eq v11, v5, :cond_4

    .line 932
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-openChannel: miss bearer info."

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iput v11, p2, Landroid/os/Message;->arg1:I

    .line 934
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iput-object v5, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 935
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 936
    return-void

    .line 969
    :cond_e
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v7, "BM-openChannel: channel is un-activated"

    invoke-static {v5, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput v6, v5, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    goto/16 :goto_6

    .line 981
    :cond_f
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/BipService;->mIsApnInserting:Z

    if-eqz v5, :cond_10

    .line 982
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v7, "BM-openChannel: startUsingNetworkFeature delay trigger."

    invoke-static {v5, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 984
    .local v4, "timerMsg":Landroid/os/Message;
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 985
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 986
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/BipService;->mIsApnInserting:Z

    goto/16 :goto_7

    .line 991
    .end local v4    # "timerMsg":Landroid/os/Message;
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/BipService;->acquireNetwork()V

    goto/16 :goto_7
.end method

.method public openChannelCompleted(ILcom/android/internal/telephony/cat/Channel;)V
    .locals 6
    .param p1, "ret"    # I
    .param p2, "lChannel"    # Lcom/android/internal/telephony/cat/Channel;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1565
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BM-openChannelCompleted: ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    if-ne p1, v5, :cond_0

    .line 1568
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mBufferSize:I

    iput v2, v1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 1570
    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v5, :cond_3

    .line 1571
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 1572
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/Channel;)I

    .line 1577
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v2, p2, Lcom/android/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 1579
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    if-nez v1, :cond_2

    .line 1580
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 1581
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    .line 1582
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    .line 1583
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 1582
    const/16 v3, 0xd

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1584
    .local v0, "response":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1585
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1586
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1564
    .end local v0    # "response":Landroid/os/Message;
    :cond_2
    return-void

    .line 1574
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 1575
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    goto :goto_0
.end method

.method public receiveData(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .locals 9
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x5

    .line 1065
    iget v2, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelDataLength:I

    .line 1066
    .local v2, "requestCount":I
    new-instance v3, Lcom/android/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 1067
    .local v3, "result":Lcom/android/internal/telephony/cat/ReceiveDataResult;
    const/4 v7, 0x0

    .line 1068
    .local v7, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget v6, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mReceiveDataCid:I

    .line 1070
    .local v6, "cId":I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v7

    .line 1071
    .local v7, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    const-string/jumbo v0, "[BIP]"

    const-string/jumbo v1, "BM-receiveData: receiveData enter"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    if-nez v7, :cond_0

    .line 1074
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lChannel is null cid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 1076
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1077
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1078
    return-void

    .line 1080
    :cond_0
    iget v0, v7, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 1081
    iget v0, v7, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1082
    :cond_1
    const/16 v0, 0xed

    if-le v2, v0, :cond_2

    .line 1083
    const-string/jumbo v0, "[BIP]"

    const-string/jumbo v1, "BM-receiveData: Modify channel data length to MAX_APDU_SIZE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const/16 v2, 0xed

    .line 1086
    :cond_2
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;-><init>(Lcom/android/internal/telephony/cat/BipService;ILcom/android/internal/telephony/cat/ReceiveDataResult;Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1088
    .local v8, "recvThread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1064
    .end local v8    # "recvThread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 1091
    :cond_3
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BM-receiveData: Channel status is invalid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 1093
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1094
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendData(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1100
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/cat/BipService$SendDataThread;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/cat/BipService$SendDataThread;-><init>(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1102
    .local v0, "rt":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1103
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "sendData: Leave"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    return-void
.end method

.method public setConnMgrTimeoutFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1710
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    .line 1709
    return-void
.end method

.method public setOpenInProgressFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1713
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 1712
    return-void
.end method

.method setSetupEventList(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 512
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipService;->checkPSEvent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 510
    return-void
.end method
