.class public final Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_TMP_GO:Ljava/lang/String; = "com.android.server.WifiManager.action.CLEAR_TMP_GO"

.field private static final BASE:I = 0x23000

.field public static final BLOCK_DISCOVERY:I = 0x2300f

.field private static final CLEAR_LISTEN_FLAG_REQUEST:I = 0x2

.field private static final CLEAR_OPERATION_MS:J = 0x1d4c0L

.field private static final CLEAR_TMP_GO_REQUEST:I = 0x1

.field private static final CONNECTED_DISCOVER_TIMEOUT_S:I = 0x19

.field private static final DBG:Z = true

.field private static final DHCP_INFO_FILE:Ljava/lang/String; = "/data/misc/dhcp/dnsmasq.p2p0.leases"

.field public static final DISABLED:I = 0x0

.field public static final DISABLE_P2P_TIMED_OUT:I = 0x23006

.field private static final DISABLE_P2P_WAIT_TIME_MS:I = 0x1388

.field public static final DISCONNECT_WIFI_REQUEST:I = 0x2300c

.field public static final DISCONNECT_WIFI_RESPONSE:I = 0x2300d

.field private static final DISCOVER_TIMEOUT_S:I = 0x78

.field private static final DROP_WIFI_USER_ACCEPT:I = 0x23004

.field private static final DROP_WIFI_USER_REJECT:I = 0x23005

.field public static final ENABLED:I = 0x1

.field public static final FAST_CONNECT_FIND_GO_TIMED_OUT:I = 0x23009

.field private static final FAST_CONNECT_FIND_GO_WAIT_TIME_MS:I = 0x7530

.field private static final FAST_DISCOVER_TIMEOUT_S:I = 0x7b

.field private static final FAST_SCAN_INTERVAL_TIME_MS:I = 0xbb8

.field private static final FORM_GROUP:Ljava/lang/Boolean;

