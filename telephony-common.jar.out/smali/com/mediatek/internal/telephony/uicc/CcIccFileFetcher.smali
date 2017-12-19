.class public final Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;
.super Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;
.source "CcIccFileFetcher.java"


# static fields
.field private static final CSIM_PATH:Ljava/lang/String; = "3F007FFF"

.field private static final KEY_ECC:Ljava/lang/String; = "EF_ECC"

.field private static final RUIMRECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

.field private static final RUIM_PATH:Ljava/lang/String; = "3F007F25"

.field private static final TAG:Ljava/lang/String; = "CcIccFileFetcher"

.field private static final UICC_SUPPORT_CARD_TYPE:[Ljava/lang/String;


# instance fields
.field private mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-array v0, v6, [Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "cdma.ril.ecclist"

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "cdma.ril.ecclist1"

    aput-object v1, v0, v3

    .line 58
    const-string/jumbo v1, "cdma.ril.ecclist2"

    aput-object v1, v0, v4

    .line 59
    const-string/jumbo v1, "cdma.ril.ecclist3"

    aput-object v1, v0, v5

    .line 55
    sput-object v0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->RUIMRECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

    .line 61
    new-array v0, v6, [Ljava/lang/String;

    .line 62
    const-string/jumbo v1, "gsm.ril.fulluicctype"

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "gsm.ril.fulluicctype.2"

    aput-object v1, v0, v3

    .line 64
    const-string/jumbo v1, "gsm.ril.fulluicctype.3"

    aput-object v1, v0, v4

    .line 65
    const-string/jumbo v1, "gsm.ril.fulluicctype.4"

    aput-object v1, v0, v5

    .line 61
    sput-object v0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->UICC_SUPPORT_CARD_TYPE:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    .line 75
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    const-string/jumbo v1, "EF_ECC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method


# virtual methods
.method public onGetFilePara(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 92
    const-string/jumbo v0, "CcIccFileFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGetFilePara, phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string/jumbo v0, "EF_ECC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->mPhoneId:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->mPhoneId:I

    sget-object v1, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->UICC_SUPPORT_CARD_TYPE:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 95
    const-string/jumbo v4, ""

    .line 96
    .local v4, "path":Ljava/lang/String;
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->UICC_SUPPORT_CARD_TYPE:[Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->mPhoneId:I

    aget-object v0, v0, v1

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v0, "CcIccFileFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGetFilePara, full card type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string/jumbo v0, "CSIM"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 99
    const-string/jumbo v4, "3F007FFF"

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 104
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    const/16 v1, 0x6f47

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;-><init>(IIILjava/lang/String;[BILjava/lang/String;)V

    return-object v0

    .line 100
    :cond_1
    const-string/jumbo v0, "RUIM"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 101
    const-string/jumbo v4, "3F007F25"

    goto :goto_0

    .line 109
    .end local v4    # "path":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public onGetKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "transparent"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p3, "linearfixed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v0, 0x0

    .line 120
    .local v0, "eccNum":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 121
    .local v2, "result":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 122
    const/4 v1, 0x0

    .end local v0    # "eccNum":Ljava/lang/String;
    .local v1, "i":I
    :goto_0
    add-int/lit8 v3, v1, 0x2

    array-length v4, p2

    if-ge v3, v4, :cond_2

    .line 123
    const/4 v3, 0x3

    invoke-static {p2, v1, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "eccNum":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 124
    :cond_1
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 130
    .end local v0    # "eccNum":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    const-string/jumbo v3, "CcIccFileFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CDMA ECC of card "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget v3, p0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->mPhoneId:I

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->mPhoneId:I

    sget-object v4, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->RUIMRECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 132
    sget-object v3, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->RUIMRECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->mPhoneId:I

    aget-object v3, v3, v4

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/CcIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v4, "EF_ECC"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method
