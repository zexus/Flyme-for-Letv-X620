.class public final Lcom/android/internal/telephony/gsm/GsmCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_Call$StateSwitchesValues:[I = null

.field private static final DBG_POLL:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GsmCallTracker"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final REPEAT_POLLING:Z


# instance fields
.field hasPendingReplaceRequest:Z

.field mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

.field mDesiredMute:Z

.field mDroppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mEconfSrvccConnectionIds:[I

.field mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field mHangupPendingMO:Z

.field mHasPendingSwapRequest:Z

.field mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

.field private mImsConfParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

.field mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

.field public mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

.field mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

.field mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_Call$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->-com_android_internal_telephony_Call$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->-com_android_internal_telephony_Call$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->-com_android_internal_telephony_Call$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v3, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 234
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 89
    new-array v0, v3, [Lcom/android/internal/telephony/gsm/GsmConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 90
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 91
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 93
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 110
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    .line 114
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 117
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 125
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHasPendingSwapRequest:Z

    .line 130
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    .line 141
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    .line 235
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 236
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x17

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 249
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1b

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForEconfSrvcc(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 234
    return-void
.end method

.method private callStateToString(Lcom/android/internal/telephony/Call$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 1834
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->-getcom_android_internal_telephony_Call$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1846
    const-string/jumbo v0, "ACTIVE"

    return-object v0

    .line 1836
    :pswitch_0
    const-string/jumbo v0, "HOLDING"

    return-object v0

    .line 1838
    :pswitch_1
    const-string/jumbo v0, "DIALING"

    return-object v0

    .line 1840
    :pswitch_2
    const-string/jumbo v0, "ALERTING"

    return-object v0

    .line 1842
    :pswitch_3
    const-string/jumbo v0, "INCOMING"

    return-object v0

    .line 1844
    :pswitch_4
    const-string/jumbo v0, "WAITING"

    return-object v0

    .line 1834
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private dumpState()V
    .locals 6

    .prologue
    .line 1282
    const-string/jumbo v3, "GsmCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Phone State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const-string/jumbo v3, "GsmCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ringing call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1287
    .local v1, "l":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1288
    const-string/jumbo v3, "GsmCallTracker"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1291
    :cond_0
    const-string/jumbo v3, "GsmCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Foreground call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1294
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    .line 1295
    const-string/jumbo v3, "GsmCallTracker"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1298
    :cond_1
    const-string/jumbo v3, "GsmCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Background call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1301
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_2

    .line 1302
    const-string/jumbo v3, "GsmCallTracker"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1306
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->LogState()V

    .line 1279
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    .line 355
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 357
    .local v1, "connCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 358
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 360
    .local v0, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->fakeHoldBeforeDial()V

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    .end local v0    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method private getDriverCallStateFromCallState(Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/DriverCall$State;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 1817
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->-getcom_android_internal_telephony_Call$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1829
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 1819
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 1821
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 1823
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 1825
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 1827
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 1817
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1529
    packed-switch p1, :pswitch_data_0

    .line 1539
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    return-object v0

    .line 1531
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    return-object v0

    .line 1533
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    return-object v0

    .line 1535
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    return-object v0

    .line 1537
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    return-object v0

    .line 1529
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .prologue
    .line 1275
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    .line 1271
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 749
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 750
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 747
    return-void
.end method

.method private operationComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 786
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "operationComplete: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 789
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    .line 788
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 789
    const-string/jumbo v1, ", needsPoll="

    .line 788
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 789
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    .line 788
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 791
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    if-eqz v0, :cond_1

    .line 792
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    if-gez v0, :cond_0

    .line 796
    const-string/jumbo v0, "GsmCallTracker"

    const-string/jumbo v1, "GsmCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    goto :goto_0
.end method

.method private declared-synchronized restoreConferenceParticipantAddress()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    monitor-enter p0

    .line 1860
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    if-nez v7, :cond_0

    .line 1861
    const-string/jumbo v7, "SRVCC: restoreConferenceParticipantAddress():ignore because mEconfSrvccConnectionIds is empty"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1863
    return v8

    .line 1866
    :cond_0
    const/4 v1, 0x0

    .line 1869
    .local v1, "finishRestore":Z
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    const/4 v8, 0x0

    aget v4, v7, v8

    .line 1870
    .local v4, "numOfParticipants":I
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_0
    if-gt v3, v4, :cond_4

    .line 1872
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    aget v5, v7, v3

    .line 1873
    .local v5, "participantCallId":I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    add-int/lit8 v8, v5, -0x1

    aget-object v6, v7, v8

    .line 1875
    .local v6, "participantConnection":Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v6, :cond_1

    .line 1876
    const-string/jumbo v7, "SRVCC: found conference connections!"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1878
    const/4 v2, 0x0

    .line 1879
    .local v2, "hostConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    iget-object v7, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    instance-of v7, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v7, :cond_2

    .line 1880
    iget-object v2, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .end local v2    # "hostConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1886
    .local v2, "hostConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-nez v2, :cond_3

    .line 1887
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SRVCC: no host, ignore connection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1870
    .end local v2    # "hostConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1882
    .local v2, "hostConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SRVCC: host is abnormal, ignore connection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v1    # "finishRestore":Z
    .end local v2    # "hostConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v3    # "index":I
    .end local v4    # "numOfParticipants":I
    .end local v5    # "participantCallId":I
    .end local v6    # "participantConnection":Lcom/android/internal/telephony/gsm/GsmConnection;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1891
    .restart local v1    # "finishRestore":Z
    .local v2, "hostConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .restart local v3    # "index":I
    .restart local v4    # "numOfParticipants":I
    .restart local v5    # "participantCallId":I
    .restart local v6    # "participantConnection":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_3
    add-int/lit8 v7, v3, -0x1

    :try_start_2
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConferenceParticipantAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 1892
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->updateConferenceParticipantAddress(Ljava/lang/String;)V

    .line 1893
    const/4 v1, 0x1

    .line 1895
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SRVCC: restore Connection="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1896
    const-string/jumbo v8, " with address:"

    .line 1895
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "hostConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v5    # "participantCallId":I
    .end local v6    # "participantConnection":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_4
    monitor-exit p0

    .line 1900
    return v1
.end method

.method private resumeBackgroundAfterDialFailed()V
    .locals 5

    .prologue
    .line 368
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 370
    .local v1, "connCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 371
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 373
    .local v0, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->resumeHoldAfterDialFailed()V

    .line 370
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    .end local v0    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method private updatePhoneState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 803
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 804
    .local v1, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 805
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 823
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_5

    .line 824
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 825
    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 824
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 830
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePhoneState: old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 831
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v1, :cond_1

    .line 832
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPhoneStateChanged()V

    .line 802
    :cond_1
    return-void

    .line 806
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v2, :cond_4

    .line 807
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 810
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 816
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_3

    .line 818
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->callEndCleanupHandOverCallIfAny()V

    .line 820
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 808
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 826
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    .line 827
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 828
    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 827
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 631
    const-string/jumbo v0, "phone"

    const-string/jumbo v1, "acceptCall: incoming..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 625
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 636
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 637
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 639
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method acceptCall(I)V
    .locals 6
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 588
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 589
    const-string/jumbo v2, "phone"

    const-string/jumbo v3, "acceptCall: incoming..."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 593
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 594
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    if-nez p1, :cond_0

    .line 596
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->acceptVtCallWithVoiceOnly(ILandroid/os/Message;)V

    .line 597
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->setVideoState(I)V

    .line 598
    return-void

    .line 602
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 583
    :goto_0
    return-void

    .line 603
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    .line 604
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 606
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 607
    .restart local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 608
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 609
    .local v1, "fgCn":Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 610
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    .line 611
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->replaceVtCall(ILandroid/os/Message;)V

    .line 612
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 613
    return-void

    .line 617
    .end local v1    # "fgCn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 619
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v3, "phone not ringing"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method canConference()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 690
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 691
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 692
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 690
    :cond_0
    :goto_0
    return v0

    .line 693
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method canDial()Z
    .locals 5

    .prologue
    .line 704
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 706
    .local v2, "serviceState":I
    const-string/jumbo v3, "ro.telephony.disable-call"

    const-string/jumbo v4, "false"

    .line 705
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "disableCall":Ljava/lang/String;
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 709
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v3, :cond_0

    .line 710
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 708
    :cond_0
    const/4 v1, 0x0

    .line 715
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 711
    .end local v1    # "ret":Z
    :cond_1
    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 712
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 713
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto :goto_0

    .line 712
    .end local v1    # "ret":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "ret":Z
    goto :goto_0

    .line 713
    .end local v1    # "ret":Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method canTransfer()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 738
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 739
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    .line 741
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 738
    :cond_1
    return v0

    .line 740
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method canVtDial()Z
    .locals 5

    .prologue
    .line 722
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    .line 723
    .local v0, "networkType":I
    const-string/jumbo v2, "GsmCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 726
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 725
    :cond_0
    const/4 v1, 0x1

    .line 732
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 727
    .end local v1    # "ret":Z
    :cond_1
    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    .line 728
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    .line 729
    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    .line 730
    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    .restart local v1    # "ret":Z
    goto :goto_0

    .end local v1    # "ret":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 684
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 685
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 681
    return-void
.end method

.method conference()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    .line 671
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 568
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 470
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 472
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v3

    if-nez v3, :cond_0

    .line 473
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v4, "cannot dial in current state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 476
    :cond_0
    move-object v1, p1

    .line 477
    .local v1, "origNumber":Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 482
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    .line 489
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->set()V

    .line 492
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    const-wide/16 v4, 0x1f4

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 509
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 511
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v4, "cannot dial in current state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 498
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 514
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 515
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 514
    invoke-direct {v3, v4, v5, p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 516
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 518
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 522
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v4, 0x7

    iput v4, v3, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 525
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->reset()V

    .line 530
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    .line 555
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNumberConverted:Z

    if-eqz v3, :cond_4

    .line 556
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setConverted(Ljava/lang/String;)V

    .line 557
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNumberConverted:Z

    .line 560
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 561
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 563
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v3

    .line 519
    :cond_5
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    .line 533
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 536
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->isWaiting()Z

    move-result v3

    if-nez v3, :cond_8

    .line 538
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v3

    invoke-static {v3, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 539
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 546
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 547
    const/16 v5, 0x16

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 546
    invoke-interface {v3, v4, p2, p3, v5}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1

    .line 540
    :cond_7
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getServiceCategoryFromEcc(Ljava/lang/String;)I

    move-result v2

    .line 541
    .local v2, "serviceCategory":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setEccServiceCategory(I)V

    .line 542
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 543
    const/16 v5, 0x16

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 542
    invoke-interface {v3, v4, p2, p3, v5}, Lcom/android/internal/telephony/CommandsInterface;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1

    .line 550
    .end local v2    # "serviceCategory":I
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2, p3}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->set(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 573
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 10

    .prologue
    const/16 v9, 0xe

    .line 257
    const-string/jumbo v4, "GsmCallTracker"

    const-string/jumbo v5, "GsmCallTracker dispose"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 260
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 261
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 264
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 265
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIncomingCallIndication(Landroid/os/Handler;)V

    .line 269
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 271
    .local v0, "c":Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v0, :cond_0

    .line 272
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 275
    const-string/jumbo v7, "GsmCallTracker"

    const-string/jumbo v8, "dispose: call connnection onDisconnect, cause LOST_SIGNAL"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/16 v7, 0xe

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v7, "GsmCallTracker"

    const-string/jumbo v8, "dispose: unexpected error on hangup"

    invoke-static {v7, v8, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 284
    .end local v0    # "c":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v4, :cond_2

    .line 285
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 286
    const-string/jumbo v4, "GsmCallTracker"

    const-string/jumbo v5, "dispose: call mPendingMO.onDsiconnect, cause LOST_SIGNAL"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHandoverConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 294
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 296
    .local v2, "hoConnection":Lcom/android/internal/telephony/Connection;
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 300
    :goto_4
    const-string/jumbo v4, "GsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dispose - disconnect hoConn= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .end local v2    # "hoConnection":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    .line 302
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 289
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :catch_1
    move-exception v1

    .line 290
    .restart local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v4, "GsmCallTracker"

    const-string/jumbo v5, "dispose: unexpected error on hangup"

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 297
    .end local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    .restart local v2    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :catch_2
    move-exception v1

    .line 298
    .restart local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v4, "GsmCallTracker"

    const-string/jumbo v5, "dispose: unexpected error on hangup hoConnection"

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 305
    .end local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v2    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 256
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1756
    const-string/jumbo v1, "GsmCallTracker extends:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1757
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mConnections: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1759
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1760
    const-string/jumbo v1, "  mConnections[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v0

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1759
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1762
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mVoiceCallEndedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mVoiceCallStartedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mDroppedDuringPoll: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1765
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1766
    const-string/jumbo v1, "  mDroppedDuringPoll[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1765
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1768
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mRingingCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mForegroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mBackgroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mPendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mHangupPendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mPhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mDesiredMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1755
    return-void
.end method

.method explicitCallTransfer()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 676
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 310
    const-string/jumbo v0, "GsmCallTracker"

    const-string/jumbo v1, "GsmCallTracker finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1517
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1518
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1519
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1520
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1521
    return-object v0

    .line 1518
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1525
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method protected getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 1910
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1911
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 1912
    .local v1, "numOfParticipants":I
    const/4 v0, 0x1

    .local v0, "index":I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 1913
    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_2

    .line 1914
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SRVCC: getHoConnection for call-id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1915
    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 1914
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1915
    const-string/jumbo v3, " in a conference is found!"

    .line 1914
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1916
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    if-nez v2, :cond_1

    .line 1917
    const-string/jumbo v2, "SRVCC: but mImsConfHostConnection is null, try to find by callState"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1927
    .end local v0    # "index":I
    .end local v1    # "numOfParticipants":I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    return-object v2

    .line 1920
    .restart local v0    # "index":I
    .restart local v1    # "numOfParticipants":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SRVCC: ret= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1921
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    return-object v2

    .line 1912
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 1374
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1549
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v8, v8, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v8, :cond_0

    .line 1550
    const-string/jumbo v8, "GsmCallTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Received message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1551
    const-string/jumbo v10, "["

    .line 1550
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1551
    iget v10, p1, Landroid/os/Message;->what:I

    .line 1550
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1551
    const-string/jumbo v10, "] while being destroyed. Ignoring."

    .line 1550
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    return-void

    .line 1555
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->LogerMessage(I)V

    .line 1558
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 1546
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1560
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1562
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-ne p1, v8, :cond_1

    .line 1564
    const-string/jumbo v8, "handle EVENT_POLL_CALLS_RESULT: set needsPoll=F"

    .line 1563
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1565
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    .line 1566
    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 1567
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1572
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1573
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    .line 1575
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    if-eqz v8, :cond_1

    .line 1576
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    goto :goto_0

    .line 1583
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1584
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_4

    .line 1585
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->isWaiting()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1587
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iput v12, v8, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 1588
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v8, v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    .line 1589
    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1590
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 1591
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1593
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->resumeBackgroundAfterDialFailed()V

    .line 1594
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->reset()V

    .line 1597
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1604
    :cond_3
    :goto_1
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHasPendingSwapRequest:Z

    .line 1605
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto :goto_0

    .line 1599
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->isWaiting()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1600
    const-string/jumbo v8, "GsmCallTracker"

    const-string/jumbo v9, "Switch success, and then dial"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mWaitingForHoldRequest:Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->-wrap0(Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;)Z

    goto :goto_1

    .line 1611
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1612
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_5

    .line 1614
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestUpdate()V

    .line 1616
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1618
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1623
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    const/4 v7, 0x0

    .line 1624
    .local v7, "vendorCause":Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1626
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    .line 1628
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_8

    .line 1631
    const/16 v1, 0x10

    .line 1632
    .local v1, "causeCode":I
    const-string/jumbo v8, "GsmCallTracker"

    .line 1633
    const-string/jumbo v9, "Exception during getLastCallFailCause, assuming normal disconnect"

    .line 1632
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    .end local v7    # "vendorCause":Ljava/lang/String;
    :goto_2
    const/16 v8, 0x22

    if-eq v1, v8, :cond_6

    .line 1641
    const/16 v8, 0x29

    if-ne v1, v8, :cond_9

    .line 1647
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    .line 1648
    .local v5, "loc":Landroid/telephony/gsm/GsmCellLocation;
    new-array v9, v12, [Ljava/lang/Object;

    .line 1649
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v11

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v8

    :goto_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v9, v10

    .line 1651
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v9, v10

    .line 1648
    const v8, 0xc3ba

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1655
    .end local v5    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_7
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "s":I
    :goto_5
    if-ge v4, v6, :cond_b

    .line 1658
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1660
    .local v2, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v2, v1, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->onRemoteDisconnect(ILjava/lang/String;)V

    .line 1656
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1635
    .end local v1    # "causeCode":I
    .end local v2    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v4    # "i":I
    .end local v6    # "s":I
    .restart local v7    # "vendorCause":Ljava/lang/String;
    :cond_8
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/LastCallFailCause;

    .line 1636
    .local v3, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v1, v3, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 1637
    .restart local v1    # "causeCode":I
    iget-object v7, v3, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .local v7, "vendorCause":Ljava/lang/String;
    goto :goto_2

    .line 1642
    .end local v3    # "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    .end local v7    # "vendorCause":Ljava/lang/String;
    :cond_9
    const/16 v8, 0x2a

    if-eq v1, v8, :cond_6

    .line 1643
    const/16 v8, 0x2c

    if-eq v1, v8, :cond_6

    .line 1644
    const/16 v8, 0x31

    if-eq v1, v8, :cond_6

    .line 1645
    const/16 v8, 0x3a

    if-eq v1, v8, :cond_6

    .line 1646
    const v8, 0xffff

    if-ne v1, v8, :cond_7

    goto :goto_3

    .line 1649
    .restart local v5    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_a
    const/4 v8, -0x1

    goto :goto_4

    .line 1663
    .end local v5    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v4    # "i":I
    .restart local v6    # "s":I
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1665
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1666
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1671
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "causeCode":I
    .end local v4    # "i":I
    .end local v6    # "s":I
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    .line 1675
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioAvailable()V

    goto/16 :goto_0

    .line 1679
    :pswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 1684
    :pswitch_9
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestDec()V

    .line 1685
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1689
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1690
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_c

    .line 1691
    const-string/jumbo v8, "dial call failed!!"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1692
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestUpdate()V

    .line 1694
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1698
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 1702
    :pswitch_c
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->CallIndicationProcess(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1729
    :pswitch_d
    const-string/jumbo v8, "Receives EVENT_ECONF_SRVCC_INDICATION"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1730
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1731
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    .line 1739
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedWaitImsEConfSrvcc:Z

    .line 1740
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    .line 1558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method protected declared-synchronized handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 34
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    monitor-enter p0

    .line 841
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-nez v29, :cond_2

    .line 842
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/util/List;

    .line 859
    .local v27, "polledCalls":Ljava/util/List;
    :goto_0
    const/16 v24, 0x0

    .line 860
    .local v24, "newRinging":Lcom/android/internal/telephony/Connection;
    const/16 v25, 0x0

    .line 861
    .local v25, "newUnknown":Lcom/android/internal/telephony/Connection;
    const/16 v18, 0x0

    .line 863
    .local v18, "hasNonHangupStateChanged":Z
    const/16 v17, 0x0

    .line 864
    .local v17, "hasAnyCallDisconnected":Z
    const/16 v23, 0x0

    .line 865
    .local v23, "needsPollDelay":Z
    const/16 v28, 0x0

    .line 867
    .local v28, "unknownConnectionAppeared":Z
    const/16 v22, 0x0

    .local v22, "i":I
    const/4 v9, 0x0

    .local v9, "curDC":I
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v11

    .line 868
    .end local v18    # "hasNonHangupStateChanged":Z
    .end local v24    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v25    # "newUnknown":Lcom/android/internal/telephony/Connection;
    .local v11, "dcSize":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    .line 867
    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_18

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v8, v29, v22

    .line 870
    .local v8, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    const/4 v10, 0x0

    .line 873
    .local v10, "dc":Lcom/android/internal/telephony/DriverCall;
    if-ge v9, v11, :cond_0

    .line 874
    move-object/from16 v0, v27

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "dc":Lcom/android/internal/telephony/DriverCall;
    check-cast v10, Lcom/android/internal/telephony/DriverCall;

    .line 876
    .local v10, "dc":Lcom/android/internal/telephony/DriverCall;
    iget v0, v10, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v29, v0

    add-int/lit8 v30, v22, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 877
    add-int/lit8 v9, v9, 0x1

    .line 883
    .end local v10    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_0
    :goto_2
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "poll: conn[i="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "]="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 884
    const-string/jumbo v30, ", dc="

    .line 883
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 886
    if-nez v8, :cond_f

    if-eqz v10, :cond_f

    .line 888
    const-string/jumbo v29, "case 1 : new Call appear"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 892
    const/16 v29, 0x1

    move/from16 v0, v29

    iput v0, v10, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    if-eqz v29, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 899
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "poll: pendingMO="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 903
    const-string/jumbo v29, "ro.mtk_vt3g324m_support"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    iget-boolean v0, v10, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-object/from16 v29, v0

    add-int/lit8 v30, v22, 0x1

    invoke-virtual/range {v29 .. v30}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->setId(I)V

    .line 911
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v30, v0

    aput-object v30, v29, v22

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    move/from16 v0, v22

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 914
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 917
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    .line 918
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    :try_start_1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 920
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v29, v29, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit p0

    .line 929
    return-void

    .line 843
    .end local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v9    # "curDC":I
    .end local v11    # "dcSize":I
    .end local v17    # "hasAnyCallDisconnected":Z
    .end local v22    # "i":I
    .end local v23    # "needsPollDelay":Z
    .end local v27    # "polledCalls":Ljava/util/List;
    .end local v28    # "unknownConnectionAppeared":Z
    :cond_2
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 846
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .restart local v27    # "polledCalls":Ljava/util/List;
    goto/16 :goto_0

    .line 847
    .end local v27    # "polledCalls":Ljava/util/List;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedWaitImsEConfSrvcc:Z

    move/from16 v29, v0

    if-eqz v29, :cond_4

    .line 849
    const-string/jumbo v29, "SRVCC: +ECONFSRVCC is still not arrival, skip this poll call."

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 850
    return-void

    .line 855
    :cond_4
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 856
    return-void

    .line 879
    .restart local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v9    # "curDC":I
    .restart local v10    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v11    # "dcSize":I
    .restart local v17    # "hasAnyCallDisconnected":Z
    .restart local v22    # "i":I
    .restart local v23    # "needsPollDelay":Z
    .restart local v27    # "polledCalls":Ljava/util/List;
    .restart local v28    # "unknownConnectionAppeared":Z
    :cond_5
    const/4 v10, 0x0

    .local v10, "dc":Lcom/android/internal/telephony/DriverCall;
    goto/16 :goto_2

    .line 923
    .end local v10    # "dc":Lcom/android/internal/telephony/DriverCall;
    :catch_0
    move-exception v14

    .line 924
    .local v14, "ex":Lcom/android/internal/telephony/CallStateException;
    :try_start_4
    const-string/jumbo v29, "GsmCallTracker"

    const-string/jumbo v30, "unexpected error on hangup"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .end local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v9    # "curDC":I
    .end local v11    # "dcSize":I
    .end local v14    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v17    # "hasAnyCallDisconnected":Z
    .end local v22    # "i":I
    .end local v23    # "needsPollDelay":Z
    .end local v27    # "polledCalls":Ljava/util/List;
    .end local v28    # "unknownConnectionAppeared":Z
    :catchall_0
    move-exception v29

    monitor-exit p0

    throw v29

    .line 935
    .restart local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v9    # "curDC":I
    .restart local v11    # "dcSize":I
    .restart local v17    # "hasAnyCallDisconnected":Z
    .restart local v22    # "i":I
    .restart local v23    # "needsPollDelay":Z
    .restart local v27    # "polledCalls":Ljava/util/List;
    .restart local v28    # "unknownConnectionAppeared":Z
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 940
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, p0

    move/from16 v3, v22

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v30, v29, v22

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v30, v0

    aget-object v30, v30, v22

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->DmCheckIfCallCanComing(Lcom/android/internal/telephony/gsm/GsmConnection;)Z

    move-result v7

    .line 958
    .local v7, "checkFlag":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v30, v0

    aget-object v30, v30, v22

    move-object/from16 v0, v29

    move/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->setForwardingAddressToConnection(ILcom/android/internal/telephony/Connection;)V

    .line 961
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    move-result-object v19

    .line 962
    .local v19, "hoConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v7, :cond_c

    if-eqz v19, :cond_c

    .line 972
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->isMultipartyBeforeHandover()Z

    move-result v29

    if-eqz v29, :cond_b

    .line 973
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->isConfHostBeforeHandover()Z

    move-result v29

    .line 972
    if-eqz v29, :cond_b

    .line 974
    const-string/jumbo v29, "GsmCallTracker"

    const-string/jumbo v30, "SRVCC: goes to conference case."

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v29, v29, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v30, v0

    aget-object v30, v30, v22

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    .end local v7    # "checkFlag":Z
    .end local v19    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_8
    :goto_5
    const/16 v18, 0x1

    .line 868
    :cond_9
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 936
    :cond_a
    const-string/jumbo v29, "MO/MT conflict! MO should be hangup by MD"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 978
    .restart local v7    # "checkFlag":Z
    .restart local v19    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_b
    const-string/jumbo v29, "GsmCallTracker"

    const-string/jumbo v30, "SRVCC: goes to normal call case."

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v29, v29, v22

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHandoverConnections:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v30, v0

    aget-object v30, v30, v22

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    goto :goto_5

    .line 984
    :cond_c
    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v29, v29, v22

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v24, v29, v22

    .local v24, "newRinging":Lcom/android/internal/telephony/Connection;
    goto :goto_5

    .line 986
    .end local v24    # "newRinging":Lcom/android/internal/telephony/Connection;
    :cond_d
    if-eqz v7, :cond_8

    .line 992
    const-string/jumbo v29, "GsmCallTracker"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Phantom call appeared "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v0, v10, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_e

    .line 998
    iget-object v0, v10, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_e

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v29, v29, v22

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GsmConnection;->onConnectedInOrOut()V

    .line 1000
    iget-object v0, v10, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v29, v29, v22

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    .line 1006
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v25, v29, v22

    .line 1008
    .local v25, "newUnknown":Lcom/android/internal/telephony/Connection;
    const/16 v28, 0x1

    goto/16 :goto_5

    .line 1013
    .end local v7    # "checkFlag":Z
    .end local v19    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .end local v25    # "newUnknown":Lcom/android/internal/telephony/Connection;
    :cond_f
    if-eqz v8, :cond_13

    if-nez v10, :cond_13

    .line 1016
    const-string/jumbo v29, "case 2 : old Call disappear"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v29

    if-nez v29, :cond_11

    .line 1020
    :cond_10
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v29

    .line 1019
    if-eqz v29, :cond_12

    .line 1021
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v29

    sget-object v30, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 1027
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v30, v29, v22

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->CallIndicationEnd()V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->clearForwardingAddressVariables(I)V

    goto/16 :goto_6

    .line 1042
    :cond_13
    if-eqz v8, :cond_14

    if-eqz v10, :cond_14

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 1064
    :cond_14
    if-eqz v8, :cond_9

    if-eqz v10, :cond_9

    .line 1067
    const-string/jumbo v29, "case 4 : old Call update"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->getNumberPresentation()I

    move-result v29

    move/from16 v0, v29

    iput v0, v10, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1076
    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v6

    .line 1077
    .local v6, "changed":Z
    if-nez v18, :cond_17

    move/from16 v18, v6

    .local v18, "hasNonHangupStateChanged":Z
    goto/16 :goto_6

    .line 1045
    .end local v6    # "changed":Z
    .end local v18    # "hasNonHangupStateChanged":Z
    :cond_15
    const-string/jumbo v29, "case 3 : old Call replaced"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    const/16 v29, 0x1

    move/from16 v0, v29

    iput v0, v10, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, p0

    move/from16 v3, v22

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v30, v29, v22

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v29, v29, v22

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_16

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v24, v29, v22

    .line 1063
    :cond_16
    const/16 v18, 0x1

    .line 1042
    .local v18, "hasNonHangupStateChanged":Z
    goto/16 :goto_6

    .line 1077
    .end local v18    # "hasNonHangupStateChanged":Z
    .restart local v6    # "changed":Z
    :cond_17
    const/16 v18, 0x1

    .restart local v18    # "hasNonHangupStateChanged":Z
    goto/16 :goto_6

    .line 1103
    .end local v6    # "changed":Z
    .end local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v18    # "hasNonHangupStateChanged":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    if-eqz v29, :cond_19

    .line 1104
    const-string/jumbo v29, "GsmCallTracker"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Pending MO dropped before poll fg state:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v31

    .line 1104
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1109
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 1112
    :cond_19
    if-eqz v24, :cond_1a

    .line 1113
    const-string/jumbo v29, "notifyNewRingingConnection"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1118
    const-string/jumbo v29, "ro.mtk_vt3g324m_support"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 1119
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 1120
    const/16 v29, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->setVideoState(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1122
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v30, v0

    .line 1123
    new-instance v31, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-object/from16 v0, v24

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v29

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;-><init>(I)V

    .line 1122
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    .line 1124
    const-string/jumbo v29, "GsmCallTracker"

    const-string/jumbo v30, "handlePollCalls new GsmVTProvider"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->getInterface()Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    move-result-object v15

    .line 1127
    .local v15, "gsmVideoCallProvider":Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    if-eqz v15, :cond_1a

    .line 1129
    new-instance v16, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;-><init>(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;)V

    .line 1130
    .local v16, "gsmVideoCallProviderWrapper":Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
    const-string/jumbo v29, "GsmCallTracker"

    const-string/jumbo v30, "handlePollCalls new GsmVideoCallProviderWrapper"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    :try_end_6
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1148
    .end local v15    # "gsmVideoCallProvider":Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    .end local v16    # "gsmVideoCallProviderWrapper":Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
    :cond_1a
    :goto_7
    :try_start_7
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "dropped during poll size = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v22, v29, -0x1

    .end local v17    # "hasAnyCallDisconnected":Z
    :goto_8
    if-ltz v22, :cond_20

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1153
    .restart local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 1154
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 1158
    :cond_1b
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v29

    if-eqz v29, :cond_1e

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmp-long v29, v30, v32

    if-nez v29, :cond_1e

    .line 1161
    iget v0, v8, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1d

    .line 1162
    const/16 v5, 0x10

    .line 1168
    .local v5, "cause":I
    :goto_9
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "missed/rejected call, conn.cause="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v8, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1169
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setting cause to "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1172
    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    move-result v29

    or-int v17, v17, v29

    .line 1149
    .end local v5    # "cause":I
    :cond_1c
    :goto_a
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_8

    .line 1136
    .end local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v17    # "hasAnyCallDisconnected":Z
    :catch_1
    move-exception v12

    .line 1137
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v29, "GsmCallTracker"

    const-string/jumbo v30, "handlePollCalls new GsmVideoCallProviderWrapper failed"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1134
    .end local v12    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v13

    .line 1135
    .local v13, "e":Ljava/lang/ClassCastException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "cast to GsmConnection fail for newRinging "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1164
    .end local v13    # "e":Ljava/lang/ClassCastException;
    .end local v17    # "hasAnyCallDisconnected":Z
    .restart local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1d
    const/4 v5, 0x1

    .restart local v5    # "cause":I
    goto :goto_9

    .line 1173
    .end local v5    # "cause":I
    :cond_1e
    iget v0, v8, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1f

    .line 1174
    iget v0, v8, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move/from16 v29, v0

    const/16 v30, 0x7

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1c

    .line 1176
    :cond_1f
    const-string/jumbo v29, "local hangup or invalid number"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1178
    iget v0, v8, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    move-result v29

    or-int v17, v17, v29

    .local v17, "hasAnyCallDisconnected":Z
    goto :goto_a

    .line 1184
    .end local v8    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v17    # "hasAnyCallDisconnected":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v29, v0

    if-eqz v29, :cond_21

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1186
    .local v21, "hostConn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_22

    .line 1190
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->restoreConferenceParticipantAddress()Z

    .line 1192
    const-string/jumbo v29, "SRVCC: notify new participant connections"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyConferenceConnectionsConfigured(Ljava/util/ArrayList;)V

    .line 1210
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    .line 1211
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    .line 1212
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEconfSrvccConnectionIds:[I

    .line 1217
    .end local v21    # "hostConn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHandoverConnections:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "hoConnection$iterator":Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_24

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/Connection;

    .line 1218
    .restart local v19    # "hoConnection":Lcom/android/internal/telephony/Connection;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "handlePollCalls - disconnect hoConn= "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1219
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-object/from16 v29, v0

    const/16 v30, -0x1

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHandoverConnections:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1194
    .end local v19    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .end local v20    # "hoConnection$iterator":Ljava/util/Iterator;
    .restart local v21    # "hostConn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_23

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1201
    .local v26, "participant":Lcom/android/internal/telephony/gsm/GsmConnection;
    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConferenceParticipantAddress(I)Ljava/lang/String;

    move-result-object v4

    .line 1202
    .local v4, "address":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "SRVCC: restore participant connection with address: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1203
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->updateConferenceParticipantAddress(Ljava/lang/String;)V

    .line 1205
    const-string/jumbo v29, "SRVCC: only one connection, consider it as a normal call SRVCC"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_b

    .line 1208
    .end local v4    # "address":Ljava/lang/String;
    .end local v26    # "participant":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_23
    const-string/jumbo v29, "GsmCallTracker"

    const-string/jumbo v30, "SRVCC: abnormal case, no participant connections."

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1224
    .end local v21    # "hostConn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .restart local v20    # "hoConnection$iterator":Ljava/util/Iterator;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-lez v29, :cond_25

    .line 1226
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2d

    .line 1232
    :cond_25
    :goto_d
    if-eqz v23, :cond_26

    .line 1233
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V

    .line 1241
    :cond_26
    if-nez v24, :cond_27

    if-nez v18, :cond_27

    if-eqz v17, :cond_28

    .line 1242
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 1245
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1247
    if-eqz v28, :cond_29

    .line 1248
    const-string/jumbo v29, "notifyUnknownConnection"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1252
    :cond_29
    if-nez v18, :cond_2a

    if-eqz v24, :cond_2e

    .line 1254
    :cond_2a
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHasPendingSwapRequest:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2f

    .line 1261
    :cond_2b
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->getCurrentTotalConnections()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2c

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v29

    sget-object v30, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_2c

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 1267
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    .line 838
    return-void

    .line 1228
    :cond_2d
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v29, v0

    .line 1229
    const/16 v30, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v30

    .line 1228
    invoke-interface/range {v29 .. v30}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    goto :goto_d

    .line 1252
    :cond_2e
    if-eqz v17, :cond_2b

    goto :goto_e

    .line 1256
    :cond_2f
    const-string/jumbo v29, "notifyPreciseCallStateChanged"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_f

    .line 1133
    .end local v20    # "hoConnection$iterator":Ljava/util/Iterator;
    .local v17, "hasAnyCallDisconnected":Z
    :catch_3
    move-exception v14

    .restart local v14    # "ex":Lcom/android/internal/telephony/CallStateException;
    goto/16 :goto_7
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1382
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1383
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v3, "no connections in call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1387
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1388
    const-string/jumbo v2, "GsmCallTracker"

    const-string/jumbo v3, "hangup(GsmCall) hasPendingHangupRequest = true"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseAllConnection(Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1390
    return-void

    .line 1395
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v2, :cond_2

    .line 1397
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestInc()V

    .line 1398
    const-string/jumbo v2, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 1455
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1456
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1381
    return-void

    .line 1401
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v2, :cond_6

    .line 1403
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestInc()V

    .line 1405
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1407
    const-string/jumbo v2, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto :goto_0

    .line 1423
    :cond_3
    const-string/jumbo v2, "(foregnd) hangup active"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1426
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1427
    .local v1, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v2

    invoke-static {v2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1429
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1434
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_0

    .line 1430
    :cond_5
    const-string/jumbo v2, "(foregnd) hangup active Emergency call by connection index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto :goto_0

    .line 1437
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v2, :cond_8

    .line 1438
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1440
    const-string/jumbo v2, "hangup all conns in background call"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_0

    .line 1445
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestInc()V

    .line 1446
    const-string/jumbo v2, "(backgnd) hangup waiting/background"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1448
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto/16 :goto_0

    .line 1451
    :cond_8
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GsmCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1452
    const-string/jumbo v4, "does not belong to GsmCallTracker "

    .line 1451
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1314
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 1315
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1316
    const-string/jumbo v3, "does not belong to GsmCallTracker "

    .line 1315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1319
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-ne p1, v1, :cond_1

    .line 1323
    const-string/jumbo v1, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1324
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 1326
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestReset()V

    .line 1344
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 1313
    return-void

    .line 1331
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    const/16 v3, 0x15

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1333
    :catch_0
    move-exception v0

    .line 1337
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->PendingHangupRequestReset()V

    .line 1339
    const-string/jumbo v1, "GsmCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GsmCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hangupAll()V
    .locals 2

    .prologue
    .line 1785
    const-string/jumbo v0, "hangupAll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1786
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupAll(Landroid/os/Message;)V

    .line 1788
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1791
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1792
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1794
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1795
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1784
    :cond_2
    return-void
.end method

.method hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 7
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    .line 1504
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1505
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1506
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1507
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1505
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1509
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1    # "count":I
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 1510
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v4, "GsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1477
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1478
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1479
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1482
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    .line 1483
    const-string/jumbo v3, "hangupConnectionByIndex: hangup a DISCONNECTED conn"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1478
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1487
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1488
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1489
    return-void

    .line 1493
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupBgConnectionByIndex(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1494
    return-void

    .line 1495
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupRingingConnectionByIndex(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1496
    return-void

    .line 1499
    :cond_4
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v4, "no gsm index found"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    .line 1469
    const-string/jumbo v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1471
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1468
    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    .prologue
    .line 1461
    const-string/jumbo v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1460
    return-void
.end method

.method public isRejectedByMoms()Z
    .locals 1

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MobileManagermentGetIsBlocking()Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1751
    const-string/jumbo v0, "GsmCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[GsmCallTracker][Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    return-void
.end method

.method protected obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected obtainCompleteMessage(I)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 774
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    .line 775
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "obtainCompleteMessage: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 779
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    .line 778
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 779
    const-string/jumbo v1, ", needsPoll="

    .line 778
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 779
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    .line 778
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 340
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 341
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 339
    return-void
.end method

.method public registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 329
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 330
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 328
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 318
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 319
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 317
    return-void
.end method

.method rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 644
    return-void

    .line 650
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1349
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 1350
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1351
    const-string/jumbo v3, "does not belong to GsmCallTracker "

    .line 1350
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1354
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    .line 1355
    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1354
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    :goto_0
    return-void

    .line 1356
    :catch_0
    move-exception v0

    .line 1359
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "GsmCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GsmCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIncomingCallIndicationResponse(Z)V
    .locals 1
    .param p1, "accept"    # Z

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHelper:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->CallIndicationResponse(Z)V

    .line 1799
    return-void
.end method

.method setMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    .line 1368
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    .line 1369
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 1367
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 658
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHasPendingSwapRequest:Z

    if-nez v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 663
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 662
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHasPendingSwapRequest:Z

    .line 655
    :cond_1
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 345
    return-void
.end method

.method public unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 333
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 323
    return-void
.end method

.method declared-synchronized vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 8
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 386
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 388
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v4

    if-nez v4, :cond_0

    .line 389
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v5, "cannot dial in current state"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 392
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canVtDial()Z

    move-result v4

    if-nez v4, :cond_1

    .line 393
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v5, "cannot vtDial under non 3/4G network"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 396
    :cond_1
    move-object v3, p1

    .line 397
    .local v3, "origNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 401
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    .line 403
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v5, "cannot vtDial since non-IDLE call already exists"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 406
    :cond_2
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 407
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 406
    invoke-direct {v4, v5, v6, p0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 408
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 409
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsVideo:Z

    .line 411
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    .line 415
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v5, 0x7

    iput v5, v4, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 419
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    .line 446
    :cond_4
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNumberConverted:Z

    if-eqz v4, :cond_5

    .line 447
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->setConverted(Ljava/lang/String;)V

    .line 448
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNumberConverted:Z

    .line 451
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 452
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 454
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4

    .line 412
    :cond_6
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4e

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_3

    .line 422
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 424
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 425
    const/16 v6, 0x16

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 424
    invoke-interface {v4, v5, p2, p3, v6}, Lcom/android/internal/telephony/CommandsInterface;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 427
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->setVideoState(I)V

    .line 430
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    new-instance v5, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    invoke-direct {v5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;-><init>()V

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    .line 431
    const-string/jumbo v4, "GsmCallTracker"

    const-string/jumbo v5, "vtDial new GsmVTProvider"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 434
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->getInterface()Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    move-result-object v1

    .line 435
    .local v1, "gsmVideoCallProvider":Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    if-eqz v1, :cond_4

    .line 437
    new-instance v2, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-direct {v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;-><init>(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;)V

    .line 438
    .local v2, "gsmVideoCallProviderWrapper":Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
    const-string/jumbo v4, "GsmCallTracker"

    const-string/jumbo v5, "vtDial new GsmVideoCallProviderWrapper"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 441
    .end local v1    # "gsmVideoCallProvider":Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    .end local v2    # "gsmVideoCallProviderWrapper":Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v4, "GsmCallTracker"

    const-string/jumbo v5, "vtDial new GsmVideoCallProviderWrapper failed"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 459
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method
