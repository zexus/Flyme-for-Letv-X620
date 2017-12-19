.class public final Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DIAL_PENDINGMO:I = 0x14

.field private static final EVENT_HANGUP_PENDINGMO:I = 0x12

.field private static final EVENT_RESUME_BACKGROUND:I = 0x13

.field private static final IMS_VIDEO_CALL:I = 0x15

.field private static final IMS_VIDEO_CONF:I = 0x17

.field private static final IMS_VIDEO_CONF_PARTS:I = 0x19

.field private static final IMS_VOICE_CALL:I = 0x14

.field private static final IMS_VOICE_CONF:I = 0x16

.field private static final IMS_VOICE_CONF_PARTS:I = 0x18

.field private static final INVALID_CALL_MODE:I = 0xff

.field static final LOG_TAG:Ljava/lang/String; = "ImsPhoneCallTracker"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final TIMEOUT_HANGUP_PENDINGMO:I = 0x1f4

.field private static final VERBOSE_STATE_LOGGING:Z


# instance fields
.field final mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mCallExpectedToResume:Lcom/android/ims/ImsCall;

.field private mClirMode:I

.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredMute:Z

.field private mDialAsECC:Z

.field final mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field final mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mHasPendingResumeRequest:Z

.field private mImsCallListener:Lcom/android/ims/ImsCall$Listener;

.field private mImsConnectionStateListener:Lcom/android/ims/ImsConnectionStateListener;

