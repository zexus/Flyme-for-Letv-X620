.class public Lcom/mediatek/internal/telephony/ModemSwitchHandler;
.super Ljava/lang/Object;
.source "ModemSwitchHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final MD_TYPE_FDD:I = 0x64

.field public static final MD_TYPE_LTG:I = 0x6

.field public static final MD_TYPE_LWG:I = 0x5

.field public static final MD_TYPE_TDD:I = 0x65

.field public static final MD_TYPE_TG:I = 0x4

.field public static final MD_TYPE_UNKNOWN:I = 0x0

.field public static final MD_TYPE_WG:I = 0x3

.field private static final PROJECT_SIM_NUM:I

.field private static sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static sCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sCurrentModemType:I

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getProjectSimNum()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->PROJECT_SIM_NUM:I

    .line 73
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    .line 74
    sput-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 75
    sget v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 76
    sput-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sContext:Landroid/content/Context;

    .line 77
    sget v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string/jumbo v1, "Constructor invoked"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Init modem type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 84
    sget-object v2, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    aput-object v1, v2, v0

    .line 85
    sget-object v2, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v1, v2, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 88
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sContext:Landroid/content/Context;

    .line 79
    :goto_1
    return-void

    .line 90
    :cond_1
    const-string/jumbo v1, "DefaultPhone = null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getActiveModemType()I
    .locals 2

    .prologue
    .line 213
    const-string/jumbo v0, "ril.active.md"

    .line 214
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    .line 216
    sget v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[MSH]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public static modemToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "modemType"    # I

    .prologue
    .line 228
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 229
    const-string/jumbo v0, "WG"

    .line 242
    .local v0, "modemString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 230
    .end local v0    # "modemString":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 231
    const-string/jumbo v0, "TG"

    .restart local v0    # "modemString":Ljava/lang/String;
    goto :goto_0

    .line 232
    .end local v0    # "modemString":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    .line 233
    const-string/jumbo v0, "FDD CSFB"

    .restart local v0    # "modemString":Ljava/lang/String;
    goto :goto_0

    .line 234
    .end local v0    # "modemString":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x6

    if-ne p0, v1, :cond_3

    .line 235
    const-string/jumbo v0, "TDD CSFB"

    .restart local v0    # "modemString":Ljava/lang/String;
    goto :goto_0

    .line 236
    .end local v0    # "modemString":Ljava/lang/String;
    :cond_3
    if-nez p0, :cond_4

    .line 237
    const-string/jumbo v0, "UNKNOWN"

    .restart local v0    # "modemString":Ljava/lang/String;
    goto :goto_0

    .line 239
    .end local v0    # "modemString":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "Invalid modem type"

    .restart local v0    # "modemString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static reloadModem(I)V
    .locals 4
    .param p0, "modemType"    # I

    .prologue
    .line 167
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    .line 168
    .local v1, "majorSim":I
    const/4 v0, 0x0

    .line 169
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    if-ltz v1, :cond_0

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 170
    sget-object v2, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    invoke-static {v2, p0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 166
    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid MajorSIM id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 3
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "modemType"    # I

    .prologue
    const/4 v2, 0x0

    .line 184
    const-string/jumbo v0, "[reloadModem]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 185
    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    .line 186
    const-string/jumbo v0, "Radio unavailable, can not reload modem"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 187
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 190
    const/16 v0, 0xe

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTrm(ILandroid/os/Message;)V

    .line 183
    :goto_0
    return-void

    .line 191
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 192
    const/16 v0, 0xf

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTrm(ILandroid/os/Message;)V

    goto :goto_0

    .line 193
    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 194
    const/16 v0, 0x10

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTrm(ILandroid/os/Message;)V

    goto :goto_0

    .line 195
    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    .line 196
    const/16 v0, 0x11

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTrm(ILandroid/os/Message;)V

    goto :goto_0

    .line 198
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid modem type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setActiveModemType(I)V
    .locals 2
    .param p0, "modemType"    # I

    .prologue
    .line 220
    const-string/jumbo v0, "ril.active.md"

    .line 221
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sput p0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[setActiveModemType] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public static switchModem(I)V
    .locals 4
    .param p0, "modemType"    # I

    .prologue
    .line 102
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    .line 103
    .local v1, "protocolSim":I
    const/4 v0, 0x0

    .line 104
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "protocolSim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 105
    if-ltz v1, :cond_0

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 106
    sget-object v2, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    invoke-static {v2, p0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->switchModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 101
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {v0, p0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->switchModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    goto :goto_0
.end method

.method public static switchModem(Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 8
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "modemType"    # I

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 120
    const-string/jumbo v1, "[switchModem]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 121
    sget v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    if-ne p1, v1, :cond_4

    .line 122
    if-ne p1, v4, :cond_1

    .line 123
    const-string/jumbo v1, "Already in WG modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    if-ne p1, v5, :cond_2

    .line 125
    const-string/jumbo v1, "Already in TG modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_2
    if-ne p1, v6, :cond_3

    .line 127
    const-string/jumbo v1, "Already in FDD CSFB modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    if-ne p1, v7, :cond_0

    .line 129
    const-string/jumbo v1, "Already in TDD CSFB modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_4
    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_5

    .line 134
    const-string/jumbo v1, "Radio unavailable, can not switch modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 135
    return-void

    .line 137
    :cond_5
    if-ne p1, v4, :cond_6

    .line 138
    const/16 v1, 0x9

    invoke-interface {p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setTrm(ILandroid/os/Message;)V

    .line 150
    :goto_1
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->setActiveModemType(I)V

    .line 153
    const-string/jumbo v1, "Broadcast intent ACTION_MD_TYPE_CHANGE"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_MD_TYPE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "mdType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    sget-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void

    .line 139
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    if-ne p1, v5, :cond_7

    .line 140
    const/16 v1, 0xa

    invoke-interface {p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setTrm(ILandroid/os/Message;)V

    goto :goto_1

    .line 141
    :cond_7
    if-ne p1, v6, :cond_8

    .line 142
    const/16 v1, 0xb

    invoke-interface {p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setTrm(ILandroid/os/Message;)V

    goto :goto_1

    .line 143
    :cond_8
    if-ne p1, v7, :cond_9

    .line 144
    const/16 v1, 0xc

    invoke-interface {p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setTrm(ILandroid/os/Message;)V

    goto :goto_1

    .line 146
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid modem type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 147
    return-void
.end method
