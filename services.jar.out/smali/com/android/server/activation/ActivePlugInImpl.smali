.class public final Lcom/android/server/activation/ActivePlugInImpl;
.super Ljava/lang/Object;
.source "ActivePlugInImpl.java"

# interfaces
.implements Lcom/android/server/power/plug/IActivePlugIn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;,
        Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;,
        Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;
    }
.end annotation


# static fields
.field private static final CHECK_INIT_DELAY:I = 0x4e20

.field public static final DEBUG:Z = false

.field private static final EVENT_ACTIVE:Ljava/lang/String; = "Activation"

.field private static final EVENT_ACTIVE_HALF:Ljava/lang/String; = "HalfHourActivation"

.field private static final HALF_HOUR:I = 0x1b7740

.field public static final MSG_ACT_DELAY_LETV:I = 0x4

.field private static final MSG_ACT_LETV:I = 0x2

.field private static final MSG_HALFACT_LETV:I = 0x3

.field private static final MS_CHECK_STATE:I = 0x1

.field private static final ONE_MINUTE:I = 0xea60

.field private static final READ_INFO_DELAY:I = 0xea60

.field private static final TYPE:Ljava/lang/String; = "2"

.field private static final UPLOAD_ACTIVE_DELAY:I = 0x1d4c0

.field private static final UPLOAD_ACTIVE_HALF_DELAY:I = 0x493e0

.field private static final UPLOAD_ACTIVE_IMEI_DELAY:I = 0x1b77400


# instance fields
.field private connectTime:J

.field private letvImei:Ljava/lang/String;

.field private letvKey:Ljava/lang/String;

.field private letvLockSetSrv:Lcom/android/internal/widget/ILockSettings;

.field private letvPhoneNumber:Ljava/lang/String;

.field private letvTime:Ljava/lang/String;

.field private mActiveState:I

.field private final mContext:Landroid/content/Context;

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHasRegister:Z

.field private mHasSimRegister:Z

.field private mLastEndTime:J

.field private mLastStartTime:J

.field private mLock:Ljava/lang/Object;

.field private mNetChangeCount:I

.field private mNetConnected:Z

.field private mNetType:I

.field private mRecording:Z

.field private mSimStatusReceiver:Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;

.field private mStateDes:Ljava/lang/String;

.field private mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

.field private mletvNetworkReceiver:Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/activation/ActivePlugInImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/activation/ActivePlugInImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetChangeCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/activation/ActivePlugInImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetConnected:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/activation/ActivePlugInImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/activation/ActivePlugInImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetChangeCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/activation/ActivePlugInImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isActiveHalf()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/activation/ActivePlugInImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->unregisterNetReceiver()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/activation/ActivePlugInImpl;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->letvGetImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->doCheckActiveLocked()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->handleActiveHalf()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->handleActive()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/activation/ActivePlugInImpl;IZ)V
    .locals 0
    .param p1, "netChangeCount"    # I
    .param p2, "connected"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/activation/ActivePlugInImpl;->handleConnectState(IZ)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->loopTimeRecord()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->startActivePhaseReady()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->unRegisterSimStatus()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasSimRegister:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetConnected:Z

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetType:I

    .line 91
    iput-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasRegister:Z

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLock:Ljava/lang/Object;

    .line 96
    iput-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    .line 98
    iput-wide v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->connectTime:J

    .line 100
    iput-wide v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLastStartTime:J

    .line 102
    iput-wide v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLastEndTime:J

    .line 112
    iput-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvTime:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvPhoneNumber:Ljava/lang/String;

    .line 118
    iput v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mActiveState:I

    .line 131
    iput-object p1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    .line 132
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->initPolicy()V

    .line 130
    return-void
.end method

.method private checkActive()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 190
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    if-nez v1, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 193
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 194
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 189
    return-void
.end method

