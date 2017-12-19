.class public Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;
.super Ljava/lang/Object;
.source "IccFileAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IccFileAdapter"

.field private static sInstance:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;


# instance fields
.field private mCcIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;

.field private mContext:Landroid/content/Context;

.field private mMmsIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;

.field private mOmhIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneId:I

.field private mSmsIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;

.field private mSmsbcIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;

.field private mSsIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string/jumbo v0, "IccFileAdapter Creating!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->log(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 70
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mPhoneId:I

    .line 71
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mMmsIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;

    .line 72
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mCcIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;

    .line 73
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mOmhIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;

    .line 74
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mSsIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;

    .line 75
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mSmsbcIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;

    .line 76
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mSmsIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;

    .line 66
    return-void
.end method


# virtual methods
.method public getBcsmsCfgFromRuim(II)I
    .locals 1
    .param p1, "userCategory"    # I
    .param p2, "userPriority"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mSmsbcIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;->getBcsmsCfgFromRuim(II)I

    move-result v0

    return v0
.end method

.method public getFcsForApp(III)[I
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "subId"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mSsIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->getFcsForApp(III)[I

    move-result-object v0

    return-object v0
.end method

.method public getMmsConfigInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mMmsIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->getMmsConfigInfo()Lcom/mediatek/internal/telephony/MmsConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMmsIcpInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mMmsIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->getMmsIcpInfo()Lcom/mediatek/internal/telephony/MmsIcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextMessageId()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mSmsIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;->getNextMessageId()I

    move-result v0

    return v0
.end method

.method public getSmsIccFileFetcher()Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mSmsIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;

    return-object v0
.end method

.method public getSmsbcIccFileFetcher()Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mSmsbcIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;

    return-object v0
.end method

.method public getSsFeatureCode(I)Ljava/util/HashMap;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mSsIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->mData:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWapMsgId()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mSmsIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;->getWapMsgId()I

    move-result v0

    return v0
.end method

.method public isOmhCard()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mOmhIccFileFetcher:Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/uicc/OmhIccFileFetcher;->isOmhCard()Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string/jumbo v0, "IccFileAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string/jumbo v0, "IccFileAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method
