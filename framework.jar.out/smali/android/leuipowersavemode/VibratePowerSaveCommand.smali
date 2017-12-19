.class public Landroid/leuipowersavemode/VibratePowerSaveCommand;
.super Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;
.source "VibratePowerSaveCommand.java"


# instance fields
.field private mDefaultVibrate:I

.field private mVibrateWhenRingBeforeState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/leuipowersavemode/VibratePowerSaveCommand;->mDefaultVibrate:I

    .line 12
    return-void
.end method

.method private getCurrentVibrateWhenRingState(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 46
    const-string/jumbo v2, "vibrate_when_ringing"

    iget v3, p0, Landroid/leuipowersavemode/VibratePowerSaveCommand;->mDefaultVibrate:I

    .line 45
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setVibrateEnabled(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isChecked"    # Z

    .prologue
    .line 50
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 51
    .local v1, "setValue":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 52
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 51
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 53
    .local v0, "setState":Z
    if-eqz v0, :cond_1

    const-string/jumbo v2, "set Vibrate success!!!"

    :goto_1
    return-object v2

    .line 50
    .end local v0    # "setState":Z
    .end local v1    # "setValue":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "setValue":I
    goto :goto_0

    .line 53
    .restart local v0    # "setState":Z
    :cond_1
    const-string/jumbo v2, "set Vibrate error!!!"

    goto :goto_1
.end method


# virtual methods
.method public disabled(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->disabled(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/VibratePowerSaveCommand;->getCurrentVibrateWhenRingState(Landroid/content/Context;)Z

    move-result v0

    .line 32
    .local v0, "currentBibrateState":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disabled VibrateWhenRing Command command ,mVibrateWhenRingBeforeState is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 33
    iget-boolean v2, p0, Landroid/leuipowersavemode/VibratePowerSaveCommand;->mVibrateWhenRingBeforeState:Z

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34
    const-string/jumbo v2, ",currentBibrateState is:"

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/VibratePowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 35
    iget-boolean v1, p0, Landroid/leuipowersavemode/VibratePowerSaveCommand;->mVibrateWhenRingBeforeState:Z

    if-eq v1, v0, :cond_1

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/leuipowersavemode/VibratePowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_0

    .line 37
    iget-boolean v1, p0, Landroid/leuipowersavemode/VibratePowerSaveCommand;->mVibrateWhenRingBeforeState:Z

    .line 36
    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/leuipowersavemode/VibratePowerSaveCommand;->setVibrateEnabled(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/VibratePowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 41
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/leuipowersavemode/VibratePowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",Vibrate toString is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/leuipowersavemode/VibratePowerSaveCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/VibratePowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 28
    return-void

    .line 36
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 39
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/leuipowersavemode/VibratePowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "no action ,but success!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/VibratePowerSaveCommand;->mCommandString:Ljava/lang/String;

    goto :goto_1
.end method

.method public enabled(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->enabled(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/VibratePowerSaveCommand;->getCurrentVibrateWhenRingState(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/leuipowersavemode/VibratePowerSaveCommand;->mVibrateWhenRingBeforeState:Z

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 22
    const-string/jumbo v2, "vibrate_when_ringing"

    iget v3, p0, Landroid/leuipowersavemode/VibratePowerSaveCommand;->mDefaultVibrate:I

    .line 21
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 23
    .local v0, "isVibrateSetState":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Vibrate set false state is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 24
    const-string/jumbo v2, ",VibrateCommand toString is:"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 24
    invoke-virtual {p0}, Landroid/leuipowersavemode/VibratePowerSaveCommand;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/VibratePowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 17
    return-void
.end method
