.class public Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.super Landroid/os/Handler;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;,
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;,
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;,
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;
    }
.end annotation


# static fields
.field private static final COMMON_SLOT_PROPERTY:Ljava/lang/String; = "ro.mtk_sim_hot_swap_common_slot"

.field public static final CURR_SUBID:Ljava/lang/String; = "curr_subid"

.field private static final EVENT_GET_NETWORK_SELECTION_MODE_DONE:I = 0x2

.field private static final EVENT_RADIO_AVAILABLE:I = 0x65

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x66

.field private static final EVENT_SIM_ABSENT:I = 0x4

.field private static final EVENT_SIM_IO_ERROR:I = 0x6

.field private static final EVENT_SIM_LOADED:I = 0x3

.field private static final EVENT_SIM_LOCKED:I = 0x5

.field private static final EVENT_SIM_LOCKED_QUERY_ICCID_DONE:I = 0x1

.field private static final EVENT_SIM_NO_CHANGED:I = 0x67

.field private static final EVENT_SIM_PLUG_OUT:I = 0x69

.field private static final EVENT_SIM_READY:I = 0x64

.field private static final EVENT_SIM_UNKNOWN:I = 0x7

.field private static final EVENT_TRAY_PLUG_IN:I = 0x68

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = "N/A"

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionInfoUpdater"

.field private static final MTK_FLIGHTMODE_POWEROFF_MD_SUPPORT:Z

.field private static final PROJECT_SIM_NUM:I