.method private destroyPolicy(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 154
    .local v0, "start":J
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->unregisterNetReceiver()V

    .line 155
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->removeMessages(I)V

    .line 158
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->removeMessages(I)V

    .line 159
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->removeMessages(I)V

    .line 160
    iput-object v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->quitSafely()Z

    .line 164
    iput-object v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 166
    :cond_1
    iput-object p1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mStateDes:Ljava/lang/String;

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[Activation] destroy Policy span: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method private doActiveHalfLocked()Lcom/android/server/activation/bean/ActiveResposeBean;
    .locals 4

    .prologue
    .line 610
    new-instance v0, Lcom/android/server/activation/bean/ActiveHalfRequestBean;

    invoke-direct {v0}, Lcom/android/server/activation/bean/ActiveHalfRequestBean;-><init>()V

    .line 611
    .local v0, "request":Lcom/android/server/activation/bean/ActiveHalfRequestBean;
    const-string/jumbo v2, "2"

    iput-object v2, v0, Lcom/android/server/activation/bean/ActiveHalfRequestBean;->type:Ljava/lang/String;

    .line 612
    const-string/jumbo v2, "HalfHourActivation"

    iput-object v2, v0, Lcom/android/server/activation/bean/ActiveHalfRequestBean;->event:Ljava/lang/String;

    .line 613
    new-instance v2, Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;

    invoke-direct {v2}, Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;-><init>()V

    iput-object v2, v0, Lcom/android/server/activation/bean/ActiveHalfRequestBean;->data:Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;

    .line 614
    iget-object v2, v0, Lcom/android/server/activation/bean/ActiveHalfRequestBean;->data:Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;->imei:Ljava/lang/String;

    .line 615
    iget-object v2, v0, Lcom/android/server/activation/bean/ActiveHalfRequestBean;->data:Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;->key:Ljava/lang/String;

    .line 616
    iget-object v2, v0, Lcom/android/server/activation/bean/ActiveHalfRequestBean;->data:Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvPhoneNumber:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;->mobile:Ljava/lang/String;

    .line 620
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/activation/util/HttpHelper;->letvHalfActivation(Landroid/content/Context;Lcom/android/server/activation/bean/ActiveHalfRequestBean;)Lcom/android/server/activation/bean/ActiveResposeBean;

    move-result-object v1

    .line 624
    .local v1, "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    return-object v1
.end method

.method private doActiveLocked()Lcom/android/server/activation/bean/ActiveResposeBean;
    .locals 4

    .prologue
    .line 588
    new-instance v0, Lcom/android/server/activation/bean/ActiveRequestBean;

    invoke-direct {v0}, Lcom/android/server/activation/bean/ActiveRequestBean;-><init>()V

    .line 589
    .local v0, "request":Lcom/android/server/activation/bean/ActiveRequestBean;
    const-string/jumbo v2, "2"

    iput-object v2, v0, Lcom/android/server/activation/bean/ActiveRequestBean;->type:Ljava/lang/String;

    .line 590
    const-string/jumbo v2, "Activation"

    iput-object v2, v0, Lcom/android/server/activation/bean/ActiveRequestBean;->event:Ljava/lang/String;

    .line 591
    new-instance v2, Lcom/android/server/activation/bean/ActiveRequestBean$Data;

    invoke-direct {v2}, Lcom/android/server/activation/bean/ActiveRequestBean$Data;-><init>()V

    iput-object v2, v0, Lcom/android/server/activation/bean/ActiveRequestBean;->data:Lcom/android/server/activation/bean/ActiveRequestBean$Data;

    .line 592
    iget-object v2, v0, Lcom/android/server/activation/bean/ActiveRequestBean;->data:Lcom/android/server/activation/bean/ActiveRequestBean$Data;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/activation/bean/ActiveRequestBean$Data;->imei:Ljava/lang/String;

    .line 593
    iget-object v2, v0, Lcom/android/server/activation/bean/ActiveRequestBean;->data:Lcom/android/server/activation/bean/ActiveRequestBean$Data;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/activation/bean/ActiveRequestBean$Data;->key:Ljava/lang/String;

    .line 594
    iget-object v2, v0, Lcom/android/server/activation/bean/ActiveRequestBean;->data:Lcom/android/server/activation/bean/ActiveRequestBean$Data;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvTime:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/activation/bean/ActiveRequestBean$Data;->time:Ljava/lang/String;

    .line 598
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/activation/util/HttpHelper;->letvActivation(Landroid/content/Context;Lcom/android/server/activation/bean/ActiveRequestBean;)Lcom/android/server/activation/bean/ActiveResposeBean;

    move-result-object v1

    .line 602
    .local v1, "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    return-object v1
.end method

.method private doCheckActiveLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    const-string/jumbo v0, "[Activation] doCheckActiveLocked, begin..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isCtaVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string/jumbo v0, "is cta version."

    invoke-direct {p0, v0}, Lcom/android/server/activation/ActivePlugInImpl;->destroyPolicy(Ljava/lang/String;)V

    .line 207
    return-void

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isActiveHalf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    const-string/jumbo v0, "phone is active."

    invoke-direct {p0, v0}, Lcom/android/server/activation/ActivePlugInImpl;->destroyPolicy(Ljava/lang/String;)V

    .line 213
    return-void

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->getLetvKeyValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    const-string/jumbo v0, "key is null."

    invoke-direct {p0, v0}, Lcom/android/server/activation/ActivePlugInImpl;->destroyPolicy(Ljava/lang/String;)V

    .line 220
    return-void

    .line 224
    :cond_2
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->letvGetImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    const-string/jumbo v0, "[Activation] doCheckActiveLocked waiting imei..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    const-string/jumbo v0, "waiting imei..."

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mStateDes:Ljava/lang/String;

    .line 229
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->registerSimStatus()V

    .line 230
    return-void

    .line 233
    :cond_3
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->startActivePhaseReady()V

    .line 235
    const-string/jumbo v0, "[Activation] doCheckActiveLocked, end..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method private ensureLockSettings()V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvLockSetSrv:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 631
    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvLockSetSrv:Lcom/android/internal/widget/ILockSettings;

    .line 629
    :cond_0
    return-void
.end method

.method private ensureTelephony()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 638
    :cond_0
    return-void
.end method

.method private getLetvKeyValue()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 359
    iget-object v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 360
    iget-object v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    return-object v4

    .line 362
    :cond_0
    const/4 v2, 0x0

    .line 364
    .local v2, "letvKey":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "leuiphonebind"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 365
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 366
    const-string/jumbo v4, "[Activation] leuiphonebind binder is null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    return-object v6

    .line 369
    :cond_1
    invoke-static {v0}, Lcom/letv/leui/os/phonebind/IPhoneBind$Stub;->asInterface(Landroid/os/IBinder;)Lcom/letv/leui/os/phonebind/IPhoneBind;

    move-result-object v3

    .line 370
    .local v3, "phoneBind":Lcom/letv/leui/os/phonebind/IPhoneBind;
    const-string/jumbo v4, "leui_phone_bind_key"

    invoke-interface {v3, v4}, Lcom/letv/leui/os/phonebind/IPhoneBind;->getLeTVSNValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 375
    .local v2, "letvKey":Ljava/lang/String;
    return-object v2

    .line 371
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "phoneBind":Lcom/letv/leui/os/phonebind/IPhoneBind;
    .local v2, "letvKey":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[Activation] getLetvKeyValue fail"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    return-object v6
.end method

.method private getPhoneInfo()I
    .locals 2

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 299
    .local v0, "err":I
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->letvGetImei()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    .line 300
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    const/4 v0, 0x1

    .line 302
    return v0

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->getLetvKeyValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    const/4 v0, 0x2

    .line 309
    return v0

    .line 313
    :cond_1
    invoke-static {}, Lcom/android/server/activation/ActivePlugInImpl;->letvGetTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvTime:Ljava/lang/String;

    .line 314
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvTime:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    const/4 v0, 0x3

    .line 316
    return v0

    .line 320
    :cond_2
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->letvGetPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvPhoneNumber:Ljava/lang/String;

    .line 321
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    const-string/jumbo v1, "0"

    iput-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvPhoneNumber:Ljava/lang/String;

    .line 328
    :cond_3
    return v0
.end method

.method private handleActive()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 395
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isActiveInit()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 401
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->getPhoneInfo()I

    move-result v3

    .line 402
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[Activation] handleActive, get phone info result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    const-wide/32 v6, 0xea60

    invoke-direct {p0, v8, v6, v7}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V

    .line 406
    return-void

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->doActiveLocked()Lcom/android/server/activation/bean/ActiveResposeBean;

    move-result-object v2

    .line 410
    .local v2, "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/activation/bean/ActiveResposeBean;->needRetry()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 416
    :cond_1
    iget-object v6, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 417
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    if-eqz v5, :cond_2

    .line 419
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/activation/bean/ActiveResposeBean;->isImeiNotExsite()Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x1b77400

    :goto_0
    int-to-long v0, v5

    .line 420
    .local v0, "delayTime":J
    const/4 v5, 0x2

    invoke-direct {p0, v5, v0, v1}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "delayTime":J
    :cond_2
    monitor-exit v6

    .line 426
    return-void

    .line 419
    :cond_3
    const v5, 0x1d4c0

    goto :goto_0

    .line 416
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 427
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/activation/bean/ActiveResposeBean;->isKeyError()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 429
    invoke-direct {p0, v8}, Lcom/android/server/activation/ActivePlugInImpl;->writeActiveState(I)Z

    move-result v4

    .line 430
    .local v4, "writeResult":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[Activation] handleActive,  key error , write: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    .end local v2    # "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    .end local v3    # "result":I
    .end local v4    # "writeResult":Z
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isActiveHalf()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 440
    const-string/jumbo v5, "upload ok act."

    invoke-direct {p0, v5}, Lcom/android/server/activation/ActivePlugInImpl;->destroyPolicy(Ljava/lang/String;)V

    .line 441
    return-void

    .line 433
    .restart local v2    # "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    .restart local v3    # "result":I
    :cond_6
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/activation/ActivePlugInImpl;->writeActiveState(I)Z

    move-result v4

    .line 434
    .restart local v4    # "writeResult":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[Activation] handleActive,  end , write: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 444
    .end local v2    # "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    .end local v3    # "result":I
    .end local v4    # "writeResult":Z
    :cond_7
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isActive()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 446
    const-wide/16 v6, 0x0

    const/4 v5, 0x4

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V

    .line 394
    :cond_8
    return-void
.end method

.method private handleActiveHalf()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 455
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isActiveHalf()Z

    move-result v5

    if-nez v5, :cond_5

    .line 460
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->getPhoneInfo()I

    move-result v3

    .line 461
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 466
    const-wide/32 v6, 0xea60

    invoke-direct {p0, v8, v6, v7}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V

    .line 467
    return-void

    .line 470
    :cond_0
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->doActiveHalfLocked()Lcom/android/server/activation/bean/ActiveResposeBean;

    move-result-object v2

    .line 471
    .local v2, "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/activation/bean/ActiveResposeBean;->needRetry()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 478
    :cond_1
    iget-object v6, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 479
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    if-eqz v5, :cond_2

    .line 481
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/activation/bean/ActiveResposeBean;->isImeiNotExsite()Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x1b77400

    :goto_0
    int-to-long v0, v5

    .line 482
    .local v0, "delayTime":J
    const/4 v5, 0x3

    invoke-direct {p0, v5, v0, v1}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "delayTime":J
    :cond_2
    monitor-exit v6

    .line 488
    return-void

    .line 481
    :cond_3
    const v5, 0x493e0

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 489
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/activation/bean/ActiveResposeBean;->isKeyError()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 491
    invoke-direct {p0, v6}, Lcom/android/server/activation/ActivePlugInImpl;->writeActiveState(I)Z

    move-result v4

    .line 492
    .local v4, "writeResult":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[Activation] handleActive,  key error , write: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    .end local v2    # "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    .end local v3    # "result":I
    .end local v4    # "writeResult":Z
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isActiveHalf()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 502
    const-string/jumbo v5, "upload ok act half."

    invoke-direct {p0, v5}, Lcom/android/server/activation/ActivePlugInImpl;->destroyPolicy(Ljava/lang/String;)V

    .line 454
    :cond_6
    return-void

    .line 495
    .restart local v2    # "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    .restart local v3    # "result":I
    :cond_7
    invoke-direct {p0, v6}, Lcom/android/server/activation/ActivePlugInImpl;->writeActiveState(I)Z

    move-result v4

    .line 496
    .restart local v4    # "writeResult":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[Activation] handleActiveHalf end, write: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private handleConnectState(IZ)V
    .locals 4
    .param p1, "netChangeCount"    # I
    .param p2, "connected"    # Z

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    if-eqz p2, :cond_0

    .line 264
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->startTimeRecord()V

    .line 266
    const-wide/16 v2, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 259
    return-void

    .line 272
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->removeMessages(I)V

    .line 274
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->removeMessages(I)V

    .line 275
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->removeMessages(I)V

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->stopTimeRecord()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initPolicy()V
    .locals 6

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 141
    .local v0, "start":J
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->startWorkThread()V

    .line 143
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->checkActive()V

    .line 144
    const-string/jumbo v2, "init policy..."

    iput-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mStateDes:Ljava/lang/String;

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[Activation] init Policy...span: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method private isActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 670
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->readActiveState()I

    move-result v1

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isActiveHalf()Z
    .locals 2

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->readActiveState()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isActiveInit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 662
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->readActiveState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final isCtaVersion()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 649
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 650
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_0

    return v2

    .line 651
    :cond_0
    const-string/jumbo v1, "com.letv.leui.cta"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    const/4 v1, 0x1

    return v1

    .line 654
    :cond_1
    return v2
.end method

.method private isNetworkAvailable()Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 746
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 747
    .local v0, "connectMgr":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 748
    iput-boolean v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetConnected:Z

    .line 749
    iput v6, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetType:I

    .line 750
    return v4

    .line 753
    :cond_0
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 754
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 755
    iput-boolean v5, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetConnected:Z

    .line 756
    iput v5, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetType:I

    .line 757
    return v5

    .line 760
    :cond_1
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 761
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 762
    iput-boolean v5, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetConnected:Z

    .line 763
    iput v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetType:I

    .line 764
    return v5

    .line 766
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetConnected:Z

    .line 767
    iput v6, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetType:I

    .line 768
    return v4
.end method

.method private letvGetImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    return-object v0

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->ensureTelephony()V

    .line 341
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLEUIDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private letvGetPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->ensureTelephony()V

    .line 351
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static letvGetTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 384
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 385
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 386
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 387
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loopTimeRecord()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x1b7740

    .line 533
    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 534
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    if-eqz v2, :cond_0

    iget-wide v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->connectTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLastStartTime:J

    sub-long v0, v4, v6

    .line 538
    .local v0, "cTime":J
    :goto_0
    cmp-long v2, v0, v8

    if-lez v2, :cond_1

    .line 540
    const-wide/16 v4, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    .line 532
    return-void

    .line 534
    .end local v0    # "cTime":J
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->connectTime:J

    .restart local v0    # "cTime":J
    goto :goto_0

    .line 543
    :cond_1
    sub-long v4, v8, v0

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    const/4 v2, 0x4

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 533
    .end local v0    # "cTime":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static final newInstance(Landroid/content/Context;)Lcom/android/server/activation/ActivePlugInImpl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    new-instance v0, Lcom/android/server/activation/ActivePlugInImpl;

    invoke-direct {v0, p0}, Lcom/android/server/activation/ActivePlugInImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private readActiveState()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 687
    const/4 v1, 0x0

    .line 689
    .local v1, "value":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->ensureLockSettings()V

    .line 690
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvLockSetSrv:Lcom/android/internal/widget/ILockSettings;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/android/internal/widget/ILockSettings;->readControlStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 695
    :goto_0
    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_0

    .line 697
    invoke-direct {p0, v4}, Lcom/android/server/activation/ActivePlugInImpl;->writeActiveState(I)Z

    .line 698
    const/4 v1, 0x0

    .line 701
    :cond_0
    iput v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mActiveState:I

    .line 702
    return v1

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[Activation] readActiveState, read error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private registerNetReceiver()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 776
    iget-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasRegister:Z

    if-eqz v1, :cond_0

    .line 777
    const-string/jumbo v1, "[Activation] re-Register net Receiver"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    return-void

    .line 780
    :cond_0
    const-string/jumbo v1, "[Activation] register net Receiver"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mletvNetworkReceiver:Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;

    if-nez v1, :cond_1

    .line 783
    new-instance v1, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;-><init>(Lcom/android/server/activation/ActivePlugInImpl;Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;)V

    iput-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mletvNetworkReceiver:Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;

    .line 785
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 786
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 787
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 788
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 789
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mletvNetworkReceiver:Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 790
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasRegister:Z

    .line 775
    return-void
.end method

.method private final registerSimStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 838
    iget-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasSimRegister:Z

    if-eqz v1, :cond_0

    .line 842
    return-void

    .line 844
    :cond_0
    const-string/jumbo v1, "[Activation] register sim status..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mSimStatusReceiver:Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;

    if-nez v1, :cond_1

    .line 846
    new-instance v1, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;-><init>(Lcom/android/server/activation/ActivePlugInImpl;Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;)V

    iput-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mSimStatusReceiver:Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;

    .line 848
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 849
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 850
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 851
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mSimStatusReceiver:Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 852
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasSimRegister:Z

    .line 837
    return-void
.end method

.method private sendMsgDelay(IJ)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "delayMillis"    # J

    .prologue
    .line 733
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    if-nez v1, :cond_0

    return-void

    .line 734
    :cond_0
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    invoke-virtual {v1, p1}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->removeMessages(I)V

    .line 735
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    invoke-virtual {v1, p1}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 736
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 737
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 732
    return-void
.end method

.method private startActivePhaseReady()V
    .locals 2

    .prologue
    .line 242
    const-string/jumbo v0, "start active phase..."

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mStateDes:Ljava/lang/String;

    .line 243
    const-string/jumbo v0, "[Activation] startActivePhaseReady begin..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-static {}, Lcom/android/server/activation/util/DomainEngine;->getInstance()Lcom/android/server/activation/util/DomainEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/activation/util/DomainEngine;->init(Landroid/content/Context;)V

    .line 247
    iget v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetChangeCount:I

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isNetworkAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/activation/ActivePlugInImpl;->handleConnectState(IZ)V

    .line 249
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->registerNetReceiver()V

    .line 241
    return-void
.end method

.method private startTimeRecord()V
    .locals 2

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    if-nez v0, :cond_0

    .line 512
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLastStartTime:J

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    .line 510
    :cond_0
    return-void
.end method

.method private startWorkThread()V
    .locals 4

    .prologue
    .line 180
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "Activation"

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 181
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 182
    new-instance v0, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;-><init>(Lcom/android/server/activation/ActivePlugInImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    .line 178
    return-void
.end method

.method private stopTimeRecord()V
    .locals 6

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    if-eqz v0, :cond_0

    .line 522
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLastEndTime:J

    .line 523
    iget-wide v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->connectTime:J

    iget-wide v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLastEndTime:J

    iget-wide v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLastStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->connectTime:J

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    .line 520
    :cond_0
    return-void
.end method

.method private final unRegisterSimStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 859
    iget-boolean v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasSimRegister:Z

    if-nez v0, :cond_0

    .line 860
    const-string/jumbo v0, "[Activation] no register sim status, so no need un-Register again..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    return-void

    .line 863
    :cond_0
    const-string/jumbo v0, "[Activation] un-Register sim status..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 864
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mSimStatusReceiver:Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 865
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mSimStatusReceiver:Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;

    .line 866
    iput-boolean v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasSimRegister:Z

    .line 858
    return-void
.end method

.method private unregisterNetReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 797
    iget-boolean v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasRegister:Z

    if-nez v0, :cond_0

    .line 801
    return-void

    .line 803
    :cond_0
    const-string/jumbo v0, "[Activation] unregiste net Receiver"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mletvNetworkReceiver:Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mletvNetworkReceiver:Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;

    .line 806
    iput-boolean v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasRegister:Z

    .line 796
    return-void
.end method

.method private writeActiveState(I)Z
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 713
    const/4 v1, 0x0

    .line 715
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->ensureLockSettings()V

    .line 716
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvLockSetSrv:Lcom/android/internal/widget/ILockSettings;

    const/4 v3, 0x3

    invoke-interface {v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->writeControlStatus(II)I

    .line 718
    iput p1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mActiveState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    const/4 v1, 0x1

    .line 723
    :goto_0
    return v1

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[Activation] readActiveState, modify error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public dumpInternal(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 899
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 900
    const-string/jumbo v0, "Display active status: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mActiveState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mStateDes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  ua="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/activation/util/HttpHelper;->ensureUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    return-void
.end method
