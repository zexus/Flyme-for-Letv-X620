.class public Lcom/mediatek/internal/telephony/worldphone/WorldMode;
.super Landroid/os/Handler;
.source "WorldMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;
    }
.end annotation


# static fields
.field static final ACTION_ADB_SWITCH_WORLD_MODE:Ljava/lang/String; = "android.intent.action.ACTION_ADB_SWITCH_WORLD_MODE"

.field static final EVENT_RADIO_ON_1:I = 0x1

.field static final EVENT_RADIO_ON_2:I = 0x2

.field static final EXTRA_WORLDMODE:Ljava/lang/String; = "worldMode"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final MD_WM_CHANGED_END:I = 0x1

.field public static final MD_WM_CHANGED_START:I = 0x0

.field public static final MD_WM_CHANGED_UNKNOWN:I = -0x1

.field public static final MD_WORLD_MODE_LCTG:I = 0x10

.field public static final MD_WORLD_MODE_LFWCG:I = 0xf

.field public static final MD_WORLD_MODE_LFWG:I = 0xe

.field public static final MD_WORLD_MODE_LTCTG:I = 0x11

.field public static final MD_WORLD_MODE_LTG:I = 0x8

.field public static final MD_WORLD_MODE_LTTG:I = 0xd

.field public static final MD_WORLD_MODE_LWCG:I = 0xb

.field public static final MD_WORLD_MODE_LWCTG:I = 0xc

.field public static final MD_WORLD_MODE_LWG:I = 0x9

.field public static final MD_WORLD_MODE_LWTG:I = 0xa

.field public static final MD_WORLD_MODE_UNKNOWN:I

.field private static final PROJECT_SIM_NUM:I

.field private static sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static sActiveWorldMode:I

.field private static sCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sCurrentWorldMode:I

.field private static sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private static sSwitchingState:Z


# instance fields
.field private final mWorldModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    return p0
.end method

.method static synthetic -wrap0()I
    .locals 1

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getProjectSimNum()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->PROJECT_SIM_NUM:I

    .line 88
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    .line 89
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sActiveWorldMode:I

    .line 90
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    .line 91
    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 92
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 93
    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sContext:Landroid/content/Context;

    .line 94
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 131
    new-instance v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldMode;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    const-string/jumbo v2, "Constructor invoked"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Init world mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 101
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v3, v0

    .line 102
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v2, v3, v0

    .line 103
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.ACTION_ADB_SWITCH_WORLD_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 110
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sContext:Landroid/content/Context;

    .line 114
    :goto_1
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void

    .line 112
    :cond_1
    const-string/jumbo v2, "DefaultPhone = null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static WorldModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "worldMode"    # I

    .prologue
    .line 322
    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    .line 323
    const-string/jumbo v0, "uTLG"

    .line 346
    .local v0, "worldModeString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 324
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x9

    if-ne p0, v1, :cond_1

    .line 325
    const-string/jumbo v0, "uLWG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 326
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_1
    const/16 v1, 0xa

    if-ne p0, v1, :cond_2

    .line 327
    const-string/jumbo v0, "uLWTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 328
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_2
    const/16 v1, 0xb

    if-ne p0, v1, :cond_3

    .line 329
    const-string/jumbo v0, "uLWCG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 330
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_3
    const/16 v1, 0xc

    if-ne p0, v1, :cond_4

    .line 331
    const-string/jumbo v0, "uLWTCG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 332
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_4
    const/16 v1, 0xd

    if-ne p0, v1, :cond_5

    .line 333
    const-string/jumbo v0, "LtTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 334
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_5
    const/16 v1, 0xe

    if-ne p0, v1, :cond_6

    .line 335
    const-string/jumbo v0, "LfWG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 336
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_6
    const/16 v1, 0xf

    if-ne p0, v1, :cond_7

    .line 337
    const-string/jumbo v0, "uLfWCG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 338
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_7
    const/16 v1, 0x10

    if-ne p0, v1, :cond_8

    .line 339
    const-string/jumbo v0, "uLCTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 340
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_8
    const/16 v1, 0x11

    if-ne p0, v1, :cond_9

    .line 341
    const-string/jumbo v0, "uLtCTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 343
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_9
    const-string/jumbo v0, "Invalid world mode"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getWorldMode()I
    .locals 2

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getWorldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->WorldModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 281
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    return v0
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 122
    const-class v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 121
    return-void

    .line 126
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isWorldModeSwitching()Z
    .locals 1

    .prologue
    .line 313
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    if-eqz v0, :cond_0

    .line 314
    const/4 v0, 0x1

    return v0

    .line 316
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 350
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[WorldMode]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void
.end method