.field static PROPERTY_ICCID_SIM:[Ljava/lang/String; = null

.field public static final SIM_CHANGED:I = -0x1

.field public static final SIM_NEW:I = -0x2

.field public static final SIM_NOT_CHANGE:I = 0x0

.field public static final SIM_NOT_INSERT:I = -0x63

.field public static final SIM_REPOSITION:I = -0x3

.field public static final STATUS_NO_SIM_INSERTED:I = 0x0

.field public static final STATUS_SIM1_INSERTED:I = 0x1

.field public static final STATUS_SIM2_INSERTED:I = 0x2

.field public static final STATUS_SIM3_INSERTED:I = 0x4

.field public static final STATUS_SIM4_INSERTED:I = 0x8

.field private static mCommonSlotResetDone:Z = false

.field private static mContext:Landroid/content/Context; = null

.field private static mIccId:[Ljava/lang/String; = null

.field private static mInsertSimState:[I = null

.field private static mPhone:[Lcom/android/internal/telephony/Phone; = null

.field private static sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler; = null

.field private static sIsUpdateAvailable:[I = null

.field private static final sReadICCID_retry_time:I = 0x3e8


# instance fields
.field private mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCurrentlyActiveUserId:I

.field protected mIccRecords:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mReadIccIdCount:I

.field private mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    return v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    return v0
.end method

.method static synthetic -get3()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/content/pm/IPackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/telephony/SubscriptionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->clearIccId(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsent(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubName(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 128
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccFileHandler;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 130
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    .line 131
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    .line 138
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 147
    const-string/jumbo v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    .line 148
    const-string/jumbo v1, "ril.iccid.sim2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 149
    const-string/jumbo v1, "ril.iccid.sim3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 150
    const-string/jumbo v1, "ril.iccid.sim4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 146
    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 155
    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    .line 157
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.mtk_flight_mode_power_off_md"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 156
    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_FLIGHTMODE_POWEROFF_MD_SUPPORT:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 159
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 127
    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 132
    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 141
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 140
    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 143
    iput v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    .line 144
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLock:Ljava/lang/Object;

    .line 258
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 1226
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

    .line 160
    const-string/jumbo v3, "Constructor invoked"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 162
    sput-object p1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 163
    sput-object p2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 164
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 165
    const-string/jumbo v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 168
    iput-object p3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v3, :cond_1

    .line 171
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    aput v6, v3, v0

    .line 172
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 173
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No SIM insert :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 176
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIccId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->start()V

    .line 188
    :cond_2
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v3, "com.mediatek.phone.ACTION_COMMON_SLOT_NO_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string/jumbo v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 201
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 202
    .local v1, "index":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x66

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 203
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x65

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 204
    const-string/jumbo v3, "ro.mtk_sim_hot_swap_common_slot"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x68

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForTrayPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 206
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x69

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 200
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    new-instance v3, Lcom/android/internal/telephony/CarrierServiceBindHelper;

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CarrierServiceBindHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .line 213
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->initializeCarrierApps()V

    .line 159
    return-void
.end method

.method private broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 1177
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1183
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1184
    const-string/jumbo v1, "phoneName"

    const-string/jumbo v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1186
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1189
    const-string/jumbo v2, " reason "

    .line 1188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1190
    const-string/jumbo v2, " for mCardIndex : "

    .line 1188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1191
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    .line 1192
    const/4 v2, -0x1

    .line 1191
    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1176
    return-void
.end method

.method private checkAllIccIdReady()Z
    .locals 4

    .prologue
    .line 1240
    const-string/jumbo v1, ""

    .line 1241
    .local v1, "iccId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAllIccIdReady +, retry_count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_3

    .line 1243
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1244
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No SIM insert :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1247
    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1248
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 1250
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iccId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1253
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private checkIsAvailable()Z
    .locals 4

    .prologue
    .line 1307
    const/4 v1, 0x1

    .line 1308
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 1309
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    aget v2, v2, v0

    if-gtz v2, :cond_1

    .line 1310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sIsUpdateAvailable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1311
    const/4 v1, 0x0

    .line 1315
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkIsAvailable result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1316
    return v1

    .line 1308
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private clearIccId(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1219
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1220
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[clearIccId], slotId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1221
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 1222
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1218
    return-void

    .line 1219
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1286
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1293
    .local v1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 1294
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1295
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 1303
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    .line 1296
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 1297
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1298
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1299
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "index":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private handleSimAbsent(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 839
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " absent - card state no changed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 848
    const-string/jumbo v0, "ABSENT"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 849
    return-void

    .line 840
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " hot plug out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 854
    :cond_2
    const-string/jumbo v0, "ro.mtk_sim_hot_swap_common_slot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 855
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 856
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    .line 865
    :cond_3
    :goto_1
    const-string/jumbo v0, "ABSENT"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 838
    return-void

    .line 859
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string/jumbo v1, "N/A"

    aput-object v1, v0, p1

    .line 860
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 861
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    goto :goto_1
.end method

.method private handleSimLoaded(I)V
    .locals 28
    .param p1, "slotId"    # I

    .prologue
    .line 679
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "handleSimStateLoadedInternal: slotId: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 681
    const/4 v11, 0x0

    .line 687
    .local v11, "needUpdate":Z
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v24, v24, p1

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v14

    .line 688
    .local v14, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v14, :cond_0

    .line 689
    const-string/jumbo v24, "onRecieve: IccRecords null"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 690
    return-void

    .line 692
    :cond_0
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_1

    .line 693
    const-string/jumbo v24, "onRecieve: IccID null"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 694
    return-void

    .line 698
    :cond_1
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v24, v24, p1

    const-string/jumbo v25, ""

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 699
    .local v7, "iccId":Ljava/lang/String;
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v24, v24, p1

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 700
    const-string/jumbo v24, "NeedUpdate"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 701
    const/4 v11, 0x1

    .line 702
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v7, v24, p1

    .line 709
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v24

    if-eqz v24, :cond_3

    if-eqz v11, :cond_3

    .line 711
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 714
    :cond_3
    const v20, 0x7fffffff

    .line 715
    .local v20, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v21

    .line 716
    .local v21, "subIds":[I
    if-eqz v21, :cond_4

    .line 717
    const/16 v24, 0x0

    aget v20, v21, v24

    .line 720
    :cond_4
    invoke-static/range {v20 .. v20}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 721
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    .line 722
    .local v13, "operator":Ljava/lang/String;
    if-eqz v13, :cond_9

    .line 723
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v24

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 724
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v13, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 726
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    .line 734
    :goto_0
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v23

    .line 736
    .local v23, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v8

    .line 737
    .local v8, "msisdn":Ljava/lang/String;
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 739
    .local v5, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v8, :cond_6

    .line 746
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNumber(Ljava/lang/String;I)I

    .line 750
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v22

    .line 752
    .local v22, "subInfo":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v15

    .line 753
    .local v15, "simCarrierName":Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 755
    .local v9, "name":Landroid/content/ContentValues;
    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v24

    .line 756
    const/16 v25, 0x2

    .line 755
    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 760
    const/16 v24, 0x0

    aget v24, v21, v24

    .line 759
    invoke-virtual/range {v23 .. v24}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForSubscription(I)Ljava/lang/String;

    move-result-object v17

    .line 761
    .local v17, "simNumeric":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v24

    .line 762
    const/16 v25, 0x0

    aget v25, v21, v25

    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const/16 v27, 0x1

    .line 761
    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v17

    move/from16 v3, v27

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorNameForDisplayName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 763
    .local v16, "simMvnoName":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[handleSimLoaded]- simNumeric: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 764
    const-string/jumbo v25, ", simMvnoName: "

    .line 763
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 765
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_a

    .line 766
    move-object/from16 v10, v16

    .line 781
    .local v10, "nameToSet":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;I)I

    .line 782
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[handleSimLoaded] subId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", sim name = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 789
    .end local v10    # "nameToSet":Ljava/lang/String;
    .end local v16    # "simMvnoName":Ljava/lang/String;
    .end local v17    # "simNumeric":Ljava/lang/String;
    :cond_7
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 790
    .local v18, "sp":Landroid/content/SharedPreferences;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "curr_subid"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 792
    .local v19, "storedSubId":I
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 794
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v24, v24, p1

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 795
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "preferred_network_mode"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 796
    sget v26, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 794
    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 802
    .local v12, "networkType":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Possibly a new IMSI. Set sub("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ") networkType to "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 806
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v24, v24, p1

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 807
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "preferred_network_mode"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 806
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 811
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v24, v24, p1

    .line 812
    new-instance v25, Ljava/lang/Integer;

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    .line 811
    invoke-interface/range {v24 .. v25}, Lcom/android/internal/telephony/Phone;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 815
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 816
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "curr_subid"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 817
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 824
    .end local v5    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "msisdn":Ljava/lang/String;
    .end local v9    # "name":Landroid/content/ContentValues;
    .end local v12    # "networkType":I
    .end local v13    # "operator":Ljava/lang/String;
    .end local v15    # "simCarrierName":Ljava/lang/String;
    .end local v18    # "sp":Landroid/content/SharedPreferences;
    .end local v19    # "storedSubId":I
    .end local v22    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v23    # "tm":Landroid/telephony/TelephonyManager;
    :cond_8
    :goto_2
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v24

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    move/from16 v27, v0

    .line 824
    invoke-static/range {v24 .. v27}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V

    .line 827
    const-string/jumbo v24, "LOADED"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string/jumbo v24, "LOADED"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 678
    return-void

    .line 728
    .restart local v13    # "operator":Ljava/lang/String;
    :cond_9
    const-string/jumbo v24, "EVENT_RECORDS_LOADED Operator name is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 768
    .restart local v5    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v8    # "msisdn":Ljava/lang/String;
    .restart local v9    # "name":Landroid/content/ContentValues;
    .restart local v15    # "simCarrierName":Ljava/lang/String;
    .restart local v16    # "simMvnoName":Ljava/lang/String;
    .restart local v17    # "simNumeric":Ljava/lang/String;
    .restart local v22    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v23    # "tm":Landroid/telephony/TelephonyManager;
    :cond_a
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 769
    move-object v10, v15

    .restart local v10    # "nameToSet":Ljava/lang/String;
    goto/16 :goto_1

    .line 771
    .end local v10    # "nameToSet":Ljava/lang/String;
    :cond_b
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "CARD "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    add-int/lit8 v25, p1, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "nameToSet":Ljava/lang/String;
    goto/16 :goto_1

    .line 820
    .end local v5    # "contentResolver":Landroid/content/ContentResolver;
    .end local v8    # "msisdn":Ljava/lang/String;
    .end local v9    # "name":Landroid/content/ContentValues;
    .end local v10    # "nameToSet":Ljava/lang/String;
    .end local v13    # "operator":Ljava/lang/String;
    .end local v15    # "simCarrierName":Ljava/lang/String;
    .end local v16    # "simMvnoName":Ljava/lang/String;
    .end local v17    # "simNumeric":Ljava/lang/String;
    .end local v22    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v23    # "tm":Landroid/telephony/TelephonyManager;
    :cond_c
    const-string/jumbo v24, "Invalid subId, could not update ContentResolver"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handleSimLocked(ILjava/lang/String;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 615
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 617
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string/jumbo v6, "N/A"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SIM"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " hot plug in"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 619
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v4, p1

    .line 623
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, p1

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v0, 0x0

    .line 626
    :goto_0
    if-eqz v0, :cond_8

    .line 627
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v4, p1

    .line 629
    .local v1, "iccId":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 637
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v6, v6, p1

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, p1

    .line 639
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 647
    :cond_2
    const-string/jumbo v4, "Querying IccId"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 650
    new-instance v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    invoke-direct {v4, p2, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    .line 649
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 648
    const/16 v6, 0x2fe2

    invoke-virtual {v0, v6, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "iccId":Ljava/lang/String;
    :goto_1
    monitor-exit v5

    .line 611
    return-void

    .line 624
    :cond_3
    :try_start_1
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, p1

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .local v0, "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    goto :goto_0

    .line 640
    .end local v0    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v1    # "iccId":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "Use Icc ID system property for performance enhancement"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 641
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    .line 642
    new-instance v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    invoke-direct {v4, p2, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    .line 643
    const/4 v6, 0x2

    .line 641
    invoke-direct {v3, p0, v4, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 644
    .local v3, "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 615
    .end local v1    # "iccId":Ljava/lang/String;
    .end local v3    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 656
    .restart local v1    # "iccId":Ljava/lang/String;
    :cond_5
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NOT Querying IccId its already set sIccid["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 658
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string/jumbo v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "tempIccid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tempIccid:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", mIccId[slotId]:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 660
    sget-boolean v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_FLIGHTMODE_POWEROFF_MD_SUPPORT:Z

    if-eqz v4, :cond_6

    .line 661
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 666
    :cond_6
    :goto_2
    const-string/jumbo v4, "LOCKED"

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 667
    const-string/jumbo v4, "LOCKED"

    invoke-direct {p0, p1, v4, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 661
    :cond_7
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 662
    const-string/jumbo v4, "All iccids are not ready and iccid changed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 663
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->clearSubscriptionInfo()V

    goto :goto_2

    .line 670
    .end local v1    # "iccId":Ljava/lang/String;
    .end local v2    # "tempIccid":Ljava/lang/String;
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sFh["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "] is null, ignore"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private initializeCarrierApps()V
    .locals 5

    .prologue
    .line 221
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    .line 223
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 224
    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    .line 223
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 250
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iput v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    .line 254
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V

    .line 216
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t get current user ID; guessing it\'s 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAllIccIdQueryDone()Z
    .locals 3

    .prologue
    .line 341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 343
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wait for SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IccId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 346
    const/4 v1, 0x0

    return v1

    .line 341
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_1
    const-string/jumbo v1, "All IccIds query complete"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 351
    const/4 v1, 0x1

    return v1
.end method

.method private isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "oldIccId"    # [Ljava/lang/String;

    .prologue
    .line 1159
    const/4 v1, 0x1

    .line 1160
    .local v1, "newSim":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 1163
    if-eqz p1, :cond_1

    aget-object v2, p2, v0

    if-eqz v2, :cond_1

    .line 1164
    aget-object v2, p2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1165
    const/4 v1, 0x0

    .line 1171
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "newSim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1173
    return v1

    .line 1160
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1201
    const-string/jumbo v0, "SubscriptionInfoUpdater"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    return-void
.end method

.method private setAllDefaultSub(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1211
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string/jumbo v0, "[setAllDefaultSub]+ "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1212
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mediatek/internal/telephony/DefaultSmsSimSettings;->setSmsTalkDefaultSim(Ljava/util/List;Landroid/content/Context;)V

    .line 1213
    const-string/jumbo v0, "[setSmsTalkDefaultSim]- "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1214
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->setVoiceCallDefaultSub(Ljava/util/List;Landroid/content/Context;)V

    .line 1215
    const-string/jumbo v0, "[setVoiceCallDefaultSub]- "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1210
    return-void
.end method

.method private setUpdatedData(III)Landroid/content/Intent;
    .locals 6
    .param p1, "detectedType"    # I
    .param p2, "subCount"    # I
    .param p3, "newSimStatus"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1131
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1133
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "[setUpdatedData]+ "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1135
    if-ne p1, v2, :cond_1

    .line 1136
    const-string/jumbo v1, "simDetectStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1138
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1139
    const-string/jumbo v1, "newSIMSlot"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1153
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setUpdatedData]- ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1154
    return-object v0

    .line 1140
    :cond_1
    if-ne p1, v4, :cond_2

    .line 1141
    const-string/jumbo v1, "simDetectStatus"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1143
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1144
    :cond_2
    if-ne p1, v3, :cond_3

    .line 1145
    const-string/jumbo v1, "simDetectStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1147
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1148
    :cond_3
    if-ne p1, v5, :cond_0

    .line 1149
    const-string/jumbo v1, "simDetectStatus"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateCarrierServices(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "simState"    # Ljava/lang/String;

    .prologue
    .line 833
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 832
    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 834
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 835
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->updateForPhoneId(ILjava/lang/String;)V

    .line 831
    return-void
.end method

.method private updateSubName(I)V
    .locals 7
    .param p1, "subId"    # I

    .prologue
    .line 1321
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 1322
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_0

    .line 1323
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 1324
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v3

    .line 1326
    .local v3, "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "carrierName":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 1328
    .local v2, "slotId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSubName, carrierName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1329
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1330
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrierEx(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1332
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    .line 1331
    invoke-virtual {v3, p1, v0, v6, v5}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1333
    .local v1, "nameToSet":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SPN found, name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1338
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v1, p1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;I)I

    .line 1319
    .end local v0    # "carrierName":Ljava/lang/String;
    .end local v1    # "nameToSet":Ljava/lang/String;
    .end local v2    # "slotId":I
    .end local v3    # "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    :cond_0
    return-void

    .line 1335
    .restart local v0    # "carrierName":Ljava/lang/String;
    .restart local v2    # "slotId":I
    .restart local v3    # "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CARD "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1336
    .restart local v1    # "nameToSet":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SPN not found, set name to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized updateSubscriptionInfoByIccId()V
    .locals 26

    .prologue
    monitor-enter p0

    .line 874
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 876
    :try_start_1
    const-string/jumbo v22, "updateSubscriptionInfoByIccId:+ Start"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 881
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v22

    if-nez v22, :cond_0

    :try_start_2
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 882
    return-void

    .line 886
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SubscriptionManager;->clearSubscriptionInfo()V

    .line 889
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    .line 892
    const/16 v17, 0x0

    .line 893
    .local v17, "simState":I
    const/16 v18, 0x0

    .line 895
    .local v18, "skipCapabilitySwitch":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_4

    .line 896
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v24, 0x0

    aput v24, v22, v6

    .line 898
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v17

    .line 899
    const/16 v22, 0x2

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 900
    const/16 v22, 0x3

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 903
    :cond_1
    :goto_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "skipCapabilitySwitch = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 904
    const/16 v18, 0x1

    .line 895
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 901
    :cond_3
    const/16 v22, 0x4

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 902
    const/16 v22, 0x6

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 909
    :cond_4
    sget v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 910
    .local v8, "insertedSimCount":I
    const/4 v6, 0x0

    :goto_2
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_6

    .line 911
    const-string/jumbo v22, "N/A"

    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v24, v24, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 912
    add-int/lit8 v8, v8, -0x1

    .line 913
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v24, -0x63

    aput v24, v22, v6

    .line 910
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 916
    :cond_6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "insertedSimCount = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 918
    const/4 v7, 0x0

    .line 919
    .local v7, "index":I
    const/4 v6, 0x0

    :goto_3
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_a

    .line 920
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v22, v22, v6

    const/16 v24, -0x63

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 919
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 923
    :cond_8
    const/4 v7, 0x2

    .line 924
    add-int/lit8 v10, v6, 0x1

    .local v10, "j":I
    :goto_4
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v10, v0, :cond_7

    .line 925
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v22, v22, v10

    if-nez v22, :cond_9

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v24, v24, v10

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 926
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v24, 0x1

    aput v24, v22, v6

    .line 927
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aput v7, v22, v10

    .line 928
    add-int/lit8 v7, v7, 0x1

    .line 924
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 933
    .end local v10    # "j":I
    :cond_a
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 934
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    new-array v15, v0, [Ljava/lang/String;

    .line 935
    .local v15, "oldIccId":[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_5
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_10

    .line 936
    const/16 v22, 0x0

    aput-object v22, v15, v6

    .line 938
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v22

    .line 939
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v24

    .line 938
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIdWithCheck(IZLjava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 940
    .local v16, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v16, :cond_e

    .line 941
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v15, v6

    .line 942
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "updateSubscriptionInfoByIccId: oldSubId = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 943
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v22

    .line 942
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 944
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v22, v22, v6

    if-nez v22, :cond_b

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    aget-object v24, v15, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 947
    :cond_b
    :goto_6
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v22, v22, v6

    if-eqz v22, :cond_c

    .line 948
    new-instance v21, Landroid/content/ContentValues;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/content/ContentValues;-><init>(I)V

    .line 949
    .local v21, "value":Landroid/content/ContentValues;
    const-string/jumbo v22, "sim_id"

    .line 950
    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 949
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 951
    sget-object v24, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 952
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "_id="

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 953
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 952
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 953
    const/16 v25, 0x0

    .line 951
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 935
    .end local v21    # "value":Landroid/content/ContentValues;
    :cond_c
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 945
    :cond_d
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v24, -0x1

    aput v24, v22, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 874
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "insertedSimCount":I
    .end local v15    # "oldIccId":[Ljava/lang/String;
    .end local v16    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v17    # "simState":I
    .end local v18    # "skipCapabilitySwitch":Z
    :catchall_0
    move-exception v22

    :try_start_4
    monitor-exit v23

    throw v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v22

    monitor-exit p0

    throw v22

    .line 956
    .restart local v4    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v6    # "i":I
    .restart local v7    # "index":I
    .restart local v8    # "insertedSimCount":I
    .restart local v15    # "oldIccId":[Ljava/lang/String;
    .restart local v16    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v17    # "simState":I
    .restart local v18    # "skipCapabilitySwitch":Z
    :cond_e
    :try_start_5
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v22, v22, v6

    if-nez v22, :cond_f

    .line 958
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v24, -0x1

    aput v24, v22, v6

    .line 960
    :cond_f
    const-string/jumbo v22, "N/A"

    aput-object v22, v15, v6

    .line 961
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "updateSubscriptionInfoByIccId: No SIM in slot "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, " last time"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_7

    .line 965
    .end local v16    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_10
    const/4 v6, 0x0

    :goto_8
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_11

    .line 966
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "updateSubscriptionInfoByIccId: oldIccId["

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, "] = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v24, v15, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 967
    const-string/jumbo v24, ", sIccId["

    .line 966
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 967
    const-string/jumbo v24, "] = "

    .line 966
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 967
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v24, v24, v6

    .line 966
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 965
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 971
    :cond_11
    const/4 v12, 0x0

    .line 972
    .local v12, "nNewCardCount":I
    const/4 v13, 0x0

    .line 973
    .local v13, "nNewSimStatus":I
    const/4 v6, 0x0

    :goto_9
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_15

    .line 974
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v22, v22, v6

    const/16 v24, -0x63

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 975
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "updateSubscriptionInfoByIccId: No SIM inserted in slot "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, " this time"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 973
    :cond_12
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 977
    :cond_13
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v22, v22, v6

    if-lez v22, :cond_14

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v22, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v25, v25, v6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 981
    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v25, v25, v6

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 980
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    .line 982
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "SUB"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v24, v6, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, " has invalid IccId"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 986
    :goto_b
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 987
    add-int/lit8 v12, v12, 0x1

    .line 988
    packed-switch v6, :pswitch_data_0

    .line 1003
    :goto_c
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v24, -0x2

    aput v24, v22, v6

    goto :goto_a

    .line 984
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v22, v0

    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v24, v24, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_b

    .line 990
    :pswitch_0
    or-int/lit8 v13, v13, 0x1

    .line 991
    goto :goto_c

    .line 993
    :pswitch_1
    or-int/lit8 v13, v13, 0x2

    .line 994
    goto :goto_c

    .line 996
    :pswitch_2
    or-int/lit8 v13, v13, 0x4

    .line 997
    goto :goto_c

    .line 1008
    :cond_15
    const/4 v6, 0x0

    :goto_d
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_17

    .line 1009
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v22, v22, v6

    const/16 v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    .line 1010
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v24, -0x3

    aput v24, v22, v6

    .line 1012
    :cond_16
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "updateSubscriptionInfoByIccId: sInsertSimState["

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, "] = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1013
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v24, v24, v6

    .line 1012
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1008
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 1016
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v19

    .line 1017
    .local v19, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v19, :cond_19

    const/4 v14, 0x0

    .line 1018
    .local v14, "nSubCount":I
    :goto_e
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "updateSubscriptionInfoByIccId: nSubCount = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1019
    const/4 v6, 0x0

    :goto_f
    if-ge v6, v14, :cond_1a

    .line 1020
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/SubscriptionInfo;

    .line 1027
    .local v20, "temp":Landroid/telephony/SubscriptionInfo;
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v22

    .line 1028
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v24

    .line 1027
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v11

    .line 1031
    .local v11, "msisdn":Ljava/lang/String;
    if-eqz v11, :cond_18

    .line 1038
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v22

    .line 1039
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v24

    const/16 v25, 0x0

    .line 1038
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNumber(Ljava/lang/String;IZ)I

    .line 1019
    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 1017
    .end local v11    # "msisdn":Ljava/lang/String;
    .end local v14    # "nSubCount":I
    .end local v20    # "temp":Landroid/telephony/SubscriptionInfo;
    :cond_19
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v14

    .restart local v14    # "nSubCount":I
    goto :goto_e

    .line 1045
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setAllDefaultSub(Ljava/util/List;)V

    .line 1048
    const/4 v5, 0x0

    .line 1049
    .local v5, "hasSimRemoved":Z
    const/4 v6, 0x0

    :goto_10
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_1d

    .line 1050
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    if-eqz v22, :cond_1b

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    const-string/jumbo v24, "N/A"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 1051
    aget-object v22, v15, v6

    const-string/jumbo v24, "N/A"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 1049
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 1052
    :cond_1c
    const/4 v5, 0x1

    .line 1057
    :cond_1d
    const/4 v9, 0x0

    .line 1058
    .local v9, "intent":Landroid/content/Intent;
    if-nez v12, :cond_26

    .line 1060
    if-eqz v5, :cond_21

    .line 1062
    const/4 v6, 0x0

    :goto_11
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_1e

    .line 1063
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v22, v22, v6

    const/16 v24, -0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_20

    .line 1064
    const-string/jumbo v22, "No new SIM detected and SIM repositioned"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1065
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setUpdatedData(III)Landroid/content/Intent;

    move-result-object v9

    .line 1070
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_1e
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ne v6, v0, :cond_1f

    .line 1072
    const-string/jumbo v22, "No new SIM detected and SIM removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1073
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setUpdatedData(III)Landroid/content/Intent;

    move-result-object v9

    .line 1105
    :cond_1f
    :goto_12
    if-nez v18, :cond_27

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v24, v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 1120
    :goto_13
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged(Landroid/content/Intent;)V

    .line 1122
    const-string/jumbo v22, "updateSubscriptionInfoByIccId:- SsubscriptionInfo update complete"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    .line 872
    return-void

    .line 1062
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 1078
    :cond_21
    const/4 v6, 0x0

    :goto_14
    :try_start_7
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_22

    .line 1079
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v22, v22, v6

    const/16 v24, -0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_24

    .line 1080
    const-string/jumbo v22, "No new SIM detected and SIM repositioned"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1081
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setUpdatedData(III)Landroid/content/Intent;

    move-result-object v9

    .line 1086
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_22
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ne v6, v0, :cond_1f

    .line 1088
    const-string/jumbo v22, "[updateSimInfoByIccId] All SIM inserted into the same slot"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1090
    if-lez v14, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v22

    if-eqz v22, :cond_25

    .line 1094
    :cond_23
    :goto_15
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setUpdatedData(III)Landroid/content/Intent;

    move-result-object v9

    .local v9, "intent":Landroid/content/Intent;
    goto/16 :goto_12

    .line 1078
    .local v9, "intent":Landroid/content/Intent;
    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 1091
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v24, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v22

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    goto :goto_15

    .line 1099
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_26
    const-string/jumbo v22, "New SIM detected"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1100
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setUpdatedData(III)Landroid/content/Intent;

    move-result-object v9

    .local v9, "intent":Landroid/content/Intent;
    goto/16 :goto_12

    .line 1113
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v22, v0

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v24, v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v24

    .line 1113
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_13

    .line 988
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSubscriptionInfoIfNeed()V
    .locals 5

    .prologue
    .line 1257
    const-string/jumbo v2, "[updateSubscriptionInfoIfNeed]+"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1258
    const/4 v1, 0x0

    .line 1259
    .local v1, "needUpdate":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_1

    .line 1260
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 1261
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1259
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1262
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[updateSubscriptionInfoIfNeed] icc id change, slot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1263
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1264
    const/4 v1, 0x1

    goto :goto_1

    .line 1268
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1269
    if-eqz v1, :cond_2

    .line 1271
    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->start()V

    .line 1281
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[updateSubscriptionInfoIfNeed]- return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1256
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 1196
    const-string/jumbo v0, "[dispose]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1197
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1195
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1205
    const-string/jumbo v0, "SubscriptionInfoUpdater:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1204
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 378
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 540
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown msg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 380
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 381
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    .line 382
    .local v7, "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    iget v5, v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    .line 383
    .local v5, "slotId":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleMessage : <EVENT_SIM_LOCKED_QUERY_ICCID_DONE> SIM"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 384
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_4

    .line 385
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v9, :cond_3

    .line 386
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 389
    .local v1, "data":[B
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    array-length v10, v1

    invoke-static {v1, v12, v10}, Lcom/android/internal/telephony/uicc/IccUtils;->parseIccIdToString([BII)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 409
    .end local v1    # "data":[B
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sIccId["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 411
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 413
    :cond_1
    const-string/jumbo v9, "LOCKED"

    .line 414
    iget-object v10, v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    .line 413
    invoke-direct {p0, v5, v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string/jumbo v9, "N/A"

    sget-object v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 416
    const-string/jumbo v9, "LOCKED"

    invoke-direct {p0, v5, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 424
    :cond_2
    new-instance v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    .line 425
    new-instance v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget-object v10, v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    invoke-direct {v9, v10, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    .line 426
    const/4 v10, 0x2

    .line 424
    invoke-direct {v8, p0, v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 427
    .local v8, "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    goto/16 :goto_0

    .line 392
    .end local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :cond_3
    const-string/jumbo v9, "Null ar"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 393
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string/jumbo v10, "N/A"

    aput-object v10, v9, v5

    goto :goto_1

    .line 397
    :cond_4
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v9, v9, Lcom/android/internal/telephony/CommandException;

    if-eqz v9, :cond_5

    .line 398
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v9

    .line 399
    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    .line 398
    if-ne v9, v10, :cond_5

    .line 400
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string/jumbo v10, ""

    aput-object v10, v9, v5

    .line 407
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Query IccId fail: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 403
    :cond_5
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string/jumbo v10, "N/A"

    aput-object v10, v9, v5

    goto :goto_2

    .line 433
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "slotId":I
    .end local v7    # "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v3

    .line 434
    .local v3, "index":Ljava/lang/Integer;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleMessage : <EVENT_RADIO_UNAVAILABLE> SIM"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 435
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v12, v9, v10

    .line 436
    const-string/jumbo v9, "ro.mtk_sim_hot_swap_common_slot"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 437
    const-string/jumbo v9, "[Common slot] reset mCommonSlotResetDone in EVENT_RADIO_UNAVAILABLE"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 438
    sput-boolean v12, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    goto/16 :goto_0

    .line 442
    .end local v3    # "index":Ljava/lang/Integer;
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v3

    .line 443
    .restart local v3    # "index":Ljava/lang/Integer;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleMessage : <EVENT_RADIO_AVAILABLE> SIM"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 444
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v13, v9, v10

    .line 446
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkIsAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 447
    iput v12, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    .line 448
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v9

    if-nez v9, :cond_6

    .line 449
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x3e8

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 451
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    goto/16 :goto_0

    .line 457
    .end local v3    # "index":Ljava/lang/Integer;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 458
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    .line 459
    .local v6, "slotId":Ljava/lang/Integer;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_7

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v9, :cond_7

    .line 460
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .line 461
    .local v4, "modes":[I
    aget v9, v4, v12

    if-ne v9, v13, :cond_0

    .line 462
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v9, v9, v10

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 465
    .end local v4    # "modes":[I
    :cond_7
    const-string/jumbo v9, "EVENT_GET_NETWORK_SELECTION_MODE_DONE: error getting network mode."

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 478
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "slotId":Ljava/lang/Integer;
    :sswitch_4
    new-instance v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    .line 479
    new-instance v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v9, v11, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    .line 478
    invoke-direct {v8, p0, v9, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 481
    .restart local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    goto/16 :goto_0

    .line 488
    .end local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :sswitch_5
    new-instance v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    .line 489
    new-instance v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v9, v11, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    .line 488
    invoke-direct {v8, p0, v9, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 491
    .restart local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    goto/16 :goto_0

    .line 496
    .end local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :sswitch_6
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v10, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLocked(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 500
    :sswitch_7
    iget v9, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v10, "UNKNOWN"

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 504
    :sswitch_8
    iget v9, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v10, "CARD_IO_ERROR"

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 509
    :sswitch_9
    new-instance v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    .line 510
    new-instance v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v9, v11, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    .line 511
    const/4 v10, 0x3

    .line 509
    invoke-direct {v8, p0, v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 512
    .restart local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    goto/16 :goto_0

    .line 516
    .end local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :sswitch_a
    new-instance v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    .line 517
    new-instance v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v9, v11, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    .line 518
    const/4 v10, 0x4

    .line 516
    invoke-direct {v8, p0, v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 519
    .restart local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    goto/16 :goto_0

    .line 524
    .end local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :sswitch_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[Common Slot] handle EVENT_TRAY_PLUG_IN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 525
    sget-boolean v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    if-nez v9, :cond_0

    .line 526
    sput-boolean v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    .line 527
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    sget v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v2, v9, :cond_0

    .line 528
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string/jumbo v10, ""

    aput-object v10, v9, v2

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 534
    .end local v2    # "i":I
    :sswitch_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[Common Slot] handle EVENT_SIM_PLUG_OUT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 535
    sput-boolean v12, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    goto/16 :goto_0

    .line 378
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_8
        0x7 -> :sswitch_7
        0x64 -> :sswitch_9
        0x65 -> :sswitch_2
        0x66 -> :sswitch_1
        0x67 -> :sswitch_a
        0x68 -> :sswitch_b
        0x69 -> :sswitch_c
    .end sparse-switch
.end method

.method public setDisplayNameForNewSub(Ljava/lang/String;II)V
    .locals 8
    .param p1, "newSubName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "newNameSource"    # I

    .prologue
    .line 355
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 356
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_3

    .line 358
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v0

    .line 359
    .local v0, "oldNameSource":I
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 360
    .local v1, "oldSubName":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[setDisplayNameForNewSub] subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 361
    const-string/jumbo v4, ", oldSimName = "

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 361
    const-string/jumbo v4, ", oldNameSource = "

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 362
    const-string/jumbo v4, ", newSubName = "

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 362
    const-string/jumbo v4, ", newNameSource = "

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 363
    if-eqz v1, :cond_0

    .line 364
    if-nez v0, :cond_2

    .line 365
    if-eqz p1, :cond_2

    .line 368
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 369
    int-to-long v6, p3

    .line 368
    invoke-virtual {v3, p1, v4, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    .line 354
    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 366
    .restart local v0    # "oldNameSource":I
    .restart local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_1

    .line 367
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 372
    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " SubInfo not created yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method
