.class public Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
.super Ljava/lang/Object;
.source "MccSidLtmOff.java"


# static fields
.field public static final LTM_OFF_INVALID:I = 0x64


# instance fields
.field public mLtmOffMax:I

.field public mLtmOffMin:I

.field public mMcc:I

.field public mSid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    const/4 v0, -0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mMcc:I

    .line 57
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mSid:I

    .line 58
    iput v1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMin:I

    .line 59
    iput v1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMax:I

    .line 55
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "sid"    # I
    .param p3, "ltmOffMin"    # I
    .param p4, "ltmOffMax"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mMcc:I

    .line 71
    iput p2, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mSid:I

    .line 72
    iput p3, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMin:I

    .line 73
    iput p4, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMax:I

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;)V
    .locals 0
    .param p1, "t"    # Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->copyFrom(Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;)V

    .line 80
    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;)V
    .locals 1
    .param p1, "t"    # Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;

    .prologue
    .line 88
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mMcc:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mMcc:I

    .line 89
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mSid:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mSid:I

    .line 90
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMin:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMin:I

    .line 91
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMax:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMax:I

    .line 87
    return-void
.end method

.method public getLtmOffMax()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMax:I

    return v0
.end method

.method public getLtmOffMin()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMin:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mMcc:I

    return v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mSid:I

    return v0
.end method
