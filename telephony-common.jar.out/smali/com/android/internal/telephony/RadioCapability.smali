.class public Lcom/android/internal/telephony/RadioCapability;
.super Ljava/lang/Object;
.source "RadioCapability.java"


# static fields
.field private static final RADIO_CAPABILITY_VERSION:I = 0x1

.field public static final RC_PHASE_APPLY:I = 0x2

.field public static final RC_PHASE_CONFIGURED:I = 0x0

.field public static final RC_PHASE_FINISH:I = 0x4

.field public static final RC_PHASE_START:I = 0x1

.field public static final RC_PHASE_UNSOL_RSP:I = 0x3

.field public static final RC_STATUS_FAIL:I = 0x2

.field public static final RC_STATUS_NONE:I = 0x0

.field public static final RC_STATUS_SUCCESS:I = 0x1


# instance fields
.field private mLogicalModemUuid:Ljava/lang/String;

.field private mPhase:I

.field private mPhoneId:I

.field private mRadioAccessFamily:I

.field private mSession:I

.field private mStatus:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;I)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # I
    .param p3, "phase"    # I
    .param p4, "radioAccessFamily"    # I
    .param p5, "logicalModemUuid"    # Ljava/lang/String;
    .param p6, "status"    # I

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Lcom/android/internal/telephony/RadioCapability;->mPhoneId:I

    .line 133
    iput p2, p0, Lcom/android/internal/telephony/RadioCapability;->mSession:I

    .line 134
    iput p3, p0, Lcom/android/internal/telephony/RadioCapability;->mPhase:I

    .line 135
    iput p4, p0, Lcom/android/internal/telephony/RadioCapability;->mRadioAccessFamily:I

    .line 136
    iput-object p5, p0, Lcom/android/internal/telephony/RadioCapability;->mLogicalModemUuid:Ljava/lang/String;

    .line 137
    iput p6, p0, Lcom/android/internal/telephony/RadioCapability;->mStatus:I

    .line 131
    return-void
.end method


# virtual methods
.method public getLogicalModemUuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    const-string/jumbo v0, "RadioCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLogicalModemUuid mPhoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RadioCapability;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " LogicalModemUuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/RadioCapability;->mLogicalModemUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/RadioCapability;->mLogicalModemUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/android/internal/telephony/RadioCapability;->mPhase:I

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/android/internal/telephony/RadioCapability;->mPhoneId:I

    return v0
.end method

.method public getRadioAccessFamily()I
    .locals 3

    .prologue
    .line 183
    const-string/jumbo v0, "RadioCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRadioAccessFamily mPhoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RadioCapability;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " RadioAccessFamily:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RadioCapability;->mRadioAccessFamily:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget v0, p0, Lcom/android/internal/telephony/RadioCapability;->mRadioAccessFamily:I

    return v0
.end method

.method public getSession()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/internal/telephony/RadioCapability;->mSession:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/android/internal/telephony/RadioCapability;->mStatus:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RadioCapability;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    const-string/jumbo v1, " mVersion="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getVersion()I

    move-result v1

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    const-string/jumbo v1, " mSession="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    const-string/jumbo v1, " mPhase="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    move-result v1

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    const-string/jumbo v1, " mRadioAccessFamily="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v1

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    const-string/jumbo v1, " mLogicModemId="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    const-string/jumbo v1, " mStatus="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result v1

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    const-string/jumbo v1, "}"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
