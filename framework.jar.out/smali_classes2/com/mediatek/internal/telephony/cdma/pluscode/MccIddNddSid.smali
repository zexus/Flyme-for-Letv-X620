.class public Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
.super Ljava/lang/Object;
.source "MccIddNddSid.java"


# instance fields
.field public mCc:Ljava/lang/String;

.field public mIdd:Ljava/lang/String;

.field public mMcc:I

.field public mNdd:Ljava/lang/String;

.field public mSidMax:I

.field public mSidMin:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mMcc:I

    .line 57
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mCc:Ljava/lang/String;

    .line 58
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMin:I

    .line 59
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMax:I

    .line 60
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mIdd:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mNdd:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "cc"    # Ljava/lang/String;
    .param p3, "sidmin"    # I
    .param p4, "sidmax"    # I
    .param p5, "idd"    # Ljava/lang/String;
    .param p6, "ndd"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mMcc:I

    .line 76
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mCc:Ljava/lang/String;

    .line 77
    iput p3, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMin:I

    .line 78
    iput p4, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMax:I

    .line 79
    iput-object p5, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mIdd:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mNdd:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;)V
    .locals 0
    .param p1, "t"    # Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->copyFrom(Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;)V
    .locals 1
    .param p1, "t"    # Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .prologue
    .line 95
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mMcc:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mMcc:I

    .line 96
    iget-object v0, p1, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mCc:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mCc:Ljava/lang/String;

    .line 97
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMin:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMin:I

    .line 98
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMax:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMax:I

    .line 99
    iget-object v0, p1, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mIdd:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mIdd:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mNdd:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mNdd:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public getCc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mCc:Ljava/lang/String;

    return-object v0
.end method

.method public getIdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mIdd:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mMcc:I

    return v0
.end method

.method public getNdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mNdd:Ljava/lang/String;

    return-object v0
.end method

.method public getSidMax()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMax:I

    return v0
.end method

.method public getSidMin()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMin:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Mcc ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mMcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Cc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", SidMin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    const-string/jumbo v1, ", SidMax = "

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    iget v1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMax:I

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    const-string/jumbo v1, ", Idd = "

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mIdd:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    const-string/jumbo v1, ", Ndd = "

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mNdd:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