.method public static setWorldMode(I)V
    .locals 4
    .param p0, "worldMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 198
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    .line 199
    .local v0, "protocolSim":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setWorldMode]protocolSim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 200
    if-ltz v0, :cond_0

    .line 201
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 202
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->setWorldMode(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 197
    :goto_0
    return-void

    .line 204
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v3

    invoke-static {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->setWorldMode(Lcom/android/internal/telephony/CommandsInterface;I)V

    goto :goto_0
.end method

.method private static setWorldMode(Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 5
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "worldMode"    # I

    .prologue
    const/16 v4, 0x11

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[setWorldMode] worldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 224
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    if-ne p1, v0, :cond_a

    .line 225
    if-ne p1, v3, :cond_1

    .line 226
    const-string/jumbo v0, "Already in uTLG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 228
    const-string/jumbo v0, "Already in uLWG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 230
    const-string/jumbo v0, "Already in uLWTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_3
    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    .line 232
    const-string/jumbo v0, "Already in uLWCG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_4
    const/16 v0, 0xc

    if-ne p1, v0, :cond_5

    .line 234
    const-string/jumbo v0, "Already in uLWTCG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_5
    const/16 v0, 0xd

    if-ne p1, v0, :cond_6

    .line 236
    const-string/jumbo v0, "Already in LtTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_6
    const/16 v0, 0xe

    if-ne p1, v0, :cond_7

    .line 238
    const-string/jumbo v0, "Already in LfWG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_7
    const/16 v0, 0xf

    if-ne p1, v0, :cond_8

    .line 240
    const-string/jumbo v0, "Already in uLfWCG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_8
    const/16 v0, 0x10

    if-ne p1, v0, :cond_9

    .line 242
    const-string/jumbo v0, "Already in uLCTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_9
    if-ne p1, v4, :cond_0

    .line 244
    const-string/jumbo v0, "Already in uLtCTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_a
    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 249
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 248
    if-ne v0, v1, :cond_b

    .line 250
    const-string/jumbo v0, "Radio unavailable, can not switch world mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 251
    return-void

    .line 253
    :cond_b
    if-lt p1, v3, :cond_c

    .line 254
    if-gt p1, v4, :cond_c

    .line 255
    invoke-interface {p0, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->reloadModemType(ILandroid/os/Message;)V

    .line 256
    invoke-interface {p0, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 257
    const/4 v0, 0x2

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTrm(ILandroid/os/Message;)V

    .line 222
    return-void

    .line 259
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid world mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private static updateCurrentWorldMode()I
    .locals 2

    .prologue
    .line 301
    const-string/jumbo v0, "ril.active.md"

    .line 302
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCurrentWorldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->WorldModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 304
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    return v0
.end method

.method public static updateSwitchingState(Z)V
    .locals 2
    .param p0, "isSwitching"    # Z

    .prologue
    .line 308
    sput-boolean p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSwitchingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 307
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 162
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    .line 163
    .local v1, "protocolSim":I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 165
    :pswitch_0
    const-string/jumbo v2, "handleMessage : <EVENT_RADIO_ON_1>"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    .line 167
    if-nez v1, :cond_0

    .line 168
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    goto :goto_0

    .line 172
    :pswitch_1
    const-string/jumbo v2, "handleMessage : <EVENT_RADIO_ON_2>"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    .line 174
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 175
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
