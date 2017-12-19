.class public Lcom/android/internal/telephony/imsphone/ImsPhone;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneBase;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;,
        Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;,
        Lcom/android/internal/telephony/imsphone/ImsPhone$1;,
        Lcom/android/internal/telephony/imsphone/ImsPhone$2;,
        Lcom/android/internal/telephony/imsphone/ImsPhone$3;
    }
.end annotation


# static fields
.field static final CANCEL_ECM_TIMER:I = 0x1

.field public static final CS_FALLBACK:Ljava/lang/String; = "cs_fallback"

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field protected static final EVENT_DEFAULT_PHONE_DATA_STATE_CHANGED:I = 0x2b

.field protected static final EVENT_GET_CALL_BARRING_DONE:I = 0x28

.field protected static final EVENT_GET_CALL_WAITING_DONE:I = 0x2a

.field protected static final EVENT_GET_CLIR_DONE:I = 0x8b

.field protected static final EVENT_SET_CALL_BARRING_DONE:I = 0x27

.field protected static final EVENT_SET_CALL_WAITING_DONE:I = 0x29

.field protected static final EVENT_SET_CLIR_DONE:I = 0x8a

.field public static final EXTRA_KEY_ALERT_MESSAGE:Ljava/lang/String; = "alertMessage"

.field public static final EXTRA_KEY_ALERT_SHOW:Ljava/lang/String; = "alertShow"

.field public static final EXTRA_KEY_ALERT_TITLE:Ljava/lang/String; = "alertTitle"

.field public static final EXTRA_KEY_NOTIFICATION_MESSAGE:Ljava/lang/String; = "notificationMessage"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhone"

.field static final RESTART_ECM_TIMER:I = 0x0

.field public static final USSD_DURING_IMS_INCALL:Ljava/lang/String; = "ussd_during_ims_incall"

.field public static final UT_BUNDLE_KEY_CLIR:Ljava/lang/String; = "queryClir"

.field private static final VDBG:Z


# instance fields
.field mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mDialString:Ljava/lang/String;

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field mImsEcbmStateListener:Lcom/android/ims/ImsEcbmStateListener;

.field private mImsRegistered:Z

.field protected mIsPhoneInEcmState:Z

.field private mLastDialString:Ljava/lang/String;

.field mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field private mResultReceiver:Landroid/content/BroadcastReceiver;

.field mSS:Landroid/telephony/ServiceState;

.field private final mSilentRedialRegistrants:Landroid/os/RegistrantList;

.field public mUssiCSFB:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleEnterEmergencyCallbackMode()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleExitEmergencyCallbackMode()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 213
    const-string/jumbo v1, "ImsPhone"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 156
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mUssiCSFB:Z

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 168
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    .line 180
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    .line 182
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    .line 187
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 1494
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 1493
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsEcbmStateListener:Lcom/android/ims/ImsEcbmStateListener;

    .line 1664
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$3;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    check-cast p3, Lcom/android/internal/telephony/PhoneBase;

    .end local p3    # "defaultPhone":Lcom/android/internal/telephony/Phone;
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 216
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    .line 224
    const-string/jumbo v1, "ril.cdma.inecmmode"

    .line 223
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    .line 226
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 227
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "ImsPhone"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 228
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 233
    const/16 v2, 0x2b

    .line 231
    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    .line 212
    return-void
.end method

