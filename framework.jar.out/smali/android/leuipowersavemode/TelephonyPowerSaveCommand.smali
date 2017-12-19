.class public Landroid/leuipowersavemode/TelephonyPowerSaveCommand;
.super Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;
.source "TelephonyPowerSaveCommand.java"


# instance fields
.field private mTelephonyBeforeState:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;-><init>()V

    return-void
.end method

.method private getCurrentTelephonyState(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 55
    iget-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    return v0

    .line 58
    :cond_0
    iget-boolean v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyBeforeState:Z

    return v0
.end method

.method private getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 63
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 65
    :cond_0
    iget-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method public disabled(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->disabled(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 37
    iget-object v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 39
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->getCurrentTelephonyState(Landroid/content/Context;)Z

    move-result v0

    .line 40
    .local v0, "currentDataEnabledState":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disabled TelephonyCommand ,mTelephonyBeforeState is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    iget-boolean v2, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyBeforeState:Z

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    const-string/jumbo v2, ",currentDataEnabledState is:"

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 43
    iget-boolean v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyBeforeState:Z

    if-eq v1, v0, :cond_2

    .line 44
    iget-object v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-boolean v2, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyBeforeState:Z

    if-nez v2, :cond_1

    .end local v0    # "currentDataEnabledState":Z
    :goto_0
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 49
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",Telephony toString is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 34
    :cond_0
    return-void

    .line 44
    .restart local v0    # "currentDataEnabledState":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "no action ,but success!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    goto :goto_1
.end method

.method public enabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->enabled(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 22
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->getCurrentTelephonyState(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyBeforeState:Z

    .line 23
    iget-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 25
    const-string/jumbo v0, "enabled TelephonyCommand TelephonyManager set false"

    iput-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 29
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mTelephonyBeforeState is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyBeforeState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    const-string/jumbo v1, ",TelephonyCommand toString is:"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 18
    return-void

    .line 27
    :cond_0
    const-string/jumbo v0, "mTelephonyManager null!!!"

    iput-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    goto :goto_0
.end method
