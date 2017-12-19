.class public Landroid/leuipowersavemode/WifiPowerSaveCommand;
.super Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;
.source "WifiPowerSaveCommand.java"


# instance fields
.field private mWifiBeforeState:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;-><init>()V

    return-void
.end method

.method private getCurrentWifiState(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 60
    iget-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 62
    .local v0, "wifiState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " getCurrentWifiState wifiManager wifiState is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "leuiDeepPowerSave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WifiCommand getCurrentWifiState state is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 66
    .end local v0    # "wifiState":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " getCurrentWifiState wifiManager null!!!,WifiCommand toString is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 68
    iget-boolean v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiBeforeState:Z

    return v1
.end method

.method private getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 73
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private setWifiEnabled(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isChecked"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 80
    if-eqz p2, :cond_0

    const-string/jumbo v1, "wifi"

    invoke-static {p1, v1}, Landroid/leuipowersavemode/CommandUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    :cond_0
    iget-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 86
    .local v0, "wifiApState":I
    if-eqz p2, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 87
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 88
    :cond_1
    iget-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 91
    :cond_2
    iget-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 92
    const-string/jumbo v1, "setWifiEnabled error!!! "

    return-object v1

    .line 81
    .end local v0    # "wifiApState":I
    :cond_3
    const-string/jumbo v1, "RadioNotAllow wifi "

    return-object v1

    .line 94
    .restart local v0    # "wifiApState":I
    :cond_4
    const-string/jumbo v1, "setWifiEnabled success!!! "

    return-object v1
.end method


# virtual methods
.method public disabled(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->disabled(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 42
    iget-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 45
    .local v1, "wifiApState":I
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->getCurrentWifiState(Landroid/content/Context;)Z

    move-result v0

    .line 46
    .local v0, "currentWifiState":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disabled wifi command wifi ap state is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 47
    const-string/jumbo v3, ",mWifiBeforeState is:"

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 47
    iget-boolean v3, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiBeforeState:Z

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 48
    const-string/jumbo v3, ",currentWifiState is:"

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 49
    iget-boolean v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiBeforeState:Z

    if-eq v2, v0, :cond_2

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    iget-boolean v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiBeforeState:Z

    :goto_0
    invoke-direct {p0, p1, v2}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->setWifiEnabled(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 54
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",WifiCommand toString is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 39
    .end local v0    # "currentWifiState":Z
    .end local v1    # "wifiApState":I
    :cond_0
    return-void

    .line 50
    .restart local v0    # "currentWifiState":Z
    .restart local v1    # "wifiApState":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 52
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "no action ,but success!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    goto :goto_1
.end method

.method public enabled(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 20
    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->enabled(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 22
    iget-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 23
    const-string/jumbo v2, ""

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 24
    const-string/jumbo v2, "leuiDeepPowerSave"

    const-string/jumbo v3, "WifiCommand enabled..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->getCurrentWifiState(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiBeforeState:Z

    .line 27
    iget-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    .line 29
    .local v1, "isSetWifiEnabled":Z
    iget-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v5, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    .line 30
    .local v0, "isSetWifiApEnabled":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " enabled WifiCommand WifiEnabled set false state is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 32
    const-string/jumbo v3, ",WifiApEnabled set false state is:"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 33
    const-string/jumbo v3, ",WifiBeforeState is :"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 33
    iget-boolean v3, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiBeforeState:Z

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    const-string/jumbo v3, ",WifiCommand toString is:"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    invoke-virtual {p0}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->toString()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 19
    .end local v0    # "isSetWifiApEnabled":Z
    .end local v1    # "isSetWifiEnabled":Z
    :cond_0
    return-void
.end method
