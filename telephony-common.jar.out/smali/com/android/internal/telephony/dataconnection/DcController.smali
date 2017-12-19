.class Lcom/android/internal/telephony/dataconnection/DcController;
.super Lcom/android/internal/util/StateMachine;
.source "DcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;
    }
.end annotation


# static fields
.field static final DATA_CONNECTION_ACTIVE_PH_LINK_DORMANT:I = 0x1

.field static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field static final DATA_CONNECTION_ACTIVE_UNKNOWN:I = 0x7fffffff

.field private static final DBG:Z = true

.field private static final SRLTE_SUPPORT:Z

.field private static final SVLTE_SUPPORT:Z

.field private static final VDBG:Z


# instance fields
.field private mDcListActiveByCid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field mDcListAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

.field private mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

.field private mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field private volatile mExecutingCarrierChange:Z

.field mOverallDataConnectionActiveState:I

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/DcController;->SRLTE_SUPPORT:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/DcController;->SVLTE_SUPPORT:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/dataconnection/DcController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mExecutingCarrierChange:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/DcController;Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .locals 1
    .param p1, "oldLp"    # Landroid/net/LinkProperties;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcController;->isIpMatched(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->lr(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    const-string/jumbo v0, "ro.mtk_svlte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string/jumbo v3, "1"

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcController;->SVLTE_SUPPORT:Z

    .line 101
    const-string/jumbo v0, "ro.mtk_srlte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string/jumbo v3, "1"

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/internal/telephony/dataconnection/DcController;->SRLTE_SUPPORT:Z

    .line 63
    return-void

    :cond_0
    move v0, v2

    .line 100
    goto :goto_0

    :cond_1
    move v1, v2

    .line 102
    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, p4}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    .line 88
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mOverallDataConnectionActiveState:I

    .line 90
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    .line 115
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->setLogRecSize(I)V

    .line 116
    const-string/jumbo v0, "E ctor"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 117
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 118
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->addState(Lcom/android/internal/util/State;)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->setInitialState(Lcom/android/internal/util/State;)V

    .line 121
    const-string/jumbo v0, "X ctor"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcController$1;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcController$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 130
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 133
    const/high16 v2, 0x10000

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 113
    :cond_0
    return-void
.end method

.method private isIpMatched(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "oldLp"    # Landroid/net/LinkProperties;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 538
    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    const/4 v0, 0x1

    return v0

    .line 541
    :cond_0
    const-string/jumbo v0, "isIpMatched: address count is different but matched"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method private lr(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->logAndAddLogRec(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method static makeDcc(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 138
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcController;

    const-string/jumbo v1, "Dcc"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcController;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)V

    .line 139
    .local v0, "dcc":Lcom/android/internal/telephony/dataconnection/DcController;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->start()V

    .line 140
    return-object v0
.end method


# virtual methods
.method addActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 2
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 159
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    if-gez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addActiveDcByCid dc.mCid < 0 dc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method addDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 1
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method dispose()V
    .locals 3

    .prologue
    .line 144
    const-string/jumbo v0, "dispose: call quiteNow()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->quitNow()V

    .line 143
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 527
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mDcListAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mDcListActiveByCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method getDataCallListForSimLoaded()V
    .locals 2

    .prologue
    .line 183
    const-string/jumbo v0, "getDataCallList"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 185
    const v1, 0x4000f

    .line 184
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 182
    return-void
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, "info":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "info":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 515
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 517
    :cond_0
    return-object v0
.end method

.method isExecutingCarrierChange()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mExecutingCarrierChange:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void
.end method

.method removeActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 5
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 168
    .local v2, "removedDc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    iget v4, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object v2, v0

    .line 169
    .local v2, "removedDc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-nez v2, :cond_0

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeActiveDcByCid removedDc=null dc.mCid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v2    # "removedDc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/util/ConcurrentModificationException;
    const-string/jumbo v3, "concurrentModificationException happened!!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method removeDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 2
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDcListAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mDcListActiveByCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
