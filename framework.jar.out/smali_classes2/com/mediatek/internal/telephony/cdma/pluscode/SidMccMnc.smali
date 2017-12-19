.class public Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;
.super Ljava/lang/Object;
.source "SidMccMnc.java"


# instance fields
.field public mMccMnc:I

.field public mSid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->mSid:I

    .line 53
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->mMccMnc:I

    .line 51
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "sid"    # I
    .param p2, "mccMnc"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->mSid:I

    .line 63
    iput p2, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->mMccMnc:I

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;)V
    .locals 0
    .param p1, "t"    # Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->copyFrom(Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;)V
    .locals 1
    .param p1, "t"    # Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;

    .prologue
    .line 78
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->mSid:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->mSid:I

    .line 79
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->mMccMnc:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->mMccMnc:I

    .line 77
    return-void
.end method

.method public getMccMnc()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->mMccMnc:I

    return v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->mSid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sid ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->mSid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", MccMnc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->mMccMnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
