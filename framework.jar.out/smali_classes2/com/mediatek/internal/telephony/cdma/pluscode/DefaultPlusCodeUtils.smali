.class public Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;
.super Ljava/lang/Object;
.source "DefaultPlusCodeUtils.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;


# static fields
.field public static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "DefaultPlusCodeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string/jumbo v0, "DefaultPlusCodeUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method


# virtual methods
.method public canFormatPlusCodeForSms()Z
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "canFormatPlusCodeForSms"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public canFormatPlusToIddNdd()Z
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "canFormatPlusToIddNdd"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public checkMccBySidLtmOff(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checkMccBySidLtmOff mccMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 54
    return-object p1
.end method

.method public removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeIddNddAddPlusCode number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 90
    return-object p1
.end method

.method public removeIddNddAddPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeIddNddAddPlusCodeForSms number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 84
    return-object p1
.end method

.method public replacePlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replacePlusCodeForSms number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 78
    return-object p1
.end method

.method public replacePlusCodeWithIddNdd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replacePlusCodeWithIddNdd number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 72
    return-object p1
.end method
