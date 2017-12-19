.class Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
.super Lcom/android/internal/telephony/sip/SipConnectionBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/sip/SipPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;
    }
.end annotation


# static fields
.field private static final SCN_DBG:Z = true

.field private static final SCN_TAG:Ljava/lang/String; = "SipConnection"


# instance fields
.field private mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

.field private mIncoming:Z

.field private mOriginalNumber:Ljava/lang/String;

.field private mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private mPeer:Landroid/net/sip/SipProfile;

.field private mSipAudioCall:Landroid/net/sip/SipAudioCall;

.field private mState:Lcom/android/internal/telephony/Call$State;

.field final synthetic this$0:Lcom/android/internal/telephony/sip/SipPhone;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipAudioCall;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/sip/SipPhone;
    .param p2, "owner"    # Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .param p3, "callee"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 927
    invoke-static {p1, p3}, Lcom/android/internal/telephony/sip/SipPhone;->-wrap1(Lcom/android/internal/telephony/sip/SipPhone;Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/sip/SipPhone;
    .param p2, "owner"    # Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .param p3, "callee"    # Landroid/net/sip/SipProfile;
    .param p4, "originalNumber"    # Ljava/lang/String;

    .prologue
    .line 918
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    .line 920
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/sip/SipConnectionBase;-><init>(Ljava/lang/String;)V

    .line 826
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    .line 828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mIncoming:Z

    .line 831
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;-><init>(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Lcom/android/internal/telephony/sip/SipPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    .line 921
    iput-object p2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 922
    iput-object p3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    .line 923
    iput-object p4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOriginalNumber:Ljava/lang/String;

    .line 919
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1141
    const-string/jumbo v0, "SipConnection"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return-void
.end method


# virtual methods
.method acceptCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 951
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/net/sip/SipAudioCall;->answerCall(I)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    return-void

    .line 952
    :catch_0
    move-exception v0

    .line 953
    .local v0, "e":Landroid/net/sip/SipException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "acceptCall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method changeOwner(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .prologue
    .line 958
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 957
    return-void
.end method

.method dial()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 975
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->-get5(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/sip/SipPhone;->-get3(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    const/4 v3, 0x0

    .line 977
    const/16 v4, 0xf

    .line 976
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/sip/SipManager;->makeAudioCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    .line 978
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    .line 974
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOriginalNumber:Ljava/lang/String;

    return-object v0
.end method

.method getAudioGroup()Landroid/net/rtp/AudioGroup;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 962
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    if-nez v0, :cond_0

    return-object v1

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getCall()Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 932
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "displayName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->isMuted()Z

    move-result v0

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 939
    const/4 v0, 0x1

    return v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method getSipAudioCall()Landroid/net/sip/SipAudioCall;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 969
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    if-nez v0, :cond_0

    return-object v1

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 1147
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x3

    .line 1079
    const-class v5, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v5

    .line 1080
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangup: conn="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    invoke-virtual {v6}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1081
    const-string/jumbo v6, ": "

    .line 1080
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1081
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    .line 1080
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1081
    const-string/jumbo v6, ": on phone "

    .line 1080
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1082
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    .line 1080
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    .line 1083
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v5

    return-void

    .line 1085
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    .line 1086
    .local v1, "sipAudioCall":Landroid/net/sip/SipAudioCall;
    if-eqz v1, :cond_1

    .line 1087
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    .line 1088
    invoke-virtual {v1}, Landroid/net/sip/SipAudioCall;->endCall()V
    :try_end_1
    .catch Landroid/net/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1093
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_3

    :goto_0
    move v3, v4

    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    .line 1078
    return-void

    .line 1094
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v6, v7, :cond_2

    goto :goto_0

    .line 1090
    .end local v1    # "sipAudioCall":Landroid/net/sip/SipAudioCall;
    :catch_0
    move-exception v0

    .line 1091
    .local v0, "e":Landroid/net/sip/SipException;
    :try_start_4
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hangup(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1092
    .end local v0    # "e":Landroid/net/sip/SipException;
    :catchall_0
    move-exception v2

    .line 1093
    :try_start_5
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    :goto_1
    move v3, v4

    :cond_4
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(I)V

    .line 1092
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1079
    :catchall_1
    move-exception v2

    monitor-exit v5

    throw v2

    .line 1094
    :cond_5
    :try_start_6
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne v7, v8, :cond_4

    goto :goto_1
.end method

.method hold()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 982
    const-class v3, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v3

    .line 985
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    if-nez v2, :cond_1

    .line 986
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 987
    .local v0, "currentState":Lcom/android/internal/telephony/Call$State;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SipConnection.hold():mSipAudioCall is null, state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    .line 988
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    monitor-exit v3

    .line 990
    return-void

    .line 992
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v4, "unhold(): mSipAudioCall is null"

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 982
    .end local v0    # "currentState":Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 996
    :cond_1
    :try_start_2
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 998
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/net/sip/SipAudioCall;->holdCall(I)V
    :try_end_3
    .catch Landroid/net/sip/SipException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 981
    return-void

    .line 999
    :catch_0
    move-exception v1

    .line 1000
    .local v1, "e":Landroid/net/sip/SipException;
    :try_start_4
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hold(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method initIncomingCall(Landroid/net/sip/SipAudioCall;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .param p1, "sipAudioCall"    # Landroid/net/sip/SipAudioCall;
    .param p2, "newState"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 943
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 944
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    .line 945
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    invoke-virtual {p1, v0}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    .line 946
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mIncoming:Z

    .line 942
    return-void
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 1056
    iget-boolean v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mIncoming:Z

    return v0
.end method

.method public separate()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1103
    const-string/jumbo v3, "separate"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    .line 1104
    const-class v4, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v4

    .line 1105
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    if-ne v3, v5, :cond_0

    .line 1106
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 1108
    .local v1, "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v5, :cond_1

    .line 1109
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    .line 1110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cannot put conn back to a call in non-idle state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1111
    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 1110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1109
    invoke-direct {v3, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    .end local v1    # "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1107
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .restart local v1    # "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    goto :goto_0

    .line 1113
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "separate: conn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1114
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    invoke-virtual {v5}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v5

    .line 1113
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1114
    const-string/jumbo v5, " from "

    .line 1113
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1114
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 1113
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1114
    const-string/jumbo v5, " back to "

    .line 1113
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    .line 1119
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/sip/SipPhone;->-get2(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->isInCallOrIdle()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/sip/SipPhone;->-get0(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->isInCallOrIdle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1124
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1125
    .local v2, "originalPhone":Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->-wrap0(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 1126
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    invoke-static {v1, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->-wrap1(Lcom/android/internal/telephony/sip/SipPhone$SipCall;Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 1127
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v3, v0}, Landroid/net/sip/SipAudioCall;->setAudioGroup(Landroid/net/rtp/AudioGroup;)V

    .line 1131
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1134
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .end local v1    # "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 1135
    .restart local v1    # "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v3}, Landroid/net/sip/SipAudioCall;->startAudio()V

    .line 1136
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->onConnectionStateChanged(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 1102
    return-void

    .line 1120
    .end local v0    # "audioGroup":Landroid/net/rtp/AudioGroup;
    .end local v2    # "originalPhone":Lcom/android/internal/telephony/Phone;
    :cond_2
    :try_start_2
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v5, "wrong state to separate call"

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->isMuted()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState: prev muted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " new muted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    .line 1033
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->toggleMute()V

    .line 1030
    :cond_0
    return-void

    .line 1032
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_0

    return-void

    .line 1045
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipConnectionBase;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 1046
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    .line 1043
    return-void
.end method

.method unhold(Landroid/net/rtp/AudioGroup;)V
    .locals 6
    .param p1, "audioGroup"    # Landroid/net/rtp/AudioGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1006
    const-class v3, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v3

    .line 1009
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    if-nez v2, :cond_1

    .line 1010
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1011
    .local v0, "currentState":Lcom/android/internal/telephony/Call$State;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SipConnection.unhold():mSipAudioCall is null, state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    .line 1012
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    monitor-exit v3

    .line 1014
    return-void

    .line 1016
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v4, "unhold(): mSipAudioCall is null"

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1006
    .end local v0    # "currentState":Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1020
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v2, p1}, Landroid/net/sip/SipAudioCall;->setAudioGroup(Landroid/net/rtp/AudioGroup;)V

    .line 1021
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1023
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/net/sip/SipAudioCall;->continueCall(I)V
    :try_end_3
    .catch Landroid/net/sip/SipException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 1005
    return-void

    .line 1024
    :catch_0
    move-exception v1

    .line 1025
    .local v1, "e":Landroid/net/sip/SipException;
    :try_start_4
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unhold(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
