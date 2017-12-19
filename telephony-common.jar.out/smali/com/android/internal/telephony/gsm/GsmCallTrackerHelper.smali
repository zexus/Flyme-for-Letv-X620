.class public final Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;
.super Ljava/lang/Object;
.source "GsmCallTrackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;
    }
.end annotation


# static fields
.field protected static final EVENT_CALL_INFO_INDICATION:I = 0x1e

.field protected static final EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final EVENT_DIAL_CALL_RESULT:I = 0x16

.field protected static final EVENT_ECONF_RESULT_INDICATION:I = 0x1c

.field protected static final EVENT_ECONF_SRVCC_INDICATION:I = 0x1b

.field protected static final EVENT_ECT_RESULT:I = 0xd

.field protected static final EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final EVENT_HANG_UP_RESULT:I = 0x15

.field protected static final EVENT_INCOMING_CALL_INDICATION:I = 0x18

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x17

.field protected static final EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final EVENT_RETRIEVE_HELD_CALL_RESULT:I = 0x1d

.field protected static final EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final EVENT_SWITCH_RESULT:I = 0x8

.field protected static final EVENT_THREE_WAY_DIAL_BLANK_FLASH:I = 0x14

.field protected static final EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field static final LOG_TAG:Ljava/lang/String; = "GsmCallTracker"

.field private static final MTK_SWITCH_ANTENNA_SUPPORT:Z


# instance fields
.field private hasPendingHangupRequest:Z

.field public isFullLock:Z

.field public isInLock:Z

.field private mContainForwardingAddress:Z

.field private mContext:Landroid/content/Context;

.field private mDmAgent:Lcom/mediatek/common/dm/DmAgent;

.field private mForwardingAddress:Ljava/lang/String;

.field private mForwardingAddressCallId:I

.field public mIsRejectedByMoms:Z

.field private mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field public needHangupMOCall:Z

.field public needHangupMTCall:Z

.field private pendingHangupRequest:I

.field private pendingMTCallId:I

.field private pendingMTSeqNum:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->DmUpdateStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 140
    const-string/jumbo v0, "ro.mtk_switch_antenna"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 139
    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MTK_SWITCH_ANTENNA_SUPPORT:Z

    .line 69
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tracker"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    .line 114
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    .line 115
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    .line 116
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    .line 117
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    .line 124
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 125
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 128
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    .line 129
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    .line 133
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 134
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 135
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    .line 145
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContext:Landroid/content/Context;

    .line 146
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 149
    const-string/jumbo v3, "DmAgent"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 150
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    .line 152
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.mediatek.dm.LAWMO_LOCK"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v3, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v3, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 161
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->DmUpdateStatus()V

    .line 143
    return-void
.end method