.field private static final GC_IP_RANGE:[Ljava/lang/String;

.field public static final GROUP_CREATING_TIMED_OUT:I = 0x23001

.field private static final GROUP_CREATING_WAIT_TIME_MS:I = 0x1d4c0

.field private static final GROUP_IDLE_TIME_S:I = 0xa

.field private static final JOIN_GROUP:Ljava/lang/Boolean;

.field private static final MTK_NFC_WFA_CFG_TAG_WRITE_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.cfg.tag.WRITE_ACTION"

.field private static final MTK_NFC_WFA_P2P_EXTRA_HR_P2P_DEV_INFO:Ljava/lang/String; = "mtk.nfc.wfa.p2p.extra.HR_P2P_DEV_INFO"

.field private static final MTK_NFC_WFA_P2P_EXTRA_HS_P2P_DEV_INFO:Ljava/lang/String; = "mtk.nfc.wfa.p2p.extra.HS_P2P_DEV_INFO"

.field private static final MTK_NFC_WFA_P2P_HR_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.p2p.HR_ACTION"

.field private static final MTK_NFC_WFA_P2P_HR_RECEIVE_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.p2p.HR_RECEIVE_ACTION"

.field private static final MTK_NFC_WFA_P2P_HS_RECEIVE_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.p2p.HS_RECEIVE_ACTION"

.field private static final MTK_NFC_WFA_TAG_EXTRA_DEV_INFO:Ljava/lang/String; = "mtk.nfc.wfa.tag.extra.DEV_INFO"

.field private static final MTK_NFC_WFA_TAG_RECEIVE_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.tag.RECEIVE_ACTION"

.field private static final MTK_NFC_WFA_TAG_WRITE_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.tag.WRITE_ACTION"

.field private static final MTK_WPS_NFC_TESTBED_EXTRA_PASSWORD:Ljava/lang/String; = "mtk.wps.nfc.testbed.extra.password"

.field private static final MTK_WPS_NFC_TESTBED_P2P_AUTOGO_AS_SEL_ACTION:Ljava/lang/String; = "mtk.wps.nfc.testbed.p2pgo.as.sel"

.field private static final M_CMD_NFC_HANDOVER_READ:I = 0x23015

.field private static final M_CMD_NFC_TAG_READ:I = 0x23014

.field private static final M_P2P_CONN_FOR_INVITE_RES_INFO_UNAVAILABLE:I = 0x23017

.field private static final M_P2P_DEVICE_FOUND_INVITATION:I = 0x23016

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field private static final NO_RELOAD:Ljava/lang/Boolean;

.field public static final P2P_ACTIVE:I = 0x0

.field public static final P2P_CONNECTION_CHANGED:I = 0x2300b

.field public static final P2P_FAST_PS:I = 0x2

.field public static final P2P_MAX_PS:I = 0x1

.field private static final PEER_CONNECTION_USER_ACCEPT:I = 0x23002

.field private static final PEER_CONNECTION_USER_REJECT:I = 0x23003

.field private static final RECONN_FOR_INVITE_RES_INFO_UNAVAILABLE_TIME_MS:I = 0x1d4c0

.field private static final RELOAD:Ljava/lang/Boolean;

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "192.168.49.1"

.field public static final SET_COUNTRY_CODE:I = 0x23010

.field public static final SET_MIRACAST_MODE:I = 0x2300e

.field private static final STOP_P2P_MONITOR_TIMED_OUT:I = 0x2300a

.field private static final STOP_P2P_MONITOR_WAIT_TIME_MS:I = 0x1388

.field private static final SUBMASK:Ljava/lang/String; = "255.255.255.0"

.field private static final TAG:Ljava/lang/String; = "WifiP2pService"

.field private static final UNKNOWN_COMMAND:Ljava/lang/String; = "UNKNOWN COMMAND"

.field private static final VENDOR_IE_ALL_FRAME_TAG:I = 0x63

.field private static final VENDOR_IE_FRAME_ID_AMOUNTS:I = 0xc

.field private static final VENDOR_IE_MTK_OUI:Ljava/lang/String; = "000ce7"

.field private static final VENDOR_IE_OUI_TYPE__CROSSMOUNT:Ljava/lang/String; = "33"

.field private static final VENDOR_IE_TAG:Ljava/lang/String; = "dd"

.field private static final WFD_DONGLE_USE_P2P_INVITE:Ljava/lang/Boolean;

.field private static mDisableP2pTimeoutIndex:I

.field private static mFastConnectFindGoTimeOutIndex:I

.field private static mGroupCreatingTimeoutIndex:I

.field private static final mMtkWpsp2pnfcSupport:Z

.field private static mStopP2pMonitorTimeoutIndex:I


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutonomousGroup:Z

.field private mBeamPlusStart:Z

.field private mClearTmpGoIntent:Landroid/app/PendingIntent;

.field private mClientHandler:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

.field private mClientInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mClientIp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectToPeer:Z

.field private mContext:Landroid/content/Context;

.field private mCrossmountEnabled:Z

.field private mCrossmountIntention:Z

.field private mCrossmountSessionInfo:Ljava/lang/String;

.field private mDelayReconnectForInfoUnavailable:Z

.field private mDeviceCapa:I

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDiscoveryBlocked:Z

.field private mDiscoveryPostponed:Z

.field private mDiscoveryStarted:Z

.field private mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

.field private mFoundGo:Z

.field private mFoundGoTimeOut:Z

.field private mGcFastConnectEnaled:Z

.field private mGoFastConnectEnaled:Z

.field private mGroupRemoveReason:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field private mInterface:Ljava/lang/String;

.field private mJoinExistingGroup:Z

.field private mLastSetCountryCode:Ljava/lang/String;

.field private mListening:Z

.field private mMccSupport:Z

.field private mMiracastMode:I

.field mNegoChannelConflict:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mP2pOperFreq:I

.field private mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

.field private final mP2pSupported:Z

.field private mPersistentGroupUsed:Z

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mRestartFastConnectAsGc:Z

.field private mRestartFastConnectAsGo:Z

.field private mServiceDiscReqId:Ljava/lang/String;

.field private mServiceTransactionId:B

.field private mTemporarilyDisconnectedWifi:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mTmpGcIp:Ljava/lang/String;

.field private mTmpGoAddress:Ljava/lang/String;

.field private mTmpGoIp:Ljava/lang/String;

.field private mUpdatePeerForInvited:Z

.field private mWaitingForHrToken:Z

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->GC_IP_RANGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->NO_RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCrossmountEnabled:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCrossmountIntention:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCrossmountSessionInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDelayReconnectForInfoUnavailable:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDeviceCapa:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic -get16()I
    .locals 1

    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    return v0
.end method

.method static synthetic -get2()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get20()I
    .locals 1

    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectFindGoTimeOutIndex:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGo:Z

    return v0
.end method

.method static synthetic -get23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGoTimeOut:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGcFastConnectEnaled:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGoFastConnectEnaled:Z

    return v0
.end method

.method static synthetic -get26()I
    .locals 1

    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic -get27(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupRemoveReason:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->WFD_DONGLE_USE_P2P_INVITE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMccSupport:Z

    return v0
.end method

.method static synthetic -get31(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMiracastMode:I

    return v0
.end method

.method static synthetic -get32()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMtkWpsp2pnfcSupport:Z

    return v0
.end method

.method static synthetic -get33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I

    return v0
.end method

.method static synthetic -get35(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    return-object v0
.end method

.method static synthetic -get36(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPersistentGroupUsed:Z

    return v0
.end method

.method static synthetic -get37(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get38(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGc:Z

    return v0
.end method

.method static synthetic -get39(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGo:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z

    return v0
.end method

.method static synthetic -get40(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get41(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic -get42()I
    .locals 1

    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mStopP2pMonitorTimeoutIndex:I

    return v0
.end method

.method static synthetic -get43(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    return v0
.end method

.method static synthetic -get44(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get45(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGcIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get46(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGoAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get47(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGoIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get48(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mUpdatePeerForInvited:Z

    return v0
.end method

.method static synthetic -get49(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWaitingForHrToken:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBeamPlusStart:Z

    return v0
.end method

.method static synthetic -get50(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get51(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientIp:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectToPeer:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z

    return p1
.end method

.method static synthetic -set10(I)I
    .locals 0

    sput p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    return p0
.end method

.method static synthetic -set11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    return p1
.end method

.method static synthetic -set14(I)I
    .locals 0

    sput p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectFindGoTimeOutIndex:I

    return p0
.end method

.method static synthetic -set15(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    return-object p1
.end method

.method static synthetic -set16(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGo:Z

    return p1
.end method

.method static synthetic -set17(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGoTimeOut:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGcFastConnectEnaled:Z

    return p1
.end method

.method static synthetic -set19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGoFastConnectEnaled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBeamPlusStart:Z

    return p1
.end method

.method static synthetic -set20(I)I
    .locals 0

    sput p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    return p0
.end method

.method static synthetic -set21(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupRemoveReason:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object p1
.end method

.method static synthetic -set22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mJoinExistingGroup:Z

    return p1
.end method

.method static synthetic -set23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set24(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMccSupport:Z

    return p1
.end method

.method static synthetic -set25(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMiracastMode:I

    return p1
.end method

.method static synthetic -set26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I

    return p1
.end method

.method static synthetic -set27(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPersistentGroupUsed:Z

    return p1
.end method

.method static synthetic -set28(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGc:Z

    return p1
.end method

.method static synthetic -set29(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGo:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClearTmpGoIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -set30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set31(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;B)B
    .locals 0

    iput-byte p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    return p1
.end method

.method static synthetic -set32(I)I
    .locals 0

    sput p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mStopP2pMonitorTimeoutIndex:I

    return p0
.end method

.method static synthetic -set33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    return p1
.end method

.method static synthetic -set34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGcIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set35(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGoAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set36(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGoIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set37(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mUpdatePeerForInvited:Z

    return p1
.end method

.method static synthetic -set38(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWaitingForHrToken:Z

    return p1
.end method

.method static synthetic -set39(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectToPeer:Z

    return p1
.end method

.method static synthetic -set40(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCrossmountEnabled:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCrossmountIntention:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCrossmountSessionInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDeviceCapa:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;[B)Ljava/lang/String;
    .locals 1
    .param p1, "src"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getSsidPostfix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->MsgHandledLog(Ljava/lang/Object;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->sendNfcConfigTokenBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->sendNfcRequestTokenBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->sendNfcSelectTokenBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->sendNfcWpsConfigTokenBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->JOIN_GROUP:Ljava/lang/Boolean;

    .line 149
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->FORM_GROUP:Ljava/lang/Boolean;

    .line 151
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;

    .line 152
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->NO_RELOAD:Ljava/lang/Boolean;

    .line 156
    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    .line 159
    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    .line 287
    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectFindGoTimeOutIndex:I

    .line 335
    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mStopP2pMonitorTimeoutIndex:I

    .line 338
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->WFD_DONGLE_USE_P2P_INVITE:Ljava/lang/Boolean;

    .line 342
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "192.168.49.2"

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.3"

    aput-object v1, v0, v3

    const-string/jumbo v1, "192.168.49.4"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.5"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 343
    const-string/jumbo v1, "192.168.49.6"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.7"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.8"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.9"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.10"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.11"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 342
    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->GC_IP_RANGE:[Ljava/lang/String;

    .line 357
    const-string/jumbo v0, "ro.mtk_wifiwpsp2p_nfc_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMtkWpsp2pnfcSupport:Z

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 571
    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    .line 145
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 238
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 264
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z

    .line 268
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    .line 271
    iput-byte v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    .line 278
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;

    .line 310
    new-instance v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-direct {v1}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .line 311
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGcFastConnectEnaled:Z

    .line 312
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGoFastConnectEnaled:Z

    .line 313
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGo:Z

    .line 314
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGoTimeOut:Z

    .line 315
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGo:Z

    .line 316
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGc:Z

    .line 320
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupRemoveReason:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 323
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBeamPlusStart:Z

    .line 326
    iput v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMiracastMode:I

    .line 351
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientIp:Ljava/util/HashMap;

    .line 354
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWaitingForHrToken:Z

    .line 355
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mListening:Z

    .line 388
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I

    .line 391
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNegoChannelConflict:Z

    .line 394
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectToPeer:Z

    .line 395
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMccSupport:Z

    .line 398
    iput-boolean v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDelayReconnectForInfoUnavailable:Z

    .line 402
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mUpdatePeerForInvited:Z

    .line 405
    iput-boolean v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPersistentGroupUsed:Z

    .line 406
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCrossmountEnabled:Z

    .line 407
    iput-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCrossmountIntention:Z

    .line 408
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCrossmountSessionInfo:Ljava/lang/String;

    .line 572
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 575
    const-string/jumbo v1, "p2p0"

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInterface:Ljava/lang/String;

    .line 576
    new-instance v1, Landroid/net/NetworkInfo;

    const-string/jumbo v2, "WIFI_P2P"

    const-string/jumbo v3, ""

    const/16 v4, 0xd

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 578
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 579
    const-string/jumbo v2, "android.hardware.wifi.direct"

    .line 578
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pSupported:Z

    .line 581
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 582
    const v3, 0x104001d

    .line 581
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 584
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "WifiP2pService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, "wifiP2pThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 586
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientHandler:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

    .line 588
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string/jumbo v2, "WifiP2pService"

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pSupported:Z

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;Z)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .line 589
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->start()V

    .line 571
    return-void
.end method

.method private MsgHandledLog(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 5753
    :try_start_0
    const-string/jumbo v1, "WifiP2pService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5754
    invoke-static {p2}, Lcom/android/server/wifi/WifiStateMachine;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    .line 5753
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5755
    invoke-virtual {p2}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5753
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5750
    :goto_0
    return-void

    .line 5756
    :catch_0
    move-exception v0

    .line 5757
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "WifiP2pService"

    const-string/jumbo v2, "MsgHandledLog Got NullPointerException!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 7
    .param p1, "src"    # [B

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5669
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5670
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-gtz v4, :cond_1

    .line 5671
    :cond_0
    return-object v5

    .line 5673
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 5674
    aget-byte v4, p1, v1

    and-int/lit16 v3, v4, 0xff

    .line 5675
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 5676
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 5677
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5679
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5673
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5681
    .end local v0    # "hv":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private checkConnectivityInternalPermission()I
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 615
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 614
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private checkLocationHardwarePermission()I
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 620
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    .line 619
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    .line 599
    const-string/jumbo v2, "WifiP2pService"

    .line 598
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CHANGE_WIFI_STATE"

    .line 604
    const-string/jumbo v2, "WifiP2pService"

    .line 603
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private enforceConnectivityInternalOrLocationHardwarePermission()V
    .locals 1

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->checkConnectivityInternalPermission()I

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->checkLocationHardwarePermission()I

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalPermission()V

    .line 623
    :cond_0
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 609
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 610
    const-string/jumbo v2, "WifiP2pService"

    .line 608
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method private getSsidPostfix(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 5729
    const/4 v1, 0x0

    .line 5730
    .local v1, "count":I
    const/4 v4, 0x0

    .line 5731
    .local v4, "strLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 5732
    const/16 v5, 0x16

    if-lt v1, v5, :cond_1

    .line 5746
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 5733
    :cond_1
    move v4, v2

    .line 5734
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5735
    .local v0, "ch":C
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_2

    .line 5736
    add-int/lit8 v1, v1, 0x1

    .line 5731
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5737
    :cond_2
    const/16 v5, 0x7ff

    if-gt v0, v5, :cond_3

    .line 5738
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 5739
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5740
    add-int/lit8 v1, v1, 0x4

    .line 5741
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5743
    :cond_4
    add-int/lit8 v1, v1, 0x3

    goto :goto_1
.end method

.method private hexStringToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 5657
    if-eqz p1, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5658
    :cond_0
    return-object v4

    .line 5660
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 5661
    .local v2, "length":I
    new-array v0, v2, [B

    .line 5662
    .local v0, "d":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 5663
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 5662
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5665
    :cond_2
    return-object v0
.end method

.method private sendNfcConfigTokenBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 5699
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mtk.nfc.wfa.cfg.tag.WRITE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5700
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5701
    const-string/jumbo v1, "mtk.nfc.wfa.tag.extra.DEV_INFO"

    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5702
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5698
    return-void
.end method

.method private sendNfcRequestTokenBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 5685
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mtk.nfc.wfa.p2p.HR_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5686
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5687
    const-string/jumbo v1, "mtk.nfc.wfa.p2p.extra.HR_P2P_DEV_INFO"

    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5688
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5684
    return-void
.end method

.method private sendNfcSelectTokenBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 5692
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mtk.nfc.wfa.tag.WRITE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5693
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5694
    const-string/jumbo v1, "mtk.nfc.wfa.tag.extra.DEV_INFO"

    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5695
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5691
    return-void
.end method

.method private sendNfcWpsConfigTokenBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 5706
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mtk.wps.nfc.testbed.p2pgo.as.sel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5707
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5708
    const-string/jumbo v1, "mtk.wps.nfc.testbed.extra.password"

    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5709
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5705
    return-void
.end method


# virtual methods
.method public connectivityServiceReady()V
    .locals 2

    .prologue
    .line 593
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 594
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    .line 592
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump WifiP2pService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 683
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 682
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 684
    const-string/jumbo v1, ", uid="

    .line 682
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 684
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 682
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAutonomousGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mJoinExistingGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mJoinExistingGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDiscoveryStarted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTemporarilyDisconnectedWifi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceDiscReqId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 679
    return-void
.end method

.method public fastConnectAsGo(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .prologue
    const/4 v5, 0x0

    .line 705
    :try_start_0
    const-string/jumbo v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fast Connect As GO in fastConnectIno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-static {}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->generateCredential()Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;-><init>(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)V

    .line 710
    .local v1, "returnConnectInfo":Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 711
    iget-object v2, v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 715
    :cond_1
    new-instance v2, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-direct {v2, v1}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;-><init>(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)V

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .line 716
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    iget-object v3, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    iput-object v3, v2, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 717
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x2205a

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    .line 719
    const-string/jumbo v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fast Connect As GO return fastConnectIno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string/jumbo v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fast Connect As GO Self fastConnectInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    return-object v1

    .line 722
    .end local v1    # "returnConnectInfo":Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fastConnectAsGo() IllegalArgumentException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-object v5
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 12

    .prologue
    .line 731
    const-string/jumbo v8, "WifiP2pService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMacAddress(): before retriving from NVRAM = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const-string/jumbo v1, "/data/nvram/APCFG/APRDEB/WIFI"

    .line 734
    .local v1, "MAC_ADDRESS_FILENAME":Ljava/lang/String;
    const/4 v0, 0x6

    .line 735
    .local v0, "MAC_ADDRESS_DIGITS":I
    const-string/jumbo v2, "NvRAMAgent"

    .line 739
    .local v2, "NVRAM_AGENT_SERVICE":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v8, "NvRAMAgent"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 738
    invoke-static {v8}, Lcom/mediatek/server/wifi/WifiNvRamAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/server/wifi/WifiNvRamAgent;

    move-result-object v3

    .line 740
    .local v3, "agent":Lcom/mediatek/server/wifi/WifiNvRamAgent;
    const-string/jumbo v8, "/data/nvram/APCFG/APRDEB/WIFI"

    invoke-interface {v3, v8}, Lcom/mediatek/server/wifi/WifiNvRamAgent;->readFileByName(Ljava/lang/String;)[B

    move-result-object v4

    .line 741
    .local v4, "buff":[B
    const-string/jumbo v6, ""

    .line 743
    .local v6, "macFromNVRam":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 744
    const-string/jumbo v8, "%02x:%02x:%02x:%02x:%02x:%02x"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    .line 745
    const/4 v10, 0x4

    aget-byte v10, v4, v10

    or-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x5

    aget-byte v10, v4, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x6

    aget-byte v10, v4, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const/4 v10, 0x7

    aget-byte v10, v4, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    const/16 v10, 0x8

    aget-byte v10, v4, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v9, v11

    const/16 v10, 0x9

    aget-byte v10, v4, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v9, v11

    .line 744
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 746
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 747
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v6, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    :cond_0
    const-string/jumbo v8, "WifiP2pService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMacAddress(): after retriving from NVRAM = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .end local v3    # "agent":Lcom/mediatek/server/wifi/WifiNvRamAgent;
    .end local v4    # "buff":[B
    .end local v6    # "macFromNVRam":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    return-object v8

    .line 753
    :catch_0
    move-exception v5

    .line 754
    .local v5, "iobe":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    const-string/jumbo v8, "WifiP2pService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMacAddress(): after retriving from NVRAM = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 750
    .end local v5    # "iobe":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v7

    .line 751
    .local v7, "re":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 757
    const-string/jumbo v8, "WifiP2pService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMacAddress(): after retriving from NVRAM = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    .end local v7    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    .line 757
    const-string/jumbo v9, "WifiP2pService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getMacAddress(): after retriving from NVRAM = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v11, v11, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    throw v8
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    .line 636
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceChangePermission()V

    .line 637
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientHandler:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getP2pHandoverSelectToken()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5713
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    .line 5714
    sget-boolean v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMtkWpsp2pnfcSupport:Z

    if-nez v1, :cond_0

    .line 5715
    return-object v4

    .line 5717
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverSelect()Ljava/lang/String;

    move-result-object v0

    .line 5718
    .local v0, "token":Ljava/lang/String;
    const-string/jumbo v1, "WifiP2pService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getP2pHandoverSelectToken, token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5719
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "UNKNOWN COMMAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5722
    :cond_1
    return-object v4

    .line 5720
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public getP2pStateMachineMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalOrLocationHardwarePermission()V

    .line 647
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    .line 648
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceChangePermission()V

    .line 649
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getPeerIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "peerMacAddress"    # Ljava/lang/String;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getPeerIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCrossMountIE(ZLjava/lang/String;)V
    .locals 1
    .param p1, "isAdd"    # Z
    .param p2, "hexData"    # Ljava/lang/String;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setCrossMountIE(ZLjava/lang/String;)V

    .line 770
    return-void
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalPermission()V

    .line 663
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v1, 0x2300e

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(II)V

    .line 661
    return-void
.end method

.method public setMiracastModeEx(II)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "freq"    # I

    .prologue
    const v2, 0x2300e

    const v1, 0x8235

    .line 669
    if-lt p2, v1, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .line 671
    sub-int v1, p2, v1

    .line 670
    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(III)V

    .line 667
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(III)V

    goto :goto_0
.end method