.field private mImsFeatureEnabled:[Z

.field private final mImsFeatureStrings:[Ljava/lang/String;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mImsRegistrationErrorCode:I

.field private mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

.field private mIndicationReceiver:Landroid/content/BroadcastReceiver;

.field private mIsInEmergencyCall:Z

.field private mOnHoldToneStarted:Z

.field private mPendingCallVideoState:I

.field private mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

.field private mPendingUssd:Landroid/os/Message;

.field mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field final mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mServiceId:I

.field private mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

.field mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mSwitchingFgAndBgCalls:Z

.field private mSyncHold:Ljava/lang/Object;

.field private mUssdSession:Lcom/android/ims/ImsCall;

.field private mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field private mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

.field private pendingCallClirMode:I

.field private pendingCallInEcm:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDialAsECC:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasPendingResumeRequest:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsRegistrationErrorCode:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hasVideoCallRestriction(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isEccExist()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchAfterConferenceSuccess()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsReasonInfo;)I
    .locals 1
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getDisconnectCauseFromReasonInfo(Lcom/android/ims/ImsReasonInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/lang/String;
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnectionCallId(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addCallLog(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->broadcastImsStatusChange()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsService()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I
    .param p4, "ignoreState"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 237
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 106
    new-array v2, v3, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    .line 107
    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "VoLTE"

    aput-object v3, v2, v5

    const-string/jumbo v3, "ViLTE"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "VoWiFi"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string/jumbo v3, "ViWiFi"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureStrings:[Ljava/lang/String;

    .line 109
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    .line 173
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 174
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 176
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string/jumbo v3, "RG"

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 177
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string/jumbo v3, "FG"

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 178
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string/jumbo v3, "BG"

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 179
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string/jumbo v3, "HO"

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 182
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    .line 183
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    .line 185
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    .line 186
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    .line 190
    iput-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    .line 191
    iput-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    .line 193
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 196
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    .line 198
    sget-object v2, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 200
    iput-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    .line 204
    iput-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    .line 205
    iput-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    .line 206
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    .line 209
    iput-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDialAsECC:Z

    .line 215
    iput-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasPendingResumeRequest:Z

    .line 1307
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    .line 1774
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    .line 1844
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 1843
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsConnectionStateListener:Lcom/android/ims/ImsConnectionStateListener;

    .line 2148
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIndicationReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 240
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.android.ims.IMS_INCOMING_CALL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerIndicationReceiver()V

    .line 248
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 253
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 237
    return-void

    .line 106
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private addCallLog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2269
    const/4 v9, 0x0

    .line 2270
    .local v9, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v17

    .line 2272
    .local v17, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v16

    .line 2273
    .local v16, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2274
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 2275
    .local v2, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v14

    .line 2276
    .local v14, "id":Ljava/lang/String;
    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2277
    const-string/jumbo v3, "iccid matches"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2278
    move-object v9, v2

    .line 2283
    .end local v2    # "handle":Landroid/telecom/PhoneAccountHandle;
    .end local v9    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v14    # "id":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "android:imsDialString"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2284
    .local v5, "number":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 2285
    const-string/jumbo v5, ""

    .line 2290
    :cond_2
    if-eqz v5, :cond_3

    const-string/jumbo v3, ""

    if-ne v5, v3, :cond_5

    .line 2291
    :cond_3
    const/4 v6, 0x2

    .line 2297
    .local v6, "presentationMode":I
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isIncomingVideoCall(Landroid/content/Intent;)Z

    move-result v15

    .line 2298
    .local v15, "isVideoIncoming":Z
    const/4 v8, 0x0

    .line 2299
    .local v8, "features":I
    if-eqz v15, :cond_4

    .line 2300
    const/4 v8, 0x1

    .line 2307
    :cond_4
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    new-instance v13, Ljava/lang/Long;

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-direct {v13, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 2304
    const/4 v3, 0x0

    .line 2305
    const/4 v7, 0x3

    .line 2307
    const/4 v12, 0x0

    move-object/from16 v4, p1

    .line 2304
    invoke-static/range {v3 .. v13}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;)Landroid/net/Uri;

    .line 2267
    return-void

    .line 2293
    .end local v6    # "presentationMode":I
    .end local v8    # "features":I
    .end local v15    # "isVideoIncoming":Z
    :cond_5
    const/4 v6, 0x1

    .restart local v6    # "presentationMode":I
    goto :goto_0
.end method

.method private declared-synchronized addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .prologue
    monitor-enter p0

    .line 1160
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1159
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private broadcastImsStatusChange()V
    .locals 6

    .prologue
    .line 2431
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v4, :cond_0

    .line 2432
    return-void

    .line 2435
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.ims.IMS_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2436
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 2437
    .local v3, "serviceState":I
    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsRegistrationErrorCode:I

    .line 2438
    .local v1, "errorCode":I
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    .line 2441
    .local v0, "enabledFeatures":[Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "broadcastImsStateChange state= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " errorCode= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2442
    const-string/jumbo v5, " enabledFeatures= "

    .line 2441
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2445
    const-string/jumbo v4, "android:regState"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2446
    if-eqz v3, :cond_1

    .line 2447
    if-lez v1, :cond_1

    .line 2448
    const-string/jumbo v4, "android:regError"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2450
    :cond_1
    const-string/jumbo v4, "android:enablecap"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 2451
    const-string/jumbo v4, "android:phone_id"

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2452
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2430
    return-void
.end method

.method private createIncomingCallPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.ims.IMS_INCOMING_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 260
    const/high16 v3, 0x8000000

    .line 259
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;II)V
    .locals 14
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "clirMode"    # I
    .param p3, "videoState"    # I

    .prologue
    .line 510
    if-nez p1, :cond_0

    .line 511
    return-void

    .line 515
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConfDialStrings()Ljava/util/ArrayList;

    move-result-object v11

    if-nez v11, :cond_3

    .line 517
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    .line 520
    :cond_1
    const/4 v11, 0x7

    invoke-virtual {p1, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 521
    const-wide/16 v12, 0x1f4

    const/16 v11, 0x12

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 522
    return-void

    .line 518
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x4e

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_1

    .line 527
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 528
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 529
    const/4 v10, 0x2

    .line 534
    .local v10, "serviceType":I
    :goto_0
    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 535
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    .line 534
    if-eqz v11, :cond_4

    .line 536
    const/4 v10, 0x1

    .line 541
    :cond_4
    iget-boolean v11, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDialAsECC:Z

    if-eqz v11, :cond_5

    .line 542
    const/4 v10, 0x2

    .line 543
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Dial as ECC: conn.getAddress(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 544
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDialAsECC:Z

    .line 547
    :cond_5
    invoke-static/range {p3 .. p3}, Lcom/android/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v2

    .line 549
    .local v2, "callType":I
    move/from16 v0, p3

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 553
    const/4 v3, 0x0

    .line 554
    .local v3, "callees":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConfDialStrings()Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 555
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConfDialStrings()Ljava/util/ArrayList;

    move-result-object v5

    .line 556
    .local v5, "dialStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 561
    .end local v5    # "dialStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "callees":[Ljava/lang/String;
    :goto_1
    iget-object v11, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget v12, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    invoke-virtual {v11, v12, v10, v2}, Lcom/android/ims/ImsManager;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    move-result-object v9

    .line 563
    .local v9, "profile":Lcom/android/ims/ImsCallProfile;
    const-string/jumbo v11, "oir"

    move/from16 v0, p2

    invoke-virtual {v9, v11, v0}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 565
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConfDialStrings()Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 566
    const-string/jumbo v11, "conference"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Lcom/android/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 570
    :cond_6
    iget-object v11, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget v12, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    .line 571
    iget-object v13, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    .line 570
    invoke-virtual {v11, v12, v9, v3, v13}, Lcom/android/ims/ImsManager;->makeCall(ILcom/android/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v8

    .line 572
    .local v8, "imsCall":Lcom/android/ims/ImsCall;
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setImsCall(Lcom/android/ims/ImsCall;)V

    .line 574
    invoke-direct {p0, p1, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 509
    .end local v3    # "callees":[Ljava/lang/String;
    .end local v8    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v9    # "profile":Lcom/android/ims/ImsCallProfile;
    :goto_2
    return-void

    .line 529
    .end local v2    # "callType":I
    .end local v10    # "serviceType":I
    :cond_7
    const/4 v10, 0x1

    .restart local v10    # "serviceType":I
    goto/16 :goto_0

    .line 559
    .restart local v2    # "callType":I
    .local v3, "callees":[Ljava/lang/String;
    :cond_8
    const/4 v11, 0x1

    new-array v4, v11, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v4, v12
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .local v4, "callees":[Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "callees":[Ljava/lang/String;
    .local v3, "callees":[Ljava/lang/String;
    goto :goto_1

    .line 575
    .end local v3    # "callees":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 576
    .local v7, "e":Lcom/android/ims/ImsException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "dialInternal : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 577
    const/16 v11, 0x24

    invoke-virtual {p1, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 578
    const-wide/16 v12, 0x1f4

    const/16 v11, 0x12

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 579
    .end local v7    # "e":Lcom/android/ims/ImsException;
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private dumpState()V
    .locals 5

    .prologue
    .line 859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Phone State:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 861
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ringing call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 863
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 864
    .local v1, "l":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 865
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 868
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Foreground call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 870
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 871
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    .line 872
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 875
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Background call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 877
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 878
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_2

    .line 879
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 856
    :cond_2
    return-void
.end method

.method private declared-synchronized findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    monitor-enter p0

    .line 1147
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conn$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1148
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-ne v2, p1, :cond_0

    monitor-exit p0

    .line 1149
    return-object v0

    .line 1152
    .end local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .end local v1    # "conn$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getCallNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/lang/String;
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .prologue
    const/4 v0, 0x0

    .line 2554
    if-nez p1, :cond_0

    .line 2555
    return-object v0

    .line 2558
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2559
    const-string/jumbo v0, "conferenceCall"

    return-object v0

    .line 2561
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConnectionCallId(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/lang/String;
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .prologue
    const/4 v1, -0x1

    .line 2532
    if-nez p1, :cond_0

    .line 2533
    const-string/jumbo v1, ""

    return-object v1

    .line 2536
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCallId()I

    move-result v0

    .line 2537
    .local v0, "callId":I
    if-ne v0, v1, :cond_1

    .line 2538
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCallIdBeforeDisconnected()I

    move-result v0

    .line 2539
    if-ne v0, v1, :cond_1

    .line 2540
    const-string/jumbo v1, ""

    return-object v1

    .line 2543
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDisconnectCauseFromReasonInfo(Lcom/android/ims/ImsReasonInfo;)I
    .locals 5
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    const/16 v4, 0x190

    const/16 v3, 0x9

    .line 1218
    const/16 v0, 0x24

    .line 1221
    .local v0, "cause":I
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v1

    .line 1222
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 1301
    return v0

    .line 1225
    :sswitch_0
    const/16 v2, 0x8

    return v2

    .line 1228
    :sswitch_1
    const/4 v2, 0x4

    return v2

    .line 1231
    :sswitch_2
    const/4 v2, 0x3

    return v2

    .line 1234
    :sswitch_3
    const/16 v2, 0x10

    return v2

    .line 1237
    :sswitch_4
    const/4 v2, 0x2

    return v2

    .line 1245
    :sswitch_5
    const/16 v2, 0xc

    return v2

    .line 1252
    :sswitch_6
    return v3

    .line 1262
    :sswitch_7
    const/16 v2, 0x12

    return v2

    .line 1268
    :sswitch_8
    const/16 v2, 0xd

    return v2

    .line 1272
    :sswitch_9
    const/16 v2, 0x11

    return v2

    .line 1275
    :sswitch_a
    const/16 v2, 0x17c

    return v2

    .line 1281
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1282
    return v4

    .line 1284
    :cond_0
    return v3

    .line 1288
    :sswitch_c
    return v4

    .line 1290
    :sswitch_d
    const/16 v2, 0x191

    return v2

    .line 1292
    :sswitch_e
    const/16 v2, 0x192

    return v2

    .line 1294
    :sswitch_f
    const/16 v2, 0x193

    return v2

    .line 1222
    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_7
        0x6f -> :sswitch_9
        0x70 -> :sswitch_9
        0x79 -> :sswitch_7
        0x7a -> :sswitch_7
        0x7b -> :sswitch_7
        0x7c -> :sswitch_7
        0x83 -> :sswitch_7
        0x84 -> :sswitch_7
        0x8f -> :sswitch_3
        0x90 -> :sswitch_7
        0xc9 -> :sswitch_8
        0xca -> :sswitch_8
        0xcb -> :sswitch_8
        0x141 -> :sswitch_5
        0x149 -> :sswitch_a
        0x14b -> :sswitch_5
        0x14c -> :sswitch_5
        0x14d -> :sswitch_6
        0x14f -> :sswitch_8
        0x151 -> :sswitch_0
        0x152 -> :sswitch_1
        0x154 -> :sswitch_5
        0x155 -> :sswitch_0
        0x160 -> :sswitch_6
        0x162 -> :sswitch_b
        0x169 -> :sswitch_5
        0x16a -> :sswitch_5
        0x1f5 -> :sswitch_2
        0x1fe -> :sswitch_4
        0x389 -> :sswitch_c
        0x38a -> :sswitch_d
        0x38b -> :sswitch_e
        0x38c -> :sswitch_f
    .end sparse-switch
.end method

.method private getImsService()V
    .locals 7

    .prologue
    .line 264
    const-string/jumbo v2, "getImsService"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    .line 267
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    monitor-enter v3

    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    .line 271
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 272
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsConnectionStateListener:Lcom/android/ims/ImsConnectionStateListener;

    .line 270
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v4, v5}, Lcom/android/ims/ImsManager;->open(ILandroid/app/PendingIntent;Lcom/android/ims/ImsConnectionStateListener;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsEcbmStateListener:Lcom/android/ims/ImsEcbmStateListener;

    invoke-virtual {v2, v4}, Lcom/android/ims/ImsEcbm;->setEcbmStateListener(Lcom/android/ims/ImsEcbmStateListener;)V

    .line 276
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->exitEmergencyCallbackMode()V

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 282
    const-string/jumbo v4, "preferred_tty_mode"

    .line 283
    const/4 v5, 0x0

    .line 280
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 284
    .local v1, "mPreferredTtyMode":I
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v1, v6}, Lcom/android/ims/ImsManager;->setUiTTYMode(Landroid/content/Context;IILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "mPreferredTtyMode":I
    :goto_0
    monitor-exit v3

    .line 263
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Lcom/android/ims/ImsException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getImsService: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 289
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleEcmTimer(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 499
    packed-switch p1, :pswitch_data_0

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleEcmTimer, unsupported action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 497
    :pswitch_0
    return-void

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pollCallsWhenSafe()V

    .line 848
    return-void
.end method

.method private hasVideoCallRestriction(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 2243
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v4, :cond_0

    .line 2244
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    sget-object v5, Lcom/android/internal/telephony/Phone$FeatureType;->VIDEO_RESTRICTION:Lcom/android/internal/telephony/Phone$FeatureType;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isFeatureSupported(Lcom/android/internal/telephony/Phone$FeatureType;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2245
    :cond_0
    return v6

    .line 2247
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2248
    return v6

    .line 2252
    :cond_2
    const/4 v2, 0x0

    .line 2253
    .local v2, "hasVideoCall":Z
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 2254
    .local v1, "fgConn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 2255
    .local v0, "bgConn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v1, :cond_3

    .line 2256
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v2

    .line 2258
    .end local v2    # "hasVideoCall":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 2259
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v4

    or-int/2addr v2, v4

    .line 2263
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isIncomingVideoCall(Landroid/content/Intent;)Z

    move-result v3

    .line 2264
    .local v3, "incomingVideoCall":Z
    or-int v4, v2, v3

    return v4
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 812
    return-void
.end method

.method private isEccExist()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2219
    const/4 v4, 0x4

    new-array v0, v4, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aput-object v4, v0, v6

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aput-object v4, v0, v7

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aput-object v4, v0, v8

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const/4 v5, 0x3

    aput-object v4, v0, v5

    .line 2221
    .local v0, "allCalls":[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 2222
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2221
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2226
    :cond_1
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    .line 2227
    .local v3, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v3, :cond_0

    .line 2231
    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    .line 2232
    .local v1, "callProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v1, :cond_0

    .line 2233
    iget v4, v1, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    if-ne v4, v8, :cond_0

    .line 2234
    return v7

    .line 2238
    .end local v1    # "callProfile":Lcom/android/ims/ImsCallProfile;
    .end local v3    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_2
    const-string/jumbo v4, "isEccExist(): no ECC!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2239
    return v6
.end method

.method private isIncomingVideoCall(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 2311
    if-nez p1, :cond_0

    .line 2312
    return v2

    .line 2314
    :cond_0
    const-string/jumbo v1, "android:imsCallMode"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2315
    .local v0, "callMode":I
    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x17

    if-ne v0, v1, :cond_2

    .line 2317
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 2316
    :cond_2
    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    .line 2319
    return v2
.end method

.method private processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I

    .prologue
    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processCallStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    .line 1163
    return-void
.end method

.method private processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I
    .param p4, "ignoreState"    # Z

    .prologue
    .line 1175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processCallStateChange state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1176
    const-string/jumbo v3, " ignoreState="

    .line 1175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1179
    if-nez p1, :cond_0

    return-void

    .line 1181
    :cond_0
    const/4 v0, 0x0

    .line 1182
    .local v0, "changed":Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 1184
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-nez v1, :cond_1

    .line 1186
    return-void

    .line 1194
    :cond_1
    if-eqz p4, :cond_2

    .line 1195
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    .line 1196
    return-void

    .line 1199
    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    .line 1200
    .local v0, "changed":Z
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v2, :cond_3

    .line 1201
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1203
    .end local v0    # "changed":Z
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 1204
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 1208
    :cond_3
    const-string/jumbo v2, "CC"

    const-string/jumbo v3, ""

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logDebugMessagesWithDumpFormat(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 1210
    if-eqz v0, :cond_6

    .line 1211
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v2, v3, :cond_5

    return-void

    .line 1201
    .restart local v0    # "changed":Z
    :cond_4
    const/4 v0, 0x1

    .local v0, "changed":Z
    goto :goto_0

    .line 1212
    .end local v0    # "changed":Z
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 1213
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 1173
    :cond_6
    return-void
.end method

.method private registerIndicationReceiver()V
    .locals 3

    .prologue
    .line 2203
    const-string/jumbo v1, "registerIndicationReceiver"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2204
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2205
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.android.ims.IMS_INCOMING_CALL_INDICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2206
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIndicationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2202
    return-void
.end method

.method private declared-synchronized removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .prologue
    monitor-enter p0

    .line 1156
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1155
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2137
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ims/internal/ImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    .line 2138
    .local v0, "imsVideoCallProvider":Lcom/android/ims/internal/IImsVideoCallProvider;
    if-eqz v0, :cond_0

    .line 2140
    new-instance v1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-direct {v1, v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;-><init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V

    .line 2141
    .local v1, "imsVideoCallProviderWrapper":Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    .line 2135
    .end local v1    # "imsVideoCallProviderWrapper":Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    :cond_0
    return-void
.end method

.method private switchAfterConferenceSuccess()V
    .locals 2

    .prologue
    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchAfterConferenceSuccess fg ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 643
    const-string/jumbo v1, ", bg = "

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 643
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 646
    const-string/jumbo v0, "switchAfterConferenceSuccess"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 641
    :cond_0
    return-void
.end method

.method private transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .prologue
    .line 1939
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1940
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1941
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object v2, v0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    .line 1942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connection state before handover is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/telephony/Connection;->mPreMultipartyState:Z

    .line 1946
    instance-of v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 1947
    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isConferenceHost()Z

    move-result v2

    .line 1946
    :goto_1
    iput-boolean v2, v0, Lcom/android/internal/telephony/Connection;->mPreMultipartyHostState:Z

    .line 1948
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SRVCC: Connection isMultiparty is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/internal/telephony/Connection;->mPreMultipartyState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1949
    const-string/jumbo v3, "and isConfHost is "

    .line 1948
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1949
    iget-boolean v3, v0, Lcom/android/internal/telephony/Connection;->mPreMultipartyHostState:Z

    .line 1948
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1949
    const-string/jumbo v3, " before handover"

    .line 1948
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1946
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1953
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 1954
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v3, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    .line 1958
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1959
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1960
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->close()V

    .line 1962
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "c$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .restart local v0    # "c":Lcom/android/internal/telephony/Connection;
    move-object v2, v0

    .line 1963
    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1964
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    goto :goto_3

    .line 1956
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 1967
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call is alive and state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1969
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v3, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object v3, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 1971
    :cond_5
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1972
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 1976
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->resetRingbackTone()V

    .line 1938
    return-void
.end method

.method private unregisterIndicationReceiver()V
    .locals 2

    .prologue
    .line 2210
    const-string/jumbo v0, "unregisterIndicationReceiver"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2211
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIndicationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2209
    return-void
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 823
    .local v0, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 824
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 832
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_4

    .line 833
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 834
    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 833
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 840
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePhoneState oldState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 842
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_1

    .line 843
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPhoneStateChanged()V

    .line 820
    :cond_1
    return-void

    .line 825
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-nez v1, :cond_3

    .line 826
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 829
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 827
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 835
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 836
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 837
    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 836
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method acceptCall(I)V
    .locals 7
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 592
    const-string/jumbo v2, "CC"

    const-string/jumbo v3, "Answer"

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 594
    const-string/jumbo v2, "acceptCall"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 596
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    .line 596
    if-eqz v2, :cond_0

    .line 598
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v3, "cannot accept call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 601
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 602
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    .line 601
    if-eqz v2, :cond_1

    .line 603
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 605
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 606
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 590
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 608
    const-string/jumbo v2, "acceptCall: incoming..."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 612
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 613
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_2

    .line 614
    invoke-static {p1}, Lcom/android/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->accept(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v3, "cannot accept call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 616
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .restart local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_2
    :try_start_1
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v3, "no valid ims call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 622
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v3, "phone not ringing"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method callEndCleanupHandOverCallIfAny()V
    .locals 4

    .prologue
    .line 1010
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "callEndCleanupHandOverCallIfAny, mHandoverCall.mConnections="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1012
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    .line 1011
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1015
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1016
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SRVCC: remove connection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1017
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    goto :goto_0

    .line 1020
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1021
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1024
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_1

    .line 1025
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    .line 1029
    const-string/jumbo v2, "SRVCC: notify ImsPhone state as idle."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1030
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPhoneStateChanged()V

    .line 1009
    .end local v1    # "conn$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method canConference()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 774
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 775
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 776
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isFull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 774
    :cond_0
    :goto_0
    return v0

    .line 777
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isFull()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method canDial()Z
    .locals 5

    .prologue
    .line 783
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 785
    .local v2, "serviceState":I
    const-string/jumbo v3, "ro.telephony.disable-call"

    const-string/jumbo v4, "false"

    .line 784
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "disableCall":Ljava/lang/String;
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 788
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-nez v3, :cond_0

    .line 789
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 787
    :cond_0
    const/4 v1, 0x0

    .line 795
    .local v1, "ret":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IMS: canDial() serviceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", disableCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , mPendingMO = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mRingingCall.isRinging() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 796
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    move-result v4

    .line 795
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 796
    const-string/jumbo v4, ", mForegroundCall.getState().isAlive() = "

    .line 795
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 796
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    .line 795
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 797
    const-string/jumbo v4, ", mBackgroundCall.getState().isAlive() = "

    .line 795
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 797
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    .line 795
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 800
    return v1

    .line 790
    .end local v1    # "ret":Z
    :cond_1
    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 791
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 792
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto/16 :goto_0

    .line 791
    .end local v1    # "ret":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "ret":Z
    goto/16 :goto_0

    .line 792
    .end local v1    # "ret":Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "ret":Z
    goto/16 :goto_0
.end method

.method canTransfer()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 805
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 806
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 805
    :cond_0
    return v0
.end method

.method cancelUSSD()V
    .locals 3

    .prologue
    .line 1137
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    if-nez v1, :cond_0

    return-void

    .line 1140
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    const/16 v2, 0x1f5

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->terminate(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    :goto_0
    return-void

    .line 1141
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/ims/ImsException;
    goto :goto_0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    .line 764
    const-string/jumbo v0, "clearDisconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 766
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->internalClearDisconnected()V

    .line 768
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 769
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 763
    return-void
.end method

.method conference()V
    .locals 15

    .prologue
    .line 709
    const-string/jumbo v10, "CC"

    const-string/jumbo v11, "Conference"

    iget-object v12, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v12

    .line 710
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " merge with "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v14}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 709
    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 713
    const-string/jumbo v10, "conference"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 715
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v6

    .line 716
    .local v6, "fgImsCall":Lcom/android/ims/ImsCall;
    if-nez v6, :cond_0

    .line 717
    const-string/jumbo v10, "conference no foreground ims call"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 718
    return-void

    .line 721
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 722
    .local v2, "bgImsCall":Lcom/android/ims/ImsCall;
    if-nez v2, :cond_1

    .line 723
    const-string/jumbo v10, "conference no background ims call"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 724
    return-void

    .line 729
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v8

    .line 730
    .local v8, "foregroundConnectTime":J
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v0

    .line 732
    .local v0, "backgroundConnectTime":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-lez v10, :cond_3

    .line 733
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v10

    .line 734
    iget-object v12, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v12

    .line 733
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 735
    .local v4, "conferenceConnectTime":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "conference - using connect time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 744
    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v7

    .line 745
    .local v7, "foregroundConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v7, :cond_2

    .line 746
    invoke-virtual {v7, v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConferenceConnectTime(J)V

    .line 751
    :cond_2
    :try_start_0
    invoke-virtual {v6, v2}, Lcom/android/ims/ImsCall;->merge(Lcom/android/ims/ImsCall;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_1
    return-void

    .line 736
    .end local v4    # "conferenceConnectTime":J
    .end local v7    # "foregroundConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_4

    .line 737
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "conference - bg call connect time is 0; using fg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 738
    move-wide v4, v8

    .restart local v4    # "conferenceConnectTime":J
    goto :goto_0

    .line 740
    .end local v4    # "conferenceConnectTime":J
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "conference - fg call connect time is 0; using bg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 741
    move-wide v4, v0

    .restart local v4    # "conferenceConnectTime":J
    goto :goto_0

    .line 752
    .restart local v7    # "foregroundConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :catch_0
    move-exception v3

    .line 753
    .local v3, "e":Lcom/android/ims/ImsException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "conference "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method declared-synchronized dial(Ljava/lang/String;IILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 12
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 374
    :try_start_0
    const-string/jumbo v7, "ril.cdma.inecmmode"

    const/4 v8, 0x0

    .line 373
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 375
    .local v6, "isPhoneInEcmMode":Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    .line 377
    .local v5, "isEmergencyNumber":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dial clirMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    .line 382
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v7, :cond_0

    .line 383
    new-instance v7, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v8, "service not available"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "isEmergencyNumber":Z
    .end local v6    # "isPhoneInEcmMode":Z
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 390
    .restart local v5    # "isEmergencyNumber":Z
    .restart local v6    # "isPhoneInEcmMode":Z
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v7, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 391
    const-string/jumbo v7, "SRVCC: there are connections during handover, trigger CSFB!"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 392
    new-instance v7, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v8, "cs_fallback"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 403
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 405
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 406
    .local v1, "defaultPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v7, v8, :cond_2

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_2

    .line 408
    const-string/jumbo v7, "There are CS connections, trigger CSFB!"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 409
    new-instance v7, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v8, "cs_fallback"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 414
    .end local v1    # "defaultPhone":Lcom/android/internal/telephony/Phone;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canDial()Z

    move-result v7

    if-nez v7, :cond_3

    .line 415
    new-instance v7, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v8, "cannot dial in current state"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 418
    :cond_3
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 419
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleEcmTimer(I)V

    .line 422
    :cond_4
    const/4 v4, 0x0

    .line 427
    .local v4, "holdBeforeDial":Z
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_6

    .line 428
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_5

    .line 430
    new-instance v7, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v8, "cannot dial in current state"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 433
    :cond_5
    const/4 v4, 0x1

    .line 435
    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 436
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 439
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 440
    .local v3, "fgState":Lcom/android/internal/telephony/Call$State;
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 442
    .local v0, "bgState":Lcom/android/internal/telephony/Call$State;
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    .line 444
    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    if-eqz v4, :cond_8

    .line 446
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 447
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 450
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v7, :cond_7

    .line 451
    new-instance v7, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v9, "cannot dial in current state"

    invoke-direct {v7, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 444
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 455
    :cond_7
    :try_start_4
    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v7, :cond_8

    .line 456
    const/4 v4, 0x0

    .line 460
    :cond_8
    new-instance v7, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 461
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 460
    invoke-direct {v7, v9, v10, p0, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    iput-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v8

    .line 463
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 466
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IMS: dial() holdBeforeDial = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isPhoneInEcmMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isEmergencyNumber = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 470
    const-string/jumbo v7, "CC"

    const-string/jumbo v8, "Dial"

    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    const-string/jumbo v10, ""

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 471
    const-string/jumbo v7, "CC"

    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    const-string/jumbo v9, ""

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logDebugMessagesWithDumpFormat(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 474
    if-nez v4, :cond_a

    .line 475
    if-eqz v6, :cond_9

    if-eqz v6, :cond_b

    if-eqz v5, :cond_b

    .line 476
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {p0, v7, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;II)V

    .line 491
    :cond_a
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 492
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 494
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v7

    .line 479
    :cond_b
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/ims/ImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_6
    .catch Lcom/android/ims/ImsException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 484
    :try_start_7
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v7, p0, v8, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 485
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    .line 486
    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 487
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    goto :goto_0

    .line 480
    :catch_0
    move-exception v2

    .line 481
    .local v2, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v2}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 482
    new-instance v7, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v8, "service not available"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 357
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clir_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    const/4 v3, 0x2

    .line 357
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 364
    .local v0, "oirMode":I
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;IILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    return-object v2
.end method

.method dial(Ljava/util/List;I)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/android/internal/telephony/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2327
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2328
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clir_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2333
    const/4 v3, 0x2

    .line 2328
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2334
    .local v0, "oirMode":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/util/List;II)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    return-object v2
.end method

.method declared-synchronized dial(Ljava/util/List;II)Lcom/android/internal/telephony/Connection;
    .locals 17
    .param p2, "clirMode"    # I
    .param p3, "videoState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Lcom/android/internal/telephony/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 2340
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "dial clirMode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2344
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    .line 2346
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v12, :cond_0

    .line 2347
    new-instance v12, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v13, "service not available"

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 2350
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canDial()Z

    move-result v12

    if-nez v12, :cond_1

    .line 2351
    new-instance v12, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v13, "cannot dial in current state"

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2354
    :cond_1
    const/4 v6, 0x0

    .line 2359
    .local v6, "holdBeforeDial":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_3

    .line 2360
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v12, v13, :cond_2

    .line 2362
    new-instance v12, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v13, "cannot dial in current state"

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2365
    :cond_2
    const/4 v6, 0x1

    .line 2366
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 2369
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 2370
    .local v5, "fgState":Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 2372
    .local v3, "bgState":Lcom/android/internal/telephony/Call$State;
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    .line 2374
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    monitor-enter v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2375
    if-eqz v6, :cond_5

    .line 2376
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 2377
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 2380
    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v12, :cond_4

    .line 2381
    new-instance v12, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v14, "cannot dial in current state"

    invoke-direct {v12, v14}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2374
    :catchall_1
    move-exception v12

    :try_start_3
    monitor-exit v13

    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2385
    :cond_4
    :try_start_4
    sget-object v12, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v12, :cond_5

    .line 2386
    const/4 v6, 0x0

    .line 2391
    :cond_5
    new-instance v12, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string/jumbo v15, ""

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-object/from16 v16, v0

    .line 2391
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v12, v14, v15, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 2394
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2395
    .local v4, "dialStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "str$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2396
    .local v10, "str":Ljava/lang/String;
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2398
    .end local v10    # "str":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v12, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConfDialStrings(Ljava/util/ArrayList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v13

    .line 2400
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 2403
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2404
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "number$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2405
    .local v7, "number":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2406
    const-string/jumbo v12, ", "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2408
    .end local v7    # "number":Ljava/lang/String;
    :cond_7
    const-string/jumbo v12, "CC"

    const-string/jumbo v13, "DialConf"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " numbers="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 2409
    const-string/jumbo v12, "CC"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    const-string/jumbo v14, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logDebugMessagesWithDumpFormat(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 2412
    if-nez v6, :cond_8

    .line 2413
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v12, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;II)V

    .line 2416
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 2417
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 2419
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v12
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 295
    const-string/jumbo v1, "dispose"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 297
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 298
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 299
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    .line 302
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterIndicationReceiver()V

    .line 307
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    if-eq v1, v3, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    monitor-enter v2

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    invoke-virtual {v1, v3}, Lcom/android/ims/ImsManager;->close(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :goto_0
    const/4 v1, -0x1

    :try_start_1
    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    .line 317
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 294
    :cond_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Lcom/android/ims/ImsException;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getImsService: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 309
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2083
    const-string/jumbo v0, "ImsPhoneCallTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2084
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mVoiceCallEndedRegistrants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mVoiceCallStartedRegistrants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mRingingCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mForegroundCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mBackgroundCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mHandoverCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPendingMO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mDesiredMute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    return-void
.end method

.method explicitCallTransfer()V
    .locals 0

    .prologue
    .line 758
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 325
    const-string/jumbo v0, "ImsPhoneCallTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method getEcbmInterface()Lcom/android/ims/ImsEcbm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 2104
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v1, :cond_0

    .line 2105
    new-instance v1, Lcom/android/ims/ImsException;

    const-string/jumbo v2, "no ims manager"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2108
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->getEcbmInterface(I)Lcom/android/ims/ImsEcbm;

    move-result-object v0

    .line 2109
    .local v0, "ecbm":Lcom/android/ims/ImsEcbm;
    return-object v0
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method getUtInterface()Lcom/android/ims/ImsUtInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1930
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v1, :cond_0

    .line 1931
    new-instance v1, Lcom/android/ims/ImsException;

    const-string/jumbo v2, "no ims manager"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1934
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->getSupplementaryServiceConfiguration(I)Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1935
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 2007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2009
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2005
    :goto_0
    :pswitch_0
    return-void

    .line 2011
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v1, :cond_0

    .line 2012
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    .line 2013
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 2014
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 2017
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 2018
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .line 2022
    :pswitch_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resumeWaitingOrHolding()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2023
    :catch_0
    move-exception v0

    .line 2025
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage EVENT_RESUME_BACKGROUND exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2030
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;II)V

    goto :goto_0

    .line 2035
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    if-eqz v1, :cond_1

    .line 2036
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    .line 2037
    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 2036
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;II)V

    .line 2038
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    .line 2040
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    goto :goto_0

    .line 2009
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2099
    return-void
.end method

.method hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 6
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 955
    const-string/jumbo v3, "hangup call"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 958
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v4, "no connections"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 961
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 962
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    const/4 v2, 0x0

    .line 964
    .local v2, "rejectCall":Z
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v3, :cond_2

    .line 965
    const-string/jumbo v3, "(ringing) hangup incoming"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 966
    const/4 v2, 0x1

    .line 987
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    .line 990
    if-eqz v1, :cond_7

    .line 991
    if-eqz v2, :cond_6

    const/16 v3, 0x1f8

    :try_start_0
    invoke-virtual {v1, v3}, Lcom/android/ims/ImsCall;->reject(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 954
    return-void

    .line 967
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v3, :cond_4

    .line 968
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isDialingOrAlerting()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 970
    const-string/jumbo v3, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 974
    :cond_3
    const-string/jumbo v3, "(foregnd) hangup foreground"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 978
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v3, :cond_5

    .line 980
    const-string/jumbo v3, "(backgnd) hangup waiting or background"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 983
    :cond_5
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ImsPhoneCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 984
    const-string/jumbo v5, "does not belong to ImsPhoneCallTracker "

    .line 983
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 992
    :cond_6
    const/16 v3, 0x1f5

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/android/ims/ImsCall;->terminate(I)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 993
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_7
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v3, :cond_1

    .line 995
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    .line 996
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    .line 997
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 998
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 999
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 1000
    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeMessages(I)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 941
    const-string/jumbo v0, "hangup connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 944
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ImsPhoneConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 945
    const-string/jumbo v2, "does not belong to ImsPhoneCallTracker "

    .line 944
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 940
    return-void
.end method

.method hangupAll()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1039
    const-string/jumbo v1, "hangupAll"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1042
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v1, :cond_0

    .line 1043
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v2, "No ImsManager Instance"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1047
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->hangupAllCall()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1053
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    .line 1055
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1056
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    .line 1058
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1059
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    .line 1037
    :cond_3
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 2113
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    return v0
.end method

.method public isVideoCallEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2125
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    .line 2125
    :cond_0
    return v0
.end method

.method public isVolteEnabled()Z
    .locals 2

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isVowifiEnabled()Z
    .locals 2

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsFeatureEnabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2047
    const-string/jumbo v0, "ImsPhoneCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ImsPhoneCallTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    return-void
.end method

.method logDebugMessagesWithDumpFormat(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 2501
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2503
    :cond_0
    return-void

    .line 2506
    :cond_1
    new-instance v1, Lcom/mediatek/telecom/FormattedLog$Builder;

    invoke-direct {v1}, Lcom/mediatek/telecom/FormattedLog$Builder;-><init>()V

    .line 2507
    const-string/jumbo v2, "CC"

    .line 2506
    invoke-virtual {v1, v2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 2508
    const-string/jumbo v2, "ImsPhone"

    .line 2506
    invoke-virtual {v1, v2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setServiceName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 2509
    sget-object v2, Lcom/mediatek/telecom/FormattedLog$OpType;->DUMP:Lcom/mediatek/telecom/FormattedLog$OpType;

    .line 2506
    invoke-virtual {v1, v2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setOpType(Lcom/mediatek/telecom/FormattedLog$OpType;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 2510
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getCallNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/lang/String;

    move-result-object v2

    .line 2506
    invoke-virtual {v1, v2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 2511
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnectionCallId(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/lang/String;

    move-result-object v2

    .line 2506
    invoke-virtual {v1, v2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/mediatek/telecom/FormattedLog$Builder;->setExtraMessage(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 2513
    const-string/jumbo v2, "state"

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2506
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    .line 2514
    const-string/jumbo v3, "isConfCall"

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "Yes"

    .line 2506
    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/mediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 2515
    const-string/jumbo v2, "isConfChildCall"

    const-string/jumbo v3, "No"

    .line 2506
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 2516
    const-string/jumbo v2, "parent"

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getParentCallName()Ljava/lang/String;

    move-result-object v3

    .line 2506
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/telecom/FormattedLog$Builder;->buildDumpInfo()Lcom/mediatek/telecom/FormattedLog;

    move-result-object v0

    .line 2519
    .local v0, "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    if-eqz v0, :cond_2

    .line 2520
    invoke-virtual {v0}, Lcom/mediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2500
    :cond_2
    return-void

    .line 2514
    .end local v0    # "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    :cond_3
    const-string/jumbo v1, "No"

    goto :goto_0
.end method

.method logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 2470
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2472
    :cond_0
    return-void

    .line 2470
    :cond_1
    if-eqz p3, :cond_0

    .line 2475
    new-instance v1, Lcom/mediatek/telecom/FormattedLog$Builder;

    invoke-direct {v1}, Lcom/mediatek/telecom/FormattedLog$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 2477
    const-string/jumbo v2, "ImsPhone"

    .line 2475
    invoke-virtual {v1, v2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setServiceName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 2478
    sget-object v2, Lcom/mediatek/telecom/FormattedLog$OpType;->OPERATION:Lcom/mediatek/telecom/FormattedLog$OpType;

    .line 2475
    invoke-virtual {v1, v2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setOpType(Lcom/mediatek/telecom/FormattedLog$OpType;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setActionName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 2480
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getCallNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/lang/String;

    move-result-object v2

    .line 2475
    invoke-virtual {v1, v2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 2481
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnectionCallId(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/lang/String;

    move-result-object v2

    .line 2475
    invoke-virtual {v1, v2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/mediatek/telecom/FormattedLog$Builder;->setExtraMessage(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/telecom/FormattedLog$Builder;->buildDebugMsg()Lcom/mediatek/telecom/FormattedLog;

    move-result-object v0

    .line 2485
    .local v0, "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    if-eqz v0, :cond_2

    .line 2486
    invoke-virtual {v0}, Lcom/mediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2469
    :cond_2
    return-void
.end method

.method logState()V
    .locals 0

    .prologue
    .line 2061
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2051
    const-string/jumbo v0, "ImsPhoneCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ImsPhoneCallTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    return-void
.end method

.method notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;

    .prologue
    const/4 v2, 0x0

    .line 1982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifySrvccState state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1984
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 1986
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne v0, v1, :cond_0

    .line 1987
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1988
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1989
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1992
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v0, :cond_0

    .line 1993
    const-string/jumbo v0, "SRVCC: reset mPendingMO"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1994
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 1995
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1981
    :cond_0
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 344
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 345
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 343
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 333
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 334
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 332
    return-void
.end method

.method rejectCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 629
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "Reject"

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 631
    const-string/jumbo v0, "rejectCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 627
    return-void

    .line 636
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resumeWaitingOrHolding()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1066
    const-string/jumbo v2, "resumeWaitingOrHolding"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1069
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1072
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 1073
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->resume()V

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1074
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    .line 1077
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasPendingResumeRequest:Z

    if-eqz v2, :cond_2

    .line 1078
    const-string/jumbo v2, "there is a pending resume background request, ignore accept()!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1079
    return-void

    .line 1083
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 1084
    .restart local v1    # "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_0

    .line 1086
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    invoke-static {v2}, Lcom/android/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v2

    .line 1085
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->accept(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1101
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v0

    .line 1102
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1093
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 1094
    .restart local v1    # "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->resume()V

    .line 1097
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasPendingResumeRequest:Z

    .line 1098
    const-string/jumbo v2, "turn on the resuem pending request lock!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 905
    const-string/jumbo v1, "sendDtmf"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 907
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 908
    .local v0, "imscall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall;->sendDtmf(CLandroid/os/Message;)V

    .line 904
    :cond_0
    return-void
.end method

.method sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1108
    const-string/jumbo v3, "sendUSSD"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1111
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    if-eqz v3, :cond_0

    .line 1112
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, p1}, Lcom/android/ims/ImsCall;->sendUssd(Ljava/lang/String;)V

    .line 1113
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1114
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1115
    return-void

    .line 1118
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 1119
    .local v0, "callees":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    .line 1120
    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 1119
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/ims/ImsManager;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    .line 1121
    .local v2, "profile":Lcom/android/ims/ImsCallProfile;
    const-string/jumbo v3, "dialstring"

    .line 1122
    const/4 v4, 0x2

    .line 1121
    invoke-virtual {v2, v3, v4}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1125
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    .line 1127
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    .line 1128
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    .line 1127
    invoke-virtual {v3, v4, v2, v0, v5}, Lcom/android/ims/ImsManager;->makeCall(ILcom/android/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    .end local v0    # "callees":[Ljava/lang/String;
    .end local v2    # "profile":Lcom/android/ims/ImsCallProfile;
    :goto_0
    return-void

    .line 1129
    :catch_0
    move-exception v1

    .line 1130
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendUSSD : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1131
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 896
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->setMute(Z)V

    .line 895
    return-void
.end method

.method setUiTTYMode(ILandroid/os/Message;)V
    .locals 4
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 888
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/ims/ImsManager;->setUiTTYMode(Landroid/content/Context;IILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :goto_0
    return-void

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTTYMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 891
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 915
    const-string/jumbo v1, "startDtmf"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 917
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 918
    .local v0, "imscall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    .line 919
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->startDtmf(C)V

    .line 914
    :goto_0
    return-void

    .line 921
    :cond_0
    const-string/jumbo v1, "startDtmf : no foreground call"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method stopDtmf()V
    .locals 2

    .prologue
    .line 927
    const-string/jumbo v1, "stopDtmf"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 929
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 930
    .local v0, "imscall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->stopDtmf()V

    .line 926
    :goto_0
    return-void

    .line 933
    :cond_0
    const-string/jumbo v1, "stopDtmf : no foreground call"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 653
    const-string/jumbo v4, "switchWaitingOrHoldingAndActive"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 656
    const/4 v0, 0x0

    .line 657
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    const/4 v3, 0x0

    .line 658
    .local v3, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    .line 659
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 660
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 661
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switch with background connection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, "msg":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "CC"

    const-string/jumbo v5, "Swap"

    invoke-virtual {p0, v4, v5, v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 672
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_2

    .line 673
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v5, "cannot be in the incoming state"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 663
    .local v3, "msg":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "hold to background"

    .local v3, "msg":Ljava/lang/String;
    goto :goto_0

    .line 666
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .local v3, "msg":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 667
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    const-string/jumbo v3, "unhold to foreground"

    .local v3, "msg":Ljava/lang/String;
    goto :goto_0

    .line 676
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_5

    .line 677
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 678
    .local v2, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v2, :cond_3

    .line 679
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v5, "no ims call"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 684
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    .line 685
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    .line 686
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 691
    :try_start_0
    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->hold()V

    .line 694
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    if-nez v4, :cond_4

    .line 695
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    .end local v2    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_4
    :goto_1
    return-void

    .line 697
    .restart local v2    # "imsCall":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v1

    .line 698
    .local v1, "e":Lcom/android/ims/ImsException;
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 699
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 701
    .end local v1    # "e":Lcom/android/ims/ImsException;
    .end local v2    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_4

    .line 702
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resumeWaitingOrHolding()V

    goto :goto_1
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 349
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 338
    return-void
.end method
