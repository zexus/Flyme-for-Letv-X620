.class Lcom/android/internal/telephony/cat/RilMessage;
.super Ljava/lang/Object;
.source "CatService.java"


# instance fields
.field mData:Ljava/lang/Object;

.field mId:I

.field mResCode:Lcom/android/internal/telephony/cat/ResultCode;

.field mSetUpMenuFromMD:Z


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # I
    .param p2, "rawData"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    .line 89
    iput-object p2, p0, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    .line 87
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 1
    .param p1, "other"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iget v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    iput v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    .line 95
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .line 96
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 97
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    .line 93
    return-void
.end method


# virtual methods
.method setSetUpMenuFromMD(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    .line 100
    return-void
.end method
