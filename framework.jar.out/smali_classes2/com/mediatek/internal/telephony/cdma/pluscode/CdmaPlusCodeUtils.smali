.class public Lcom/mediatek/internal/telephony/cdma/pluscode/CdmaPlusCodeUtils;
.super Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;
.source "CdmaPlusCodeUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CdmaPlusCodeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string/jumbo v0, "CdmaPlusCodeUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method


# virtual methods
.method public canFormatPlusCodeForSms()Z
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "canFormatPlusCodeForSms"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/CdmaPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->canFormatPlusCodeForSms()Z

    move-result v0

    return v0
.end method

.method public canFormatPlusToIddNdd()Z
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "canFormatPlusToIddNdd"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/CdmaPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->canFormatPlusToIddNdd()Z

    move-result v0

    return v0
.end method

.method public checkMccBySidLtmOff(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checkMccBySidLtmOff mccMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/CdmaPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->checkMccBySidLtmOff(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeIddNddAddPlusCode number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/CdmaPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 89
    invoke-static {p1}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeIddNddAddPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeIddNddAddPlusCodeForSms number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/CdmaPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->removeIddNddAddPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replacePlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replacePlusCodeForSms number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/CdmaPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->replacePlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replacePlusCodeWithIddNdd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replacePlusCodeWithIddNdd number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/CdmaPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->replacePlusCodeWithIddNdd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
