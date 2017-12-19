.class Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
.super Ljava/lang/Object;
.source "IccFileFetcherBase.java"


# instance fields
.field public mAppType:I

.field public mData:[B

.field public mEfPath:Ljava/lang/String;

.field public mEfType:I

.field public mEfid:I

.field public mKey:Ljava/lang/String;

.field public mPin2:Ljava/lang/String;

.field public mRecordNum:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;[BILjava/lang/String;)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "eftype"    # I
    .param p3, "apptype"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "data"    # [B
    .param p6, "recordnum"    # I
    .param p7, "pin2"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mKey:Ljava/lang/String;

    .line 76
    iput p1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfid:I

    .line 77
    iput p2, p0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfType:I

    .line 78
    iput p3, p0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mAppType:I

    .line 79
    iput-object p4, p0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mEfPath:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mData:[B

    .line 81
    iput p6, p0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mRecordNum:I

    .line 82
    iput-object p7, p0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;->mPin2:Ljava/lang/String;

    .line 75
    return-void
.end method
