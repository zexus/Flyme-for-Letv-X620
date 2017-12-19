.class public Landroid/leuipowersavemode/BluetoothPowerSaveCommand;
.super Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;
.source "BluetoothPowerSaveCommand.java"


# instance fields
.field private mBluetoothBeforeState:Z

.field private mSlBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;-><init>()V

    return-void
.end method

.method private getCurrentBtState(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mSlBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 55
    iget-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mSlBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mSlBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 57
    .local v0, "bluetoothState":I
    const-string/jumbo v1, "leuiDeepPowerSave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BluetoothCommand getCurrentBtState state is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 60
    .end local v0    # "bluetoothState":I
    :cond_1
    iget-boolean v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mBluetoothBeforeState:Z

    return v1
.end method

.method private setBluetoothEnabled(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isChecked"    # Z

    .prologue
    .line 64
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mSlBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 65
    if-eqz p2, :cond_0

    .line 66
    const-string/jumbo v1, "bluetooth"

    invoke-static {p1, v1}, Landroid/leuipowersavemode/CommandUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    :cond_0
    if-eqz p2, :cond_2

    .line 71
    iget-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mSlBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 75
    .local v0, "setState":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_3

    const-string/jumbo v1, "set Bluetooth true!!"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    if-eqz v0, :cond_4

    const-string/jumbo v1, " command action true!!!"

    .line 75
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 67
    .end local v0    # "setState":Z
    :cond_1
    const-string/jumbo v1, "RadioNotAllow "

    return-object v1

    .line 73
    :cond_2
    iget-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mSlBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    .restart local v0    # "setState":Z
    goto :goto_0

    .line 75
    :cond_3
    const-string/jumbo v1, "set Bluetooth false!!"

    goto :goto_1

    .line 76
    :cond_4
    const-string/jumbo v1, " command action error!!!"

    goto :goto_2
.end method


# virtual methods
.method public disabled(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->disabled(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mSlBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 37
    iget-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mSlBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 39
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->getCurrentBtState(Landroid/content/Context;)Z

    move-result v0

    .line 40
    .local v0, "currentBluetoothState":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disabled Bluetooth command Bluetooth Before state is:,mBluetoothBeforeState is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    iget-boolean v2, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mBluetoothBeforeState:Z

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    const-string/jumbo v2, ",currentBluetoothState is:"

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 43
    iget-boolean v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mBluetoothBeforeState:Z

    if-eq v1, v0, :cond_2

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_1

    .line 45
    iget-boolean v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mBluetoothBeforeState:Z

    .line 44
    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->setBluetoothEnabled(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 49
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",BluetoothCommand toString is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 34
    .end local v0    # "currentBluetoothState":Z
    :cond_0
    return-void

    .line 44
    .restart local v0    # "currentBluetoothState":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 47
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "no action ,but success!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mCommandString:Ljava/lang/String;

    goto :goto_1
.end method

.method public enabled(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->enabled(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mSlBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 23
    iget-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mSlBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 24
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->getCurrentBtState(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mBluetoothBeforeState:Z

    .line 25
    iget-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mSlBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    .line 26
    .local v0, "isBluetoothSetState":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enabled BluetoothCommand Bluetooth set false state is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 28
    const-string/jumbo v2, ",Bluetooth Before state is:"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 28
    iget-boolean v2, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mBluetoothBeforeState:Z

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29
    const-string/jumbo v2, ",BluetoothCommand toString is:"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29
    invoke-virtual {p0}, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 19
    .end local v0    # "isBluetoothSetState":Z
    :cond_0
    return-void
.end method