.method public static checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/content/Context;)V
    .locals 4
    .param p0, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 561
    if-eqz p0, :cond_1

    .line 562
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    :cond_0
    return-void

    .line 563
    :cond_1
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 564
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    .line 563
    if-eqz v1, :cond_3

    .line 565
    invoke-static {p1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 567
    .local v0, "wfcWiFiOnly":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 568
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    .line 570
    const-string/jumbo v2, "WFC Wi-Fi Only Mode: IMS not registered"

    .line 569
    const/4 v3, 0x1

    .line 568
    invoke-direct {v1, v3, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 565
    .end local v0    # "wfcWiFiOnly":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "wfcWiFiOnly":Z
    goto :goto_0

    .line 563
    .end local v0    # "wfcWiFiOnly":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "wfcWiFiOnly":Z
    goto :goto_0
.end method

.method private getActionFromCFAction(I)I
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 784
    packed-switch p1, :pswitch_data_0

    .line 793
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 785
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 786
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 787
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 788
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 784
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getCBTypeFromFacility(Ljava/lang/String;)I
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;

    .prologue
    .line 913
    const-string/jumbo v0, "AO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    const/4 v0, 0x2

    return v0

    .line 915
    :cond_0
    const-string/jumbo v0, "OI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    const/4 v0, 0x3

    return v0

    .line 917
    :cond_1
    const-string/jumbo v0, "OX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 918
    const/4 v0, 0x4

    return v0

    .line 919
    :cond_2
    const-string/jumbo v0, "AI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 920
    const/4 v0, 0x1

    return v0

    .line 921
    :cond_3
    const-string/jumbo v0, "IR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 922
    const/4 v0, 0x5

    return v0

    .line 923
    :cond_4
    const-string/jumbo v0, "AB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 924
    const/4 v0, 0x7

    return v0

    .line 925
    :cond_5
    const-string/jumbo v0, "AG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 926
    const/16 v0, 0x8

    return v0

    .line 927
    :cond_6
    const-string/jumbo v0, "AC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 928
    const/16 v0, 0x9

    return v0

    .line 931
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private getCFReasonFromCondition(I)I
    .locals 1
    .param p1, "condition"    # I

    .prologue
    const/4 v0, 0x3

    .line 769
    packed-switch p1, :pswitch_data_0

    .line 780
    return v0

    .line 770
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 771
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 772
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 773
    :pswitch_3
    return v0

    .line 774
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 775
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 769
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getCallForwardInfo(Lcom/android/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 2
    .param p1, "info"    # Lcom/android/ims/ImsCallForwardInfo;

    .prologue
    .line 1202
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1203
    .local v0, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1204
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1205
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1206
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1207
    iget-object v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1208
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1209
    return-object v0
.end method

.method private getCallForwardInfoEx(Lcom/android/ims/ImsCallForwardInfoEx;)Lcom/android/internal/telephony/CallForwardInfoEx;
    .locals 2
    .param p1, "info"    # Lcom/android/ims/ImsCallForwardInfoEx;

    .prologue
    .line 1947
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfoEx;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfoEx;-><init>()V

    .line 1948
    .local v0, "cfInfo":Lcom/android/internal/telephony/CallForwardInfoEx;
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mStatus:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->status:I

    .line 1949
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mCondition:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->reason:I

    .line 1950
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mServiceClass:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->serviceClass:I

    .line 1951
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mToA:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->toa:I

    .line 1952
    iget-object v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 1953
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mTimeSeconds:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSeconds:I

    .line 1954
    iget-object v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mTimeSlot:[J

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSlot:[J

    .line 1955
    return-object v0
.end method

.method private getConditionFromCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 754
    packed-switch p1, :pswitch_data_0

    .line 765
    const/4 v0, -0x1

    return v0

    .line 755
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 756
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 757
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 758
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 759
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 760
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 754
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 375
    const/4 v1, 0x0

    return v1

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_2

    .line 379
    const-string/jumbo v1, "ImsPhone"

    const-string/jumbo v2, "MmiCode 0: rejectCall"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_1
    :goto_0
    return v3

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "ImsPhone"

    const-string/jumbo v2, "reject failed"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 386
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_1

    .line 387
    const-string/jumbo v1, "ImsPhone"

    const-string/jumbo v2, "MmiCode 0: hangupWaitingOrBackground"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 390
    :catch_1
    move-exception v0

    .line 391
    .restart local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "ImsPhone"

    const-string/jumbo v2, "hangup failed"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    .line 431
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 433
    .local v2, "len":I
    if-le v2, v3, :cond_0

    .line 434
    const/4 v3, 0x0

    return v3

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    .line 439
    .local v0, "call":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    if-le v2, v5, :cond_1

    .line 440
    const-string/jumbo v3, "ImsPhone"

    const-string/jumbo v4, "separate not supported"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget-object v3, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 457
    :goto_0
    return v5

    .line 444
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 445
    const-string/jumbo v3, "ImsPhone"

    const-string/jumbo v4, "MmiCode 2: accept ringing call"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 451
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v3, "ImsPhone"

    const-string/jumbo v4, "switch failed"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    sget-object v3, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 448
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "ImsPhone"

    const-string/jumbo v4, "MmiCode 2: switchWaitingOrHoldingAndActive"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 401
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 403
    .local v2, "len":I
    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 404
    const/4 v3, 0x0

    return v3

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    .line 410
    .local v0, "call":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    if-le v2, v5, :cond_1

    .line 411
    :try_start_0
    const-string/jumbo v3, "ImsPhone"

    const-string/jumbo v4, "not support 1X SEND"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sget-object v3, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 427
    :goto_0
    return v5

    .line 414
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 415
    const-string/jumbo v3, "ImsPhone"

    const-string/jumbo v4, "MmiCode 1: hangup foreground"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v3, "ImsPhone"

    const-string/jumbo v4, "hangup failed"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    sget-object v3, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 418
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "ImsPhone"

    const-string/jumbo v4, "MmiCode 1: switchWaitingOrHoldingAndActive"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleCbQueryResult([Lcom/android/ims/ImsSsInfo;)[I
    .locals 3
    .param p1, "infos"    # [Lcom/android/ims/ImsSsInfo;

    .prologue
    const/4 v2, 0x0

    .line 1242
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 1243
    .local v0, "cbInfos":[I
    aget-object v1, p1, v2

    iget v1, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    aput v1, v0, v2

    .line 1245
    return-object v0
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 485
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 486
    const/4 v0, 0x0

    return v0

    .line 489
    :cond_0
    const-string/jumbo v0, "ImsPhone"

    const-string/jumbo v1, "MmiCode 5: CCBS not supported!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 492
    return v2
.end method

.method private handleCfInTimeSlotQueryResult([Lcom/android/ims/ImsCallForwardInfoEx;)[Lcom/android/internal/telephony/CallForwardInfoEx;
    .locals 8
    .param p1, "infos"    # [Lcom/android/ims/ImsCallForwardInfoEx;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1917
    const/4 v0, 0x0

    .line 1919
    .local v0, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-eqz v4, :cond_0

    .line 1920
    array-length v4, p1

    new-array v0, v4, [Lcom/android/internal/telephony/CallForwardInfoEx;

    .line 1923
    .end local v0    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 1924
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p1, :cond_1

    array-length v4, p1

    if-nez v4, :cond_3

    .line 1925
    :cond_1
    if-eqz v2, :cond_2

    .line 1928
    invoke-virtual {v2, v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1943
    :cond_2
    return-object v0

    .line 1931
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, p1

    .local v3, "s":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1932
    aget-object v4, p1, v1

    iget v4, v4, Lcom/android/ims/ImsCallForwardInfoEx;->mCondition:I

    if-nez v4, :cond_4

    .line 1933
    if-eqz v2, :cond_4

    .line 1934
    aget-object v4, p1, v1

    iget v4, v4, Lcom/android/ims/ImsCallForwardInfoEx;->mStatus:I

    if-ne v4, v5, :cond_5

    move v4, v5

    .line 1935
    :goto_1
    aget-object v7, p1, v1

    iget-object v7, v7, Lcom/android/ims/ImsCallForwardInfoEx;->mNumber:Ljava/lang/String;

    .line 1934
    invoke-virtual {v2, v5, v4, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1936
    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/android/ims/ImsCallForwardInfoEx;->mTimeSlot:[J

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->saveTimeSlot([J)V

    .line 1939
    :cond_4
    aget-object v4, p1, v1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardInfoEx(Lcom/android/ims/ImsCallForwardInfoEx;)Lcom/android/internal/telephony/CallForwardInfoEx;

    move-result-object v4

    aput-object v4, v0, v1

    .line 1931
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v4, v6

    .line 1934
    goto :goto_1
.end method

.method private handleCfQueryResult([Lcom/android/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;
    .locals 8
    .param p1, "infos"    # [Lcom/android/ims/ImsCallForwardInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1213
    const/4 v0, 0x0

    .line 1215
    .local v0, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-eqz v4, :cond_0

    .line 1216
    array-length v4, p1

    new-array v0, v4, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1219
    .end local v0    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 1220
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p1, :cond_1

    array-length v4, p1

    if-nez v4, :cond_3

    .line 1221
    :cond_1
    if-eqz v2, :cond_2

    .line 1224
    invoke-virtual {v2, v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1238
    :cond_2
    return-object v0

    .line 1227
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, p1

    .local v3, "s":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1228
    aget-object v4, p1, v1

    iget v4, v4, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    if-nez v4, :cond_4

    .line 1229
    if-eqz v2, :cond_4

    .line 1230
    aget-object v4, p1, v1

    iget v4, v4, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    if-ne v4, v5, :cond_5

    move v4, v5

    .line 1231
    :goto_1
    aget-object v7, p1, v1

    iget-object v7, v7, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 1230
    invoke-virtual {v2, v5, v4, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1234
    :cond_4
    aget-object v4, p1, v1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardInfo(Lcom/android/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v4

    aput-object v4, v0, v1

    .line 1227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v4, v6

    .line 1230
    goto :goto_1
.end method

.method private handleCwQueryResult([Lcom/android/ims/ImsSsInfo;)[I
    .locals 4
    .param p1, "infos"    # [Lcom/android/ims/ImsSsInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1249
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1250
    .local v0, "cwInfos":[I
    aput v2, v0, v2

    .line 1252
    aget-object v1, p1, v2

    iget v1, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    if-ne v1, v3, :cond_0

    .line 1253
    aput v3, v0, v2

    .line 1254
    aput v3, v0, v3

    .line 1257
    :cond_0
    return-object v0
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 475
    .local v0, "len":I
    if-eq v0, v3, :cond_0

    .line 476
    const/4 v1, 0x0

    return v1

    .line 479
    :cond_0
    const-string/jumbo v1, "ImsPhone"

    const-string/jumbo v2, "MmiCode 4: not support explicit call transfer"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 481
    return v3
.end method

.method private handleEnterEmergencyCallbackMode()V
    .locals 6

    .prologue
    .line 1544
    const-string/jumbo v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1545
    iget-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    .line 1544
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    if-nez v2, :cond_0

    .line 1549
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    .line 1551
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallbackModeChange()V

    .line 1552
    const-string/jumbo v2, "ril.cdma.inecmmode"

    const-string/jumbo v3, "true"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    const-string/jumbo v2, "ro.cdma.ecmexittimer"

    const-wide/32 v4, 0x493e0

    .line 1556
    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1558
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1560
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1542
    .end local v0    # "delayInMillis":J
    :cond_0
    return-void
.end method

.method private handleExitEmergencyCallbackMode()V
    .locals 3

    .prologue
    .line 1566
    const-string/jumbo v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleExitEmergencyCallbackMode: mIsPhoneInEcmState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1567
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    .line 1566
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1572
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 1575
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    if-eqz v0, :cond_1

    .line 1576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    .line 1577
    const-string/jumbo v0, "ril.cdma.inecmmode"

    const-string/jumbo v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallbackModeChange()V

    .line 1564
    return-void
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 462
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 463
    const/4 v0, 0x0

    return v0

    .line 466
    :cond_0
    const-string/jumbo v0, "ImsPhone"

    const-string/jumbo v1, "MmiCode 3: merge calls"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->conference()V

    .line 468
    return v2
.end method

.method private isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    .prologue
    const/4 v0, 0x1

    .line 750
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUssdDuringInCall(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)Z
    .locals 1
    .param p1, "mmi"    # Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .prologue
    .line 537
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isUssdNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    move-result v0

    return v0

    .line 538
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    .prologue
    .line 738
    packed-switch p1, :pswitch_data_0

    .line 745
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 743
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 738
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    .prologue
    .line 724
    packed-switch p1, :pswitch_data_0

    .line 733
    const/4 v0, 0x0

    return v0

    .line 731
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .prologue
    const/4 v2, 0x0

    .line 1071
    const-string/jumbo v0, "ImsPhone"

    const-string/jumbo v1, "onNetworkInitiatedUssd"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 1073
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1072
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1070
    return-void
.end method

.method private sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1262
    if-eqz p1, :cond_1

    .line 1263
    const/4 v0, 0x0

    .line 1264
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    if-eqz p3, :cond_0

    .line 1265
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1267
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1268
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1261
    :cond_1
    return-void
.end method

.method private updateDataServiceState()V
    .locals 4

    .prologue
    .line 1273
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1274
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 1275
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1276
    .local v0, "ss":Landroid/telephony/ServiceState;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 1277
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 1278
    const-string/jumbo v1, "ImsPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDataServiceState: defSs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " imsSs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    .end local v0    # "ss":Landroid/telephony/ServiceState;
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 1
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V

    .line 309
    return-void
.end method

.method public bridge synthetic activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->activateCellBroadcastSms(ILandroid/os/Message;)V

    return-void
.end method

.method public callEndCleanupHandOverCallIfAny()V
    .locals 1

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->callEndCleanupHandOverCallIfAny()V

    .line 1660
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canConference()Z

    move-result v0

    return v0
.end method

.method public canDial()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canTransfer()Z

    move-result v0

    return v0
.end method

.method cancelUSSD()V
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cancelUSSD()V

    .line 990
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    .line 340
    return-void
.end method

.method public conference()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->conference()V

    .line 335
    return-void
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 583
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dialInternal(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dialInternal(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/util/List;I)Lcom/android/internal/telephony/Connection;
    .locals 1
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
    .line 1978
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/util/List;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method protected dialInternal(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 597
    move-object v2, p1

    .line 598
    .local v2, "newDialString":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 600
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 605
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 606
    return-object v6

    .line 609
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 610
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    return-object v3

    .line 614
    :cond_2
    move-object v1, p1

    .line 615
    .local v1, "networkPortion":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 617
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 621
    :cond_3
    invoke-static {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v0

    .line 622
    .local v0, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    const-string/jumbo v3, "ImsPhone"

    .line 623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dialing w/ mmi \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 622
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUssdDuringInCall(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 628
    const-string/jumbo v3, "ImsPhone"

    const-string/jumbo v4, "USSD during in-call, ignore this operation!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v4, "ussd_during_ims_incall"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 634
    :cond_4
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDialString:Ljava/lang/String;

    .line 635
    if-nez v0, :cond_5

    .line 636
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    return-object v3

    .line 637
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isTemporaryModeCLIR()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 638
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getDialingNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;IILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    return-object v3

    .line 639
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isSupportedOverImsPhone()Z

    move-result v3

    if-nez v3, :cond_7

    .line 641
    const-string/jumbo v3, "ImsPhone"

    const-string/jumbo v4, "MMI not supported over ImsPhone()"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v4, "cs_fallback"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 648
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mUssiCSFB:Z

    if-eqz v3, :cond_8

    .line 649
    const-string/jumbo v3, "ImsPhone"

    const-string/jumbo v4, "USSI CSFB"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mUssiCSFB:Z

    .line 651
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v4, "cs_fallback"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 654
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v6, v0, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 656
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processCode()V

    .line 658
    return-object v6
.end method

.method public bridge synthetic disableDataConnectivity()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disableLocationUpdates()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->disableLocationUpdates()V

    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 261
    const-string/jumbo v0, "ImsPhone"

    const-string/jumbo v1, "dispose"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dispose()V

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    .line 260
    :cond_0
    return-void
.end method

.method public bridge synthetic enableDataConnectivity()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic enableLocationUpdates()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->enableLocationUpdates()V

    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 4

    .prologue
    .line 1527
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1528
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1530
    :cond_0
    const-string/jumbo v2, "ImsPhone"

    const-string/jumbo v3, "exitEmergencyCallbackMode()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object v1

    .line 1536
    .local v1, "ecbm":Lcom/android/ims/ImsEcbm;
    invoke-virtual {v1}, Lcom/android/ims/ImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1526
    .end local v1    # "ecbm":Lcom/android/ims/ImsEcbm;
    :goto_0
    return-void

    .line 1537
    :catch_0
    move-exception v0

    .line 1538
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->printStackTrace()V

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->explicitCallTransfer()V

    .line 350
    return-void
.end method

.method public bridge synthetic getAllCellInfo()Ljava/util/List;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public getCallBarring(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 940
    const-string/jumbo v3, "ImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCallBarring facility="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/16 v3, 0x28

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 945
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 946
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCallForwardInTimeSlot(ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1860
    const-string/jumbo v3, "ImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCallForwardInTimeSlot reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    if-nez p1, :cond_1

    .line 1864
    const-string/jumbo v3, "ImsPhone"

    const-string/jumbo v4, "requesting call forwarding in a time slot query."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    const/16 v3, 0x6d

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1870
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 1872
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    move-result v3

    .line 1871
    invoke-interface {v2, v3, v1}, Lcom/android/ims/ImsUtInterface;->queryCallForwardInTimeSlot(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1858
    .end local v1    # "resp":Landroid/os/Message;
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_0
    :goto_0
    return-void

    .line 1874
    .restart local v1    # "resp":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1875
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1877
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v1    # "resp":Landroid/os/Message;
    :cond_1
    if-eqz p2, :cond_0

    .line 1878
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public bridge synthetic getCallForwardingIndicator()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 799
    const-string/jumbo v3, "ImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCallForwardingOption reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 801
    const-string/jumbo v3, "ImsPhone"

    const-string/jumbo v4, "requesting call forwarding query."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/16 v3, 0xd

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 806
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 807
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Lcom/android/ims/ImsUtInterface;->queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    .end local v1    # "resp":Landroid/os/Message;
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_0
    :goto_0
    return-void

    .line 808
    .restart local v1    # "resp":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 811
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v1    # "resp":Landroid/os/Message;
    :cond_1
    if-eqz p2, :cond_0

    .line 812
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 5
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 882
    const-string/jumbo v3, "ImsPhone"

    const-string/jumbo v4, "getCallWaiting"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/16 v3, 0x2a

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 887
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 888
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, v1}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method getCommandException(I)Lcom/android/internal/telephony/CommandException;
    .locals 4
    .param p1, "code"    # I

    .prologue
    .line 1024
    const-string/jumbo v1, "ImsPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCommandException code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 1027
    .local v0, "error":Lcom/android/internal/telephony/CommandException$Error;
    sparse-switch p1, :sswitch_data_0

    .line 1053
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v1

    .line 1029
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    .line 1032
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    .line 1035
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    .line 1038
    :sswitch_3
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_403_FORBIDDEN:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    .line 1041
    :sswitch_4
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->UT_UNKNOWN_HOST:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    .line 1044
    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isEnableXcapHttpResponse409()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    const-string/jumbo v1, "ImsPhone"

    const-string/jumbo v2, "getCommandException UT_XCAP_409_CONFLICT"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_409_CONFLICT:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    .line 1027
    :sswitch_data_0
    .sparse-switch
        0x321 -> :sswitch_0
        0x322 -> :sswitch_2
        0x335 -> :sswitch_1
        0x33e -> :sswitch_3
        0x33f -> :sswitch_4
        0x341 -> :sswitch_5
    .end sparse-switch
.end method

.method getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1058
    const/4 v0, 0x0

    .line 1060
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    instance-of v1, p1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_0

    .line 1061
    check-cast p1, Lcom/android/ims/ImsException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1066
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    :goto_0
    return-object v0

    .line 1063
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_0
    const-string/jumbo v1, "ImsPhone"

    const-string/jumbo v2, "getCommandException generic failure"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    goto :goto_0
.end method

.method public getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method public bridge synthetic getCurrentDataConnectionList()Ljava/util/List;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataEnabled()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDataRoamingEnabled()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel2()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandoverConnection()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    .local v0, "connList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1156
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1158
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1159
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1160
    return-object v0

    .line 1162
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccRecordsLoaded()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2024
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2025
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2027
    :cond_0
    return-object v1
.end method

.method public bridge synthetic getImei()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getNeighboringCids(Landroid/os/Message;)V

    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 5
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1788
    const-string/jumbo v3, "ImsPhone"

    const-string/jumbo v4, "getOutgoingCallerIdDisplay"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    const/16 v3, 0x8b

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1794
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 1795
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, v1}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1786
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 1796
    :catch_0
    move-exception v0

    .line 1797
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneType()I
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public bridge synthetic getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSubId()I
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 497
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 498
    return v3

    .line 501
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    return v3

    .line 505
    :cond_1
    const/4 v1, 0x0

    .line 506
    .local v1, "result":Z
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 507
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    .line 532
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 509
    .restart local v1    # "result":Z
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 513
    .local v1, "result":Z
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 517
    .local v1, "result":Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 520
    .local v1, "result":Z
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 523
    .local v1, "result":Z
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 526
    .local v1, "result":Z
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1284
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1287
    .local v4, "ar":Landroid/os/AsyncResult;
    const-string/jumbo v21, "ImsPhone"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "handleMessage what="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    .line 1485
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->handleMessage(Landroid/os/Message;)V

    .line 1283
    :goto_0
    return-void

    .line 1290
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v15

    .line 1291
    .local v15, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v5, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;

    .line 1292
    .local v5, "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 1293
    .local v6, "cfAction":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 1295
    .local v11, "cfReason":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isCfEnable(I)Z

    move-result v21

    if-eqz v21, :cond_3

    const/4 v7, 0x1

    .line 1296
    .local v7, "cfEnable":I
    :goto_1
    const/4 v9, 0x0

    .line 1298
    .local v9, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    iget-boolean v0, v5, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mIsCfu:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    if-eqz v15, :cond_0

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1300
    if-nez v11, :cond_5

    .line 1301
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 1302
    const-string/jumbo v21, "ImsPhone"

    const-string/jumbo v22, "arResult is null."

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    .end local v9    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->isSupportSaveCFNumber()Z

    move-result v21

    .line 1315
    if-eqz v21, :cond_2

    .line 1317
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 1318
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_1

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 1321
    iget-object v0, v5, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mSetCfNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1320
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->applyCFSharePreference(ILjava/lang/String;)Z

    move-result v18

    .line 1322
    .local v18, "ret":Z
    if-nez v18, :cond_1

    .line 1323
    const-string/jumbo v21, "ImsPhone"

    const-string/jumbo v22, "applySharePreference false."

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    .end local v18    # "ret":Z
    :cond_1
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v6, v0, :cond_2

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->clearCFSharePreference(I)V

    .line 1335
    :cond_2
    iget-object v0, v5, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mOnComplete:Landroid/os/Message;

    move-object/from16 v21, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v9, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1295
    .end local v7    # "cfEnable":I
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "cfEnable":I
    goto/16 :goto_1

    .line 1304
    .restart local v9    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_4
    const-string/jumbo v21, "ImsPhone"

    const-string/jumbo v22, "[EVENT_SET_CALL_FORWARD_DONE check cfinfo."

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [Lcom/android/ims/ImsCallForwardInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCfQueryResult([Lcom/android/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v9

    .local v9, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    goto/16 :goto_2

    .line 1308
    .local v9, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_6

    const/16 v21, 0x1

    :goto_3
    iget-object v0, v5, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mSetCfNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const/16 v21, 0x0

    goto :goto_3

    .line 1339
    .end local v5    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    .end local v6    # "cfAction":I
    .end local v7    # "cfEnable":I
    .end local v9    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v11    # "cfReason":I
    .end local v15    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :sswitch_1
    const/4 v9, 0x0

    .line 1340
    .restart local v9    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_7

    .line 1341
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [Lcom/android/ims/ImsCallForwardInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCfQueryResult([Lcom/android/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v9

    .line 1343
    .end local v9    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_7
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v9, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1350
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1351
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/ims/ImsException;

    move/from16 v21, v0

    .line 1350
    if-eqz v21, :cond_8

    .line 1352
    iget-object v14, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v14, Lcom/android/ims/ImsException;

    .line 1353
    .local v14, "imsException":Lcom/android/ims/ImsException;
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Lcom/android/ims/ImsException;->getCode()I

    move-result v21

    .line 1354
    const/16 v22, 0x340

    .line 1353
    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 1355
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 1356
    .local v17, "resp":Landroid/os/Message;
    if-eqz v17, :cond_8

    .line 1357
    new-instance v21, Lcom/android/internal/telephony/CommandException;

    .line 1358
    sget-object v22, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_404_NOT_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    .line 1357
    invoke-direct/range {v21 .. v22}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1359
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .line 1360
    return-void

    .line 1366
    .end local v14    # "imsException":Lcom/android/ims/ImsException;
    .end local v17    # "resp":Landroid/os/Message;
    :cond_8
    :sswitch_3
    const/16 v20, 0x0

    .line 1367
    .local v20, "ssInfos":[I
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 1368
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x28

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 1369
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [Lcom/android/ims/ImsSsInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCbQueryResult([Lcom/android/ims/ImsSsInfo;)[I

    move-result-object v20

    .line 1374
    .end local v20    # "ssInfos":[I
    :cond_9
    :goto_4
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1370
    .restart local v20    # "ssInfos":[I
    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x2a

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 1371
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [Lcom/android/ims/ImsSsInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCwQueryResult([Lcom/android/ims/ImsSsInfo;)[I

    move-result-object v20

    .local v20, "ssInfos":[I
    goto :goto_4

    .line 1381
    .end local v20    # "ssInfos":[I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1382
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/ims/ImsException;

    move/from16 v21, v0

    .line 1381
    if-eqz v21, :cond_b

    .line 1383
    iget-object v14, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v14, Lcom/android/ims/ImsException;

    .line 1384
    .restart local v14    # "imsException":Lcom/android/ims/ImsException;
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Lcom/android/ims/ImsException;->getCode()I

    move-result v21

    .line 1385
    const/16 v22, 0x340

    .line 1384
    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 1386
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 1387
    .restart local v17    # "resp":Landroid/os/Message;
    if-eqz v17, :cond_b

    .line 1388
    new-instance v21, Lcom/android/internal/telephony/CommandException;

    .line 1389
    sget-object v22, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_404_NOT_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    .line 1388
    invoke-direct/range {v21 .. v22}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1390
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .line 1391
    return-void

    .line 1397
    .end local v14    # "imsException":Lcom/android/ims/ImsException;
    .end local v17    # "resp":Landroid/os/Message;
    :cond_b
    :sswitch_5
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1402
    :sswitch_6
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_c

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 1404
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v13, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 1405
    .local v13, "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 1408
    .end local v13    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    :cond_c
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1412
    :sswitch_7
    const/4 v12, 0x0

    .line 1413
    .local v12, "clirInfo":[I
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_d

    .line 1414
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Bundle;

    .line 1415
    .local v19, "ssInfo":Landroid/os/Bundle;
    const-string/jumbo v21, "queryClir"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v12

    .line 1418
    .local v12, "clirInfo":[I
    const-string/jumbo v21, "ImsPhone"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "EVENT_GET_CLIR_DONE: CLIR param n="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    aget v23, v12, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1419
    const-string/jumbo v23, " m="

    .line 1418
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1419
    const/16 v23, 0x1

    aget v23, v12, v23

    .line 1418
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    .end local v12    # "clirInfo":[I
    .end local v19    # "ssInfo":Landroid/os/Bundle;
    :cond_d
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v12, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1427
    :sswitch_8
    const/4 v10, 0x0

    .line 1428
    .local v10, "cfInfosEx":[Lcom/android/internal/telephony/CallForwardInfoEx;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_e

    .line 1430
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [Lcom/android/ims/ImsCallForwardInfoEx;

    .line 1429
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCfInTimeSlotQueryResult([Lcom/android/ims/ImsCallForwardInfoEx;)[Lcom/android/internal/telephony/CallForwardInfoEx;

    move-result-object v10

    .line 1433
    .end local v10    # "cfInfosEx":[Lcom/android/internal/telephony/CallForwardInfoEx;
    :cond_e
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/ims/ImsException;

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 1434
    iget-object v14, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v14, Lcom/android/ims/ImsException;

    .line 1435
    .restart local v14    # "imsException":Lcom/android/ims/ImsException;
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Lcom/android/ims/ImsException;->getCode()I

    move-result v21

    .line 1436
    const/16 v22, 0x33e

    .line 1435
    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 1438
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 1439
    .restart local v17    # "resp":Landroid/os/Message;
    if-eqz v17, :cond_f

    .line 1440
    new-instance v21, Lcom/android/internal/telephony/CommandException;

    .line 1441
    sget-object v22, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1440
    invoke-direct/range {v21 .. v22}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v10, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1442
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .line 1443
    return-void

    .line 1447
    .end local v14    # "imsException":Lcom/android/ims/ImsException;
    .end local v17    # "resp":Landroid/os/Message;
    :cond_f
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v10, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1451
    :sswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v16

    .line 1452
    .local v16, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v8, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;

    .line 1453
    .local v8, "cfEx":Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;
    iget-boolean v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;->mIsCfu:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_10

    if-eqz v16, :cond_10

    .line 1454
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 1455
    .restart local v6    # "cfAction":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isCfEnable(I)Z

    move-result v21

    if-eqz v21, :cond_11

    const/4 v7, 0x1

    .line 1457
    .restart local v7    # "cfEnable":I
    :goto_5
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_12

    const/16 v21, 0x1

    :goto_6
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;->mSetCfNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1458
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;->mSetTimeSlot:[J

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->saveTimeSlot([J)V

    .line 1461
    .end local v6    # "cfAction":I
    .end local v7    # "cfEnable":I
    :cond_10
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_13

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/ims/ImsException;

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 1462
    iget-object v14, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v14, Lcom/android/ims/ImsException;

    .line 1463
    .restart local v14    # "imsException":Lcom/android/ims/ImsException;
    if-eqz v14, :cond_13

    invoke-virtual {v14}, Lcom/android/ims/ImsException;->getCode()I

    move-result v21

    .line 1464
    const/16 v22, 0x33e

    .line 1463
    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 1466
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;->mOnComplete:Landroid/os/Message;

    move-object/from16 v17, v0

    .line 1467
    .restart local v17    # "resp":Landroid/os/Message;
    if-eqz v17, :cond_13

    .line 1468
    new-instance v21, Lcom/android/internal/telephony/CommandException;

    .line 1469
    sget-object v22, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1468
    invoke-direct/range {v21 .. v22}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1470
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .line 1471
    return-void

    .line 1455
    .end local v14    # "imsException":Lcom/android/ims/ImsException;
    .end local v17    # "resp":Landroid/os/Message;
    .restart local v6    # "cfAction":I
    :cond_11
    const/4 v7, 0x0

    .restart local v7    # "cfEnable":I
    goto :goto_5

    .line 1457
    :cond_12
    const/16 v21, 0x0

    goto :goto_6

    .line 1475
    .end local v6    # "cfAction":I
    .end local v7    # "cfEnable":I
    :cond_13
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;->mOnComplete:Landroid/os/Message;

    move-object/from16 v21, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1480
    .end local v8    # "cfEx":Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;
    .end local v16    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :sswitch_a
    const-string/jumbo v21, "ImsPhone"

    const-string/jumbo v22, "EVENT_DEFAULT_PHONE_DATA_STATE_CHANGED"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    goto/16 :goto_0

    .line 1288
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xd -> :sswitch_1
        0x27 -> :sswitch_4
        0x28 -> :sswitch_2
        0x29 -> :sswitch_5
        0x2a -> :sswitch_3
        0x2b -> :sswitch_a
        0x6d -> :sswitch_8
        0x6e -> :sswitch_9
        0x8a -> :sswitch_6
        0x8b -> :sswitch_7
    .end sparse-switch
.end method

.method public handleMmiCodeCsfb(I)V
    .locals 5
    .param p1, "reason"    # I

    .prologue
    .line 1826
    const-string/jumbo v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMmiCodeCsfb: reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mDialString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1827
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDialString:Ljava/lang/String;

    .line 1826
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    const/16 v2, 0x33e

    if-ne p1, v2, :cond_1

    .line 1830
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 1834
    :cond_0
    :goto_0
    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;

    move-result-object v1

    .line 1835
    .local v1, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    iget-object v2, v1, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDialString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1836
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v3, 0x7d1

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1838
    .local v0, "msgCSFB":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/PhoneBase;->sendMessage(Landroid/os/Message;)Z

    .line 1824
    return-void

    .line 1831
    .end local v0    # "msgCSFB":Landroid/os/Message;
    .end local v1    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :cond_1
    const/16 v2, 0x33f

    if-ne p1, v2, :cond_0

    .line 1832
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto :goto_0
.end method

.method public bridge synthetic handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method handleTimerInEmergencyCallbackMode(I)V
    .locals 6
    .param p1, "action"    # I

    .prologue
    const/4 v3, 0x1

    .line 1589
    packed-switch p1, :pswitch_data_0

    .line 1609
    const-string/jumbo v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleTimerInEmergencyCallbackMode, unsupported action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :goto_0
    return-void

    .line 1591
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1592
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1593
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1595
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1600
    :pswitch_1
    const-string/jumbo v2, "ro.cdma.ecmexittimer"

    const-wide/32 v4, 0x493e0

    .line 1599
    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1601
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1602
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1603
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1605
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hangupAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1961
    const-string/jumbo v0, "ImsPhone"

    const-string/jumbo v1, "hangupAll"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangupAll()V

    .line 1959
    return-void
.end method

.method initiateSilentRedial()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1172
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mLastDialString:Ljava/lang/String;

    .line 1173
    .local v1, "result":Ljava/lang/String;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1174
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 1175
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1171
    :cond_0
    return-void
.end method

.method public bridge synthetic isDataConnectivityPossible()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isFeatureSupported(Lcom/android/internal/telephony/Phone$FeatureType;)Z
    .locals 8
    .param p1, "feature"    # Lcom/android/internal/telephony/Phone$FeatureType;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1991
    sget-object v4, Lcom/android/internal/telephony/Phone$FeatureType;->VOLTE_ENHANCED_CONFERENCE:Lcom/android/internal/telephony/Phone$FeatureType;

    if-eq p1, v4, :cond_0

    .line 1992
    sget-object v4, Lcom/android/internal/telephony/Phone$FeatureType;->VIDEO_RESTRICTION:Lcom/android/internal/telephony/Phone$FeatureType;

    if-ne p1, v4, :cond_3

    .line 1994
    :cond_0
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    .line 1996
    const-string/jumbo v5, "46000"

    aput-object v5, v4, v7

    const-string/jumbo v5, "46002"

    aput-object v5, v4, v6

    const-string/jumbo v5, "46007"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-string/jumbo v5, "46008"

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const-string/jumbo v5, "46011"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 1994
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1998
    .local v3, "voLteEnhancedConfMccMncList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 1999
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 2000
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2001
    .local v1, "mccMnc":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2003
    .local v2, "ret":Z
    const-string/jumbo v4, "ImsPhone"

    .line 2004
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isFeatureSupported("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "): ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2005
    const-string/jumbo v6, " current mccMnc = "

    .line 2004
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2003
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    return v2

    .line 2008
    .end local v1    # "mccMnc":Ljava/lang/String;
    .end local v2    # "ret":Z
    :cond_1
    const-string/jumbo v4, "ImsPhone"

    .line 2009
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isFeatureSupported("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") no iccRecords"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2008
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    .end local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v3    # "voLteEnhancedConfMccMncList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return v7

    .line 2011
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/Phone$FeatureType;->VOLTE_CONF_REMOVE_MEMBER:Lcom/android/internal/telephony/Phone$FeatureType;

    if-ne p1, v4, :cond_2

    .line 2013
    return v6
.end method

.method public isImsRegistered()Z
    .locals 1

    .prologue
    .line 1642
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    return v0
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 547
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 548
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 550
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 551
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    .line 550
    if-nez v3, :cond_0

    .line 552
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    .line 550
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isInEcm()Z
    .locals 1

    .prologue
    .line 1513
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isInEmergencyCall()Z

    move-result v0

    return v0
.end method

.method public isVideoCallEnabled()Z
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v0

    return v0
.end method

.method public isVolteEnabled()Z
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVolteEnabled()Z

    move-result v0

    return v0
.end method

.method public isVowifiEnabled()Z
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic migrateFrom(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "from"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->migrateFrom(Lcom/android/internal/telephony/PhoneBase;)V

    return-void
.end method

.method public bridge synthetic needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyCallForwardingIndicator()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyCallForwardingIndicator()V

    return-void
.end method

.method public notifyForVideoCapabilityChanged(Z)V
    .locals 1
    .param p1, "isVideoCapable"    # Z

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsVideoCapable:Z

    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyForVideoCapabilityChanged(Z)V

    .line 575
    return-void
.end method

.method notifyIncomingRing()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 698
    const-string/jumbo v1, "ImsPhone"

    const-string/jumbo v2, "notifyIncomingRing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 700
    .local v0, "ar":Landroid/os/AsyncResult;
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendMessage(Landroid/os/Message;)Z

    .line 697
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 555
    return-void
.end method

.method public notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V

    .line 1166
    return-void
.end method

.method public onFeatureCapabilityChanged()V
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->onImsCapabilityChanged()V

    .line 1621
    return-void
.end method

.method onIncomingUSSD(ILjava/lang/String;)V
    .locals 10
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 1078
    const-string/jumbo v6, "ImsPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onIncomingUSSD ussdMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    if-ne p1, v9, :cond_2

    const/4 v3, 0x1

    .line 1087
    .local v3, "isUssdRequest":Z
    :goto_0
    if-eqz p1, :cond_4

    .line 1088
    if-eq p1, v9, :cond_3

    const/4 v2, 0x1

    .line 1090
    .local v2, "isUssdError":Z
    :goto_1
    const/4 v0, 0x0

    .line 1091
    .local v0, "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "s":I
    :goto_2
    if-ge v1, v5, :cond_0

    .line 1092
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPendingUSSD()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1093
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .line 1098
    :cond_0
    if-eqz v0, :cond_7

    .line 1100
    if-eqz v2, :cond_6

    .line 1102
    iput-boolean v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mUssiCSFB:Z

    .line 1104
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinishedError()V

    .line 1077
    :cond_1
    :goto_3
    return-void

    .line 1084
    .end local v1    # "i":I
    .end local v2    # "isUssdError":Z
    .end local v3    # "isUssdRequest":Z
    .end local v5    # "s":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "isUssdRequest":Z
    goto :goto_0

    .line 1088
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isUssdError":Z
    goto :goto_1

    .line 1087
    .end local v2    # "isUssdError":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isUssdError":Z
    goto :goto_1

    .line 1091
    .restart local v0    # "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v1    # "i":I
    .restart local v5    # "s":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1106
    .end local v0    # "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_6
    invoke-virtual {v0, p2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1113
    :cond_7
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 1115
    invoke-static {p2, v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v4

    .line 1118
    .local v4, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    goto :goto_3
.end method

.method onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .locals 5
    .param p1, "mmi"    # Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .prologue
    const/4 v4, 0x0

    .line 1131
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mUssiCSFB:Z

    if-eqz v2, :cond_0

    .line 1132
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getUssdDialString()Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "dialString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1135
    .local v1, "msgCSFB":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/PhoneBase;->sendMessage(Landroid/os/Message;)Z

    .line 1136
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1137
    return-void

    .line 1145
    .end local v0    # "dialString":Ljava/lang/String;
    .end local v1    # "msgCSFB":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isUssdRequest()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1146
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 1147
    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, p1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1146
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1129
    :cond_2
    return-void
.end method

.method public bridge synthetic onTtyModeReceived(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->onTtyModeReceived(I)V

    return-void
.end method

.method public processDisconnectReason(Lcom/android/ims/ImsReasonInfo;)V
    .locals 19
    .param p1, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1718
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_5

    .line 1719
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1722
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1723
    const v3, 0x1070048

    .line 1722
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 1725
    .local v17, "wfcOperatorErrorCodes":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1726
    const v3, 0x1070049

    .line 1725
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 1728
    .local v16, "wfcOperatorErrorAlertMessages":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1729
    const v3, 0x107004a

    .line 1728
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 1731
    .local v18, "wfcOperatorErrorNotificationMessages":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v10, v1, :cond_5

    .line 1733
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1734
    aget-object v3, v17, v10

    .line 1733
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1731
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1741
    :cond_1
    aget-object v1, v17, v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    .line 1742
    .local v9, "codeStringLength":I
    aget-object v1, v17, v10

    add-int/lit8 v3, v9, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1743
    .local v11, "lastChar":C
    invoke-static {v11}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1744
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v9, :cond_2

    .line 1745
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 1746
    .local v14, "nextChar":C
    invoke-static {v14}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1752
    .end local v14    # "nextChar":C
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    .line 1753
    const v3, 0x10400c8

    .line 1752
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 1755
    .local v15, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1756
    .local v12, "messageAlert":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1757
    .local v13, "messageNotification":Ljava/lang/CharSequence;
    aget-object v1, v16, v10

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1758
    aget-object v12, v16, v10

    .line 1760
    :cond_3
    aget-object v1, v18, v10

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1761
    aget-object v13, v18, v10

    .line 1771
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.ims.REGISTRATION_ERROR"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1772
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "alertTitle"

    invoke-virtual {v2, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1773
    const-string/jumbo v1, "alertMessage"

    invoke-virtual {v2, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1774
    const-string/jumbo v1, "notificationMessage"

    invoke-virtual {v2, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1775
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 1776
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1775
    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1717
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v9    # "codeStringLength":I
    .end local v10    # "i":I
    .end local v11    # "lastChar":C
    .end local v12    # "messageAlert":Ljava/lang/CharSequence;
    .end local v13    # "messageNotification":Ljava/lang/CharSequence;
    .end local v15    # "title":Ljava/lang/CharSequence;
    .end local v16    # "wfcOperatorErrorAlertMessages":[Ljava/lang/String;
    .end local v17    # "wfcOperatorErrorCodes":[Ljava/lang/String;
    .end local v18    # "wfcOperatorErrorNotificationMessages":[Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public bridge synthetic registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1179
    return-void
.end method

.method public bridge synthetic registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V

    .line 315
    return-void
.end method

.method public removeReferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 277
    const-string/jumbo v0, "ImsPhone"

    const-string/jumbo v1, "removeReferences"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->removeReferences()V

    .line 280
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 281
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    .line 276
    return-void
.end method

.method public bridge synthetic saveClirSetting(I)V
    .locals 0
    .param p1, "commandInterfaceCLIRMode"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->saveClirSetting(I)V

    return-void
.end method

.method public bridge synthetic selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 665
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 666
    const-string/jumbo v0, "ImsPhone"

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method sendEmergencyCallbackModeChange()V
    .locals 3

    .prologue
    .line 1518
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1519
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "phoneinECMState"

    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1520
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1521
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1522
    const-string/jumbo v1, "ImsPhone"

    const-string/jumbo v2, "sendEmergencyCallbackModeChange"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    return-void
.end method

.method sendErrorResponse(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 996
    const-string/jumbo v0, "ImsPhone"

    const-string/jumbo v1, "sendErrorResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    if-eqz p1, :cond_0

    .line 999
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 998
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1000
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 995
    :cond_0
    return-void
.end method

.method sendErrorResponse(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    const/4 v3, 0x0

    .line 1015
    const-string/jumbo v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendErrorResponse reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    if-eqz p1, :cond_0

    .line 1017
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    invoke-static {p1, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1018
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1014
    :cond_0
    return-void
.end method

.method sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x0

    .line 1006
    const-string/jumbo v0, "ImsPhone"

    const-string/jumbo v1, "sendErrorResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    if-eqz p1, :cond_0

    .line 1008
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1009
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1005
    :cond_0
    return-void
.end method

.method sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    .line 985
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 977
    const-string/jumbo v1, "ImsPhone"

    const-string/jumbo v2, "sendUssdResponse"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-static {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v0

    .line 979
    .local v0, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 981
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method public setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 961
    const-string/jumbo v3, "ImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCallBarring facility="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 962
    const-string/jumbo v5, ", lockState="

    .line 961
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/16 v3, 0x27

    invoke-virtual {p0, v3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 967
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 969
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, p2, v1, v4}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IZLandroid/os/Message;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p4, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 9
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "timeSlot"    # [J
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1890
    const-string/jumbo v1, "ImsPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCallForwardInTimeSlot action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1891
    const-string/jumbo v3, ", reason = "

    .line 1890
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1894
    if-nez p2, :cond_1

    .line 1896
    new-instance v7, Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;

    const/4 v1, 0x1

    invoke-direct {v7, p3, p5, v1, p6}, Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;-><init>(Ljava/lang/String;[JZLandroid/os/Message;)V

    .line 1897
    .local v7, "cfEx":Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;
    const/16 v1, 0x6e

    invoke-virtual {p0, v1, p1, v4, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1901
    .local v6, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1902
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getActionFromCFAction(I)I

    move-result v1

    .line 1903
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    move-result v2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 1902
    invoke-interface/range {v0 .. v6}, Lcom/android/ims/ImsUtInterface;->updateCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1888
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    .end local v6    # "resp":Landroid/os/Message;
    .end local v7    # "cfEx":Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;
    :cond_0
    :goto_0
    return-void

    .line 1908
    .restart local v6    # "resp":Landroid/os/Message;
    .restart local v7    # "cfEx":Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;
    :catch_0
    move-exception v8

    .line 1909
    .local v8, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p6, v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1911
    .end local v6    # "resp":Landroid/os/Message;
    .end local v7    # "cfEx":Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;
    .end local v8    # "e":Lcom/android/ims/ImsException;
    :cond_1
    if-eqz p6, :cond_0

    .line 1912
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 11
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timerSeconds"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 832
    const-string/jumbo v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallForwardingOption action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 833
    const-string/jumbo v4, ", reason="

    .line 832
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 833
    const-string/jumbo v4, " serviceClass="

    .line 832
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 835
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v2

    .line 834
    if-eqz v2, :cond_5

    .line 839
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 840
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_1

    .line 841
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 842
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v2, :cond_1

    .line 843
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isSupportSaveCFNumber()Z

    move-result v2

    .line 842
    if-eqz v2, :cond_1

    .line 844
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isCfEnable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 846
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCFPreviousDialNumber(I)Ljava/lang/String;

    move-result-object v10

    .line 849
    .local v10, "getNumber":Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 858
    .end local v10    # "getNumber":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v8, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;

    .line 859
    if-nez p2, :cond_4

    const/4 v2, 0x1

    .line 858
    :goto_1
    move-object/from16 v0, p6

    invoke-direct {v8, p3, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;-><init>(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 861
    .local v8, "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    const/16 v2, 0xc

    invoke-virtual {p0, v2, p1, p2, v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 865
    .local v7, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 866
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getActionFromCFAction(I)I

    move-result v2

    .line 867
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    move-result v3

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    .line 866
    invoke-interface/range {v1 .. v7}, Lcom/android/ims/ImsUtInterface;->updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    .end local v7    # "resp":Landroid/os/Message;
    .end local v8    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    :cond_2
    :goto_2
    return-void

    .line 850
    .restart local v10    # "getNumber":Ljava/lang/String;
    :cond_3
    move-object p3, v10

    goto :goto_0

    .line 859
    .end local v10    # "getNumber":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 872
    .restart local v7    # "resp":Landroid/os/Message;
    .restart local v8    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    :catch_0
    move-exception v9

    .line 873
    .local v9, "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p6

    invoke-virtual {p0, v0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 875
    .end local v7    # "resp":Landroid/os/Message;
    .end local v8    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    .end local v9    # "e":Lcom/android/ims/ImsException;
    :cond_5
    if-eqz p6, :cond_2

    .line 876
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    goto :goto_2
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 823
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 822
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 821
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 900
    const-string/jumbo v3, "ImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCallWaiting enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/16 v3, 0x29

    invoke-virtual {p0, v3, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 905
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 906
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, p1, p2, v1}, Lcom/android/ims/ImsUtInterface;->updateCallWaiting(ZILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 896
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    .line 895
    return-void
.end method

.method public bridge synthetic setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setDataEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setDataEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setDataRoamingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public setImsRegistered(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    .line 1646
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    .line 1648
    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    if-eqz v3, :cond_0

    .line 1649
    const-string/jumbo v2, "wifi_calling"

    .line 1650
    .local v2, "notificationTag":Ljava/lang/String;
    const/4 v0, 0x1

    .line 1653
    .local v0, "notificationId":I
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    .line 1654
    const-string/jumbo v4, "notification"

    .line 1653
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1655
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const-string/jumbo v3, "wifi_calling"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1645
    .end local v0    # "notificationId":I
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    .end local v2    # "notificationTag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bridge synthetic setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 704
    return-void
.end method

.method public bridge synthetic setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1614
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    .line 1613
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 694
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 693
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1805
    const-string/jumbo v3, "ImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOutgoingCallerIdDisplay: commandInterfaceCLIRMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    const/16 v3, 0x8a

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1812
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 1813
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, p1, v1}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1803
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 1814
    :catch_0
    move-exception v0

    .line 1815
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic setRadioPower(Z)V
    .locals 0
    .param p1, "power"    # Z

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setRadioPower(Z)V

    return-void
.end method

.method setServiceState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setState(I)V

    .line 292
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    .line 290
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setUiTTYMode(ILandroid/os/Message;)V

    .line 709
    return-void
.end method

.method public bridge synthetic setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 678
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x41

    if-lt p1, v2, :cond_1

    const/16 v2, 0x44

    if-gt p1, v2, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 679
    const-string/jumbo v0, "ImsPhone"

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 678
    goto :goto_0

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->startDtmf(C)V

    goto :goto_1
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->stopDtmf()V

    .line 688
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 321
    return-void
.end method

.method public bridge synthetic unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForOnHoldTone(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSilentRedial(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1183
    return-void
.end method

.method public bridge synthetic unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForTtyModeReceived(Landroid/os/Handler;)V

    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1617
    return-void
.end method

.method public updateParentPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "parentPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    .line 244
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 249
    const/16 v1, 0x2b

    .line 247
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    .line 255
    const-string/jumbo v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateParentPhone - Notify video capability changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsVideoCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsVideoCapable:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyForVideoCapabilityChanged(Z)V

    .line 238
    return-void
.end method

.method public bridge synthetic updateServiceLocation()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->updateServiceLocation()V

    return-void
.end method
