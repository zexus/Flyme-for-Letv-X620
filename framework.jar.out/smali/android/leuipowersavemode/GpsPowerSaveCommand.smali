.class public Landroid/leuipowersavemode/GpsPowerSaveCommand;
.super Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;
.source "GpsPowerSaveCommand.java"


# instance fields
.field private mGpsBeforeState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;-><init>()V

    return-void
.end method

.method private getCurrentGpsState(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49
    const-string/jumbo v1, "location_mode"

    const/4 v2, 0x0

    .line 48
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public disabled(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->disabled(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/GpsPowerSaveCommand;->getCurrentGpsState(Landroid/content/Context;)I

    move-result v0

    .line 32
    .local v0, "currentGpsState":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disabled GpsCommand command ,mGpsBeforeState is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 33
    iget v4, p0, Landroid/leuipowersavemode/GpsPowerSaveCommand;->mGpsBeforeState:I

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 34
    const-string/jumbo v4, ",currentGpsState is:"

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/leuipowersavemode/GpsPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 35
    iget v3, p0, Landroid/leuipowersavemode/GpsPowerSaveCommand;->mGpsBeforeState:I

    if-eq v3, v0, :cond_1

    .line 36
    iget v3, p0, Landroid/leuipowersavemode/GpsPowerSaveCommand;->mGpsBeforeState:I

    sub-int/2addr v3, v0

    if-lez v3, :cond_0

    iget v1, p0, Landroid/leuipowersavemode/GpsPowerSaveCommand;->mGpsBeforeState:I

    .line 38
    .local v1, "gpsMode":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 39
    const-string/jumbo v4, "location_mode"

    .line 38
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 40
    .local v2, "isGpsSetState":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/leuipowersavemode/GpsPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "gps set Mode is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/leuipowersavemode/GpsPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 44
    .end local v1    # "gpsMode":I
    .end local v2    # "isGpsSetState":Z
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/leuipowersavemode/GpsPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",GpsCommand toString is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/leuipowersavemode/GpsPowerSaveCommand;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/leuipowersavemode/GpsPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 28
    return-void

    .line 37
    :cond_0
    move v1, v0

    .restart local v1    # "gpsMode":I
    goto :goto_0

    .line 42
    .end local v1    # "gpsMode":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/leuipowersavemode/GpsPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "no action ,but success!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/leuipowersavemode/GpsPowerSaveCommand;->mCommandString:Ljava/lang/String;

    goto :goto_1
.end method

.method public enabled(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->enabled(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/GpsPowerSaveCommand;->getCurrentGpsState(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Landroid/leuipowersavemode/GpsPowerSaveCommand;->mGpsBeforeState:I

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 21
    const-string/jumbo v2, "location_mode"

    const/4 v3, 0x0

    .line 20
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 22
    .local v0, "isGpsSetState":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enabled GpsCommand Gps set false state is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 23
    const-string/jumbo v2, ",mGpsBeforeState is:"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 23
    iget v2, p0, Landroid/leuipowersavemode/GpsPowerSaveCommand;->mGpsBeforeState:I

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 24
    const-string/jumbo v2, ",GpsCommand toString is:"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 24
    invoke-virtual {p0}, Landroid/leuipowersavemode/GpsPowerSaveCommand;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/GpsPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 16
    return-void
.end method
