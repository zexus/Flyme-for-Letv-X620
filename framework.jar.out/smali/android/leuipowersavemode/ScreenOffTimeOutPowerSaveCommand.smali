.class public Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;
.super Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;
.source "ScreenOffTimeOutPowerSaveCommand.java"


# static fields
.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530


# instance fields
.field private mScreentTimeOutBeforeState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;-><init>()V

    return-void
.end method

.method private getCurrentScreenTimeOutState(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "screen_off_timeout"

    const/16 v2, 0x7530

    .line 50
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public disabled(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->disabled(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->getCurrentScreenTimeOutState(Landroid/content/Context;)I

    move-result v0

    .line 34
    .local v0, "currentScreenTimeOutState":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disabled ScreenTimeOut command ,mScreentTimeOutBeforeState is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 35
    iget v4, p0, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->mScreentTimeOutBeforeState:I

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 36
    const-string/jumbo v4, ",currentScreenTimeOutState is:"

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 37
    iget v3, p0, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->mScreentTimeOutBeforeState:I

    if-eq v3, v0, :cond_1

    .line 38
    iget v3, p0, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->mScreentTimeOutBeforeState:I

    sub-int/2addr v3, v0

    if-lez v3, :cond_0

    iget v2, p0, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->mScreentTimeOutBeforeState:I

    .line 40
    .local v2, "screenTimeOutMode":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 41
    const-string/jumbo v4, "screen_off_timeout"

    .line 40
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 42
    .local v1, "isScreenTimeOutSetState":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ScreenTimeOut set Mode is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 46
    .end local v1    # "isScreenTimeOutSetState":Z
    .end local v2    # "screenTimeOutMode":I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",ScreenTimeOutCommand object"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 30
    return-void

    .line 39
    :cond_0
    move v2, v0

    .restart local v2    # "screenTimeOutMode":I
    goto :goto_0

    .line 44
    .end local v2    # "screenTimeOutMode":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "no action ,but success!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->mCommandString:Ljava/lang/String;

    goto :goto_1
.end method

.method public enabled(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->enabled(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->getCurrentScreenTimeOutState(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->mScreentTimeOutBeforeState:I

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 22
    const-string/jumbo v2, "screen_off_timeout"

    const/16 v3, 0x3a98

    .line 21
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 23
    .local v0, "isScreenOffTimeOutSetState":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enabled ScreentTimeOut ScreenOffTimeOut set false state is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    const-string/jumbo v2, ",mScreentTimeOutBeforeState is:"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    iget v2, p0, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->mScreentTimeOutBeforeState:I

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    const-string/jumbo v2, ",ScreenTimeOutCommand object"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 17
    return-void
.end method