.method private DmUpdateStatus()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v2}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    .line 307
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v2}, Lcom/mediatek/common/dm/DmAgent;->getLockType()I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isInLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isFullLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v1}, Lcom/mediatek/common/dm/DmAgent;->isHangMoCallLocking()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    .line 310
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v1}, Lcom/mediatek/common/dm/DmAgent;->isHangMtCallLocking()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "needHangupMOCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", needHangupMTCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_0
    :goto_1
    return-void

    .line 307
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private shouldNotifyMtCall()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 706
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MTK_SWITCH_ANTENNA_SUPPORT:Z

    if-eqz v2, :cond_1

    .line 707
    const-string/jumbo v2, "GsmCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldNotifyMtCall, mTracker.mPhone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 709
    .local v1, "phones":[Lcom/android/internal/telephony/Phone;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 710
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const-string/jumbo v5, "GsmCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "phone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eq v0, v5, :cond_0

    .line 712
    const-string/jumbo v2, "GsmCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldNotifyMtCall, another phone active, phone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 713
    const-string/jumbo v5, ", state:"

    .line 712
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 713
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    .line 712
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return v3

    .line 709
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 718
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "phones":[Lcom/android/internal/telephony/Phone;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public CallIndicationEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 671
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 672
    .local v0, "pid":I
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    invoke-static {v0, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 668
    :cond_0
    return-void
.end method

.method public CallIndicationGetId()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    return v0
.end method

.method public CallIndicationGetSeqNo()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    return v0
.end method

.method public CallIndicationProcess(Landroid/os/AsyncResult;)V
    .locals 20
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 506
    const/4 v13, 0x0

    .line 507
    .local v13, "mode":I
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/String;

    .line 508
    .local v12, "incomingCallInfo":[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v16, v12, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 509
    .local v5, "callId":I
    const/16 v16, 0x3

    aget-object v16, v12, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 510
    .local v6, "callMode":I
    const/16 v16, 0x4

    aget-object v16, v12, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 512
    .local v14, "seqNumber":I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "CallIndicationProcess "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " pendingMTCallId "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 513
    const-string/jumbo v17, " pendingMTSeqNum "

    .line 512
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 513
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    move/from16 v17, v0

    .line 512
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    .line 517
    const-string/jumbo v17, "persist.radio.terminal-based.cw"

    .line 518
    const-string/jumbo v18, "disabled_tbcw"

    .line 516
    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 519
    .local v15, "tbcwMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 521
    .local v10, "fgState":Lcom/android/internal/telephony/Call$State;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 524
    .local v4, "bgState":Lcom/android/internal/telephony/Call$State;
    :goto_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "PROPERTY_TERMINAL_BASED_CALL_WAITING_MODE = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 525
    const-string/jumbo v17, " , ForgroundCall State = "

    .line 524
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 526
    const-string/jumbo v17, " , BackgroundCall State = "

    .line 524
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 527
    const-string/jumbo v16, "enabled_tbcw_off"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 528
    sget-object v16, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-eq v10, v0, :cond_0

    sget-object v16, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-ne v4, v0, :cond_3

    .line 529
    :cond_0
    const-string/jumbo v16, "PROPERTY_TERMINAL_BASED_CALL_WAITING_MODE = TERMINAL_BASED_CALL_WAITING_ENABLED_OFF. Reject the call as UDUB "

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 532
    const/4 v13, 0x1

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v13, v5, v14, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 535
    return-void

    .line 520
    .end local v4    # "bgState":Lcom/android/internal/telephony/Call$State;
    .end local v10    # "fgState":Lcom/android/internal/telephony/Call$State;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    .restart local v10    # "fgState":Lcom/android/internal/telephony/Call$State;
    goto/16 :goto_0

    .line 522
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .restart local v4    # "bgState":Lcom/android/internal/telephony/Call$State;
    goto/16 :goto_1

    .line 542
    :cond_3
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 543
    const/16 v16, 0x5

    aget-object v16, v12, v16

    if-eqz v16, :cond_4

    const/16 v16, 0x5

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_4

    .line 545
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 546
    const/16 v16, 0x5

    aget-object v16, v12, v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 547
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    .line 548
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "EAIC message contains forwarding address - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 553
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 554
    const/4 v13, 0x1

    .line 587
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MobileManagermentResetIsBlocking()V

    .line 588
    if-nez v13, :cond_6

    .line 589
    const/16 v16, 0x1

    aget-object v16, v12, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MobileManagermentQueryPermission(Ljava/lang/String;IJ)V

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MobileManagermentGetIsBlocking()Z

    move-result v16

    if-nez v16, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->shouldNotifyMtCall()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 594
    const/4 v13, 0x0

    .line 600
    :cond_6
    :goto_3
    if-nez v13, :cond_7

    .line 601
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    .line 602
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 604
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "notify mVoiceCallIncomingIndicationRegistrants "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 608
    :cond_7
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_8

    .line 609
    new-instance v9, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v9}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 610
    .local v9, "dc":Lcom/android/internal/telephony/DriverCall;
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v9, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 611
    iput v5, v9, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 612
    sget-object v16, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v13, v5, v14, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 618
    if-nez v6, :cond_f

    .line 619
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v9, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 620
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v9, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 629
    :goto_4
    const/16 v16, 0x1

    aget-object v16, v12, v16

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 630
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v9, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 631
    const/16 v16, 0x2

    aget-object v16, v12, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v9, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 632
    iget-object v0, v9, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    move-object/from16 v16, v0

    iget v0, v9, Lcom/android/internal/telephony/DriverCall;->TOA:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 634
    new-instance v8, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v9, v1, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    .line 635
    .local v8, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onReplaceDisconnect(I)V

    .line 505
    .end local v8    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v9    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_8
    return-void

    .line 558
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 559
    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v6, v0, :cond_b

    .line 562
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    const/16 v16, 0x7

    move/from16 v0, v16

    if-ge v11, v0, :cond_5

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v7, v16, v11

    .line 564
    .local v7, "cn":Lcom/android/internal/telephony/Connection;
    if-eqz v7, :cond_a

    .line 565
    const/4 v13, 0x1

    .line 566
    goto/16 :goto_2

    .line 562
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 569
    .end local v7    # "cn":Lcom/android/internal/telephony/Connection;
    .end local v11    # "i":I
    :cond_b
    if-nez v6, :cond_d

    .line 571
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_6
    const/16 v16, 0x7

    move/from16 v0, v16

    if-ge v11, v0, :cond_5

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v7, v16, v11

    .line 573
    .restart local v7    # "cn":Lcom/android/internal/telephony/Connection;
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 574
    const/4 v13, 0x1

    .line 575
    goto/16 :goto_2

    .line 571
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 580
    .end local v7    # "cn":Lcom/android/internal/telephony/Connection;
    .end local v11    # "i":I
    :cond_d
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 591
    :cond_e
    const/4 v13, 0x1

    .line 590
    goto/16 :goto_3

    .line 621
    .restart local v9    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_f
    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v6, v0, :cond_10

    .line 622
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v9, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 623
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v9, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto/16 :goto_4

    .line 625
    :cond_10
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v9, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 626
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v9, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto/16 :goto_4
.end method

.method public CallIndicationResponse(Z)V
    .locals 7
    .param p1, "accept"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 641
    const/4 v0, 0x0

    .line 643
    .local v0, "mode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIncomingCallIndicationResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pendingMTCallId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pendingMTSeqNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 645
    if-eqz p1, :cond_1

    .line 646
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 648
    .local v1, "pid":I
    const/4 v0, 0x0

    .line 649
    const/16 v2, -0xa

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adjust the priority of process - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 655
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 656
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 663
    .end local v1    # "pid":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    invoke-interface {v2, v0, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 664
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    .line 665
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    .line 640
    return-void

    .line 661
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public DmCheckIfCallCanComing(Lcom/android/internal/telephony/gsm/GsmConnection;)Z
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isInLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isFullLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 320
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    if-eqz v1, :cond_0

    .line 321
    const-string/jumbo v1, "hang up MT call because of in DM lock state"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "GsmCallTracker"

    const-string/jumbo v2, "unexpected error on hangup"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public ForceReleaseAllConnection(Lcom/android/internal/telephony/gsm/GsmCall;)Z
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    .line 388
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v1

    .line 389
    .local v1, "forceReleaseFg":Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v0

    .line 390
    .local v0, "forceReleaseBg":Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v2

    .line 393
    .local v2, "forceReleaseRing":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    .line 394
    :cond_0
    const-string/jumbo v3, "GsmCallTracker"

    const-string/jumbo v4, "hangup(GsmCall)Hang up disconnecting call, return directly"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v3, 0x1

    return v3

    .line 398
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "hangupCall"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    .line 374
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 375
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 376
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 377
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    if-ne p1, p2, :cond_1

    .line 381
    const/4 v2, 0x1

    return v2

    .line 384
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public ForceReleaseNotRingingConnection(Lcom/android/internal/telephony/gsm/GsmCall;)Z
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    const/4 v4, 0x1

    .line 402
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v1

    .line 403
    .local v1, "forceReleaseFg":Z
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v0

    .line 406
    .local v0, "forceReleaseBg":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 407
    :cond_0
    const-string/jumbo v2, "GsmCallTracker"

    const-string/jumbo v3, "hangup(GsmCall)Hang up disconnecting call, return directly"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return v4

    .line 411
    :cond_1
    return v4
.end method

.method LogState()V
    .locals 6

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "callId":I
    const/4 v1, 0x0

    .line 253
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    .line 254
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v0, v3, 0x1

    .line 256
    add-int/lit8 v1, v1, 0x1

    .line 257
    const-string/jumbo v3, "GsmCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "* conn id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " existed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_1
    const-string/jumbo v3, "GsmCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "* GsmCT has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " connection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method public LogerMessage(I)V
    .locals 1
    .param p1, "msgType"    # I

    .prologue
    .line 171
    packed-switch p1, :pswitch_data_0

    .line 242
    :pswitch_0
    const-string/jumbo v0, "handle XXXXX"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 173
    :pswitch_1
    const-string/jumbo v0, "handle EVENT_POLL_CALLS_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :pswitch_2
    const-string/jumbo v0, "handle EVENT_CALL_STATE_CHANGE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :pswitch_3
    const-string/jumbo v0, "handle EVENT_REPOLL_AFTER_DELAY"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :pswitch_4
    const-string/jumbo v0, "handle EVENT_OPERATION_COMPLETE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_5
    const-string/jumbo v0, "handle EVENT_GET_LAST_CALL_FAIL_CAUSE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :pswitch_6
    const-string/jumbo v0, "handle EVENT_SWITCH_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :pswitch_7
    const-string/jumbo v0, "handle EVENT_RADIO_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :pswitch_8
    const-string/jumbo v0, "handle EVENT_RADIO_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :pswitch_9
    const-string/jumbo v0, "handle EVENT_CONFERENCE_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :pswitch_a
    const-string/jumbo v0, "handle EVENT_SEPARATE_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :pswitch_b
    const-string/jumbo v0, "handle EVENT_ECT_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :pswitch_c
    const-string/jumbo v0, "handle EVENT_HANG_UP_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :pswitch_d
    const-string/jumbo v0, "handle EVENT_DIAL_CALL_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :pswitch_e
    const-string/jumbo v0, "handle EVENT_INCOMING_CALL_INDICATION"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :pswitch_f
    const-string/jumbo v0, "handle EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public MobileManagermentGetIsBlocking()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    return v0
.end method

.method public MobileManagermentQueryPermission(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "CallMode"    # I
    .param p3, "subId"    # J

    .prologue
    const/4 v4, 0x0

    .line 267
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    if-nez v3, :cond_0

    .line 271
    const-string/jumbo v3, "mobile"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 270
    invoke-static {v3}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 273
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getInterceptionEnabledSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v4}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v3}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 276
    .local v1, "parameter":Landroid/os/Bundle;
    const-string/jumbo v3, "phoneNumber"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v3, "callType"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    const-string/jumbo v3, "slotId"

    long-to-int v4, p3

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v5}, Lcom/mediatek/common/mom/IMobileManagerService;->triggerManagerApListener(ILandroid/os/Bundle;I)I

    move-result v2

    .line 280
    .local v2, "result":I
    if-nez v2, :cond_2

    .line 281
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    .line 265
    .end local v1    # "parameter":Landroid/os/Bundle;
    .end local v2    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 283
    .restart local v1    # "parameter":Landroid/os/Bundle;
    .restart local v2    # "result":I
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    .end local v1    # "parameter":Landroid/os/Bundle;
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MoMS, Suppressing notification faild!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    goto :goto_0
.end method

.method public MobileManagermentResetIsBlocking()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    .line 293
    return-void
.end method

.method public PendingHangupRequestDec()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    if-eqz v0, :cond_0

    .line 481
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 482
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    if-nez v0, :cond_0

    .line 483
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 479
    :cond_0
    return-void
.end method

.method public PendingHangupRequestInc()V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 476
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 474
    return-void
.end method

.method public PendingHangupRequestReset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 489
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 490
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 488
    return-void
.end method

.method protected PendingHangupRequestUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePendingHangupRequest - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    if-eqz v0, :cond_0

    .line 465
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    if-eqz v0, :cond_0

    .line 466
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 467
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    if-nez v0, :cond_0

    .line 468
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 462
    :cond_0
    return-void
.end method

.method public clearForwardingAddressVariables(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 683
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    if-eqz v0, :cond_0

    .line 684
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    .line 685
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 687
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    .line 682
    :cond_0
    return-void
.end method

.method protected getCurrentTotalConnections()I
    .locals 3

    .prologue
    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 456
    add-int/lit8 v0, v0, 0x1

    .line 454
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :cond_1
    return v0
.end method

.method public hangupBgConnectionByIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z

    move-result v0

    return v0
.end method

.method public hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z
    .locals 6
    .param p1, "c"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "index"    # I

    .prologue
    .line 415
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 416
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 417
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 420
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    .line 421
    const-string/jumbo v4, "GsmCallTracker"

    const-string/jumbo v5, "hangupConnectionByIndex: hangup a DISCONNECTED conn"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 427
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    const/4 v4, 0x1

    return v4

    .line 430
    :catch_0
    move-exception v2

    .line 433
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v4, "GsmCallTracker"

    const-string/jumbo v5, "GsmCallTracker hangupConnectionByIndex() on absent connection "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 436
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method public hangupFgConnectionByIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z

    move-result v0

    return v0
.end method

.method public hangupRingingConnectionByIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z

    move-result v0

    return v0
.end method

.method public hasPendingHangupRequest()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    return v0
.end method

.method log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string/jumbo v0, "GsmCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[CC][GsmCT][Helper] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method public setForwardingAddressToConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 697
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/Connection;->setForwardingAddress(Ljava/lang/String;)V

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Store forwarding address - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Get forwarding address - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getForwardingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->clearForwardingAddressVariables(I)V

    .line 694
    :cond_0
    return-void
.end method
