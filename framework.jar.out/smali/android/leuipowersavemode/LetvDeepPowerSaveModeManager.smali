.class public Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;
.super Ljava/lang/Object;
.source "LetvDeepPowerSaveModeManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "LetvDeepPowerSaveModeManager"

.field private static sInstance:Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;


# instance fields
.field private mDeepPowerSaveCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    .line 38
    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 41
    new-instance v6, Landroid/leuipowersavemode/WifiPowerSaveCommand;

    invoke-direct {v6}, Landroid/leuipowersavemode/WifiPowerSaveCommand;-><init>()V

    .line 42
    .local v6, "wifiPowerSaveCommand":Landroid/leuipowersavemode/WifiPowerSaveCommand;
    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v4, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;

    invoke-direct {v4}, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;-><init>()V

    .line 46
    .local v4, "telephonyPowerSaveCommand":Landroid/leuipowersavemode/TelephonyPowerSaveCommand;
    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;

    invoke-direct {v0}, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;-><init>()V

    .line 50
    .local v0, "bluetothPowerSaveCommand":Landroid/leuipowersavemode/BluetoothPowerSaveCommand;
    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v5, Landroid/leuipowersavemode/VibratePowerSaveCommand;

    invoke-direct {v5}, Landroid/leuipowersavemode/VibratePowerSaveCommand;-><init>()V

    .line 54
    .local v5, "vibratePowerSaveCommand":Landroid/leuipowersavemode/VibratePowerSaveCommand;
    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Landroid/leuipowersavemode/GpsPowerSaveCommand;

    invoke-direct {v1}, Landroid/leuipowersavemode/GpsPowerSaveCommand;-><init>()V

    .line 58
    .local v1, "gpsPowerSaveCommand":Landroid/leuipowersavemode/GpsPowerSaveCommand;
    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v3, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;

    invoke-direct {v3}, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;-><init>()V

    .line 62
    .local v3, "screenOffTimeOutSaveCommand":Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;
    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v2, Landroid/leuipowersavemode/WindowAnimationScaleCommand;

    invoke-direct {v2}, Landroid/leuipowersavemode/WindowAnimationScaleCommand;-><init>()V

    .line 65
    .local v2, "mWindowAnimationScaleCommand":Landroid/leuipowersavemode/WindowAnimationScaleCommand;
    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->sInstance:Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;

    invoke-direct {v0, p0}, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->sInstance:Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;

    .line 34
    :cond_0
    sget-object v0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->sInstance:Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;

    return-object v0
.end method


# virtual methods
.method public getDeepPowerSaveModeControlLog()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "command$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;

    .line 83
    .local v0, "command":Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;
    invoke-interface {v0}, Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;->commandToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    .end local v0    # "command":Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setDeepPowerSaveModeEnabled(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 70
    iget-object v2, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "command$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;

    .line 71
    .local v0, "command":Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;
    if-eqz p2, :cond_0

    .line 72
    invoke-interface {v0, p1}, Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;->enabled(Landroid/content/Context;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {v0, p1}, Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;->disabled(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    .end local v0    # "command":Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;
    :cond_1
    return-void
.end method
