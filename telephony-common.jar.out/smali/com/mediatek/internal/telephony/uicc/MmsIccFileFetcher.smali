.class public final Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;
.super Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;
.source "MmsIccFileFetcher.java"


# static fields
.field private static final MMS_CONFIG_INFO:Ljava/lang/String; = "ef_mms_config_info"

.field private static final MMS_ICP_AI_TAG:I = 0x85

.field private static final MMS_ICP_AM_TAG:I = 0x84

.field private static final MMS_ICP_CP_TAG:I = 0xab

.field private static final MMS_ICP_G_TAG:I = 0x83

.field private static final MMS_ICP_ICBI_TAG:I = 0x82

.field private static final MMS_ICP_INFO:Ljava/lang/String; = "ef_mms_icp_info"

.field private static final MMS_ICP_INVALID_TAG:I = 0xff

.field private static final MMS_ICP_I_TAG:I = 0x80

.field private static final MMS_ICP_RS_TAG:I = 0x81

.field private static final TAG:Ljava/lang/String; = "MmsIccFileFetcher"


# instance fields
.field mFileList:Ljava/util/ArrayList;
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
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    .line 72
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    const-string/jumbo v1, "ef_mms_icp_info"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    const-string/jumbo v1, "ef_mms_config_info"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method


# virtual methods
.method decodeGateWay(Lcom/mediatek/internal/telephony/MmsIcpInfo;[BII)V
    .locals 4
    .param p1, "info"    # Lcom/mediatek/internal/telephony/MmsIcpInfo;
    .param p2, "data"    # [B
    .param p3, "start"    # I
    .param p4, "len"    # I

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    move v1, p3

    .line 117
    .local v1, "pos":I
    :goto_0
    add-int v2, p3, p4

    if-ge v1, v2, :cond_1

    .line 118
    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_2

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/String;

    sub-int v2, v1, p3

    invoke-direct {v0, p2, p3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 125
    .local v0, "gateWay":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseMmsIcpInfo decodeGateWay gateWay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->log(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mDomainName:Ljava/lang/String;

    .line 112
    return-void

    .line 121
    .end local v0    # "gateWay":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method decodeMmsImplementation(Lcom/mediatek/internal/telephony/MmsIcpInfo;[BII)V
    .locals 3
    .param p1, "info"    # Lcom/mediatek/internal/telephony/MmsIcpInfo;
    .param p2, "data"    # [B
    .param p3, "start"    # I
    .param p4, "len"    # I

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    aget-byte v1, p2, p3

    and-int/lit16 v0, v1, 0xff

    .line 134
    .local v0, "type":I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 135
    const-string/jumbo v1, "WAP"

    iput-object v1, p1, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mImplementation:Ljava/lang/String;

    .line 143
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseMmsIcpInfo decodeMmsImplementation imp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mImplementation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->log(Ljava/lang/String;)V

    .line 129
    return-void

    .line 136
    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 137
    const-string/jumbo v1, "M-IMAP"

    iput-object v1, p1, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mImplementation:Ljava/lang/String;

    goto :goto_0

    .line 138
    :cond_2
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 139
    const-string/jumbo v1, "SIP"

    iput-object v1, p1, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mImplementation:Ljava/lang/String;

    goto :goto_0

    .line 141
    :cond_3
    const-string/jumbo v1, "UNKNOWN"

    iput-object v1, p1, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mImplementation:Ljava/lang/String;

    goto :goto_0
.end method

.method dumpBytes([B)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "i":I
    const-string/jumbo v1, ""

    .line 105
    .local v1, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-object v1
.end method

.method protected getMmsConfigInfo()Lcom/mediatek/internal/telephony/MmsConfigInfo;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v1, "ef_mms_config_info"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v1, "ef_mms_config_info"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MmsConfigInfo;

    return-object v0

    .line 264
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMmsIcpInfo()Lcom/mediatek/internal/telephony/MmsIcpInfo;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v1, "ef_mms_icp_info"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v1, "ef_mms_icp_info"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MmsIcpInfo;

    return-object v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method isValideIcpInfo(Lcom/mediatek/internal/telephony/MmsIcpInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/mediatek/internal/telephony/MmsIcpInfo;

    .prologue
    .line 147
    iget-object v0, p1, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mImplementation:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mImplementation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    const-string/jumbo v0, "parseMmsIcpInfo isValide = false"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->log(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_1
    const-string/jumbo v0, "parseMmsIcpInfo isValide = true"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->log(Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public onGetFilePara(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 90
    const-string/jumbo v0, "ef_mms_icp_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    const-string/jumbo v4, "3F007F25"

    const/16 v1, 0x6f67

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;-><init>(IIILjava/lang/String;[BILjava/lang/String;)V

    return-object v0

    .line 90
    :cond_0
    const-string/jumbo v0, "ef_mms_config_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    const-string/jumbo v4, "3F007F25"

    const/16 v1, 0x6f7e    # 3.9996E-41f

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;-><init>(IIILjava/lang/String;[BILjava/lang/String;)V

    return-object v0

    .line 98
    :cond_1
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
    .line 81
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V
    .locals 3
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
    .line 246
    .local p3, "linearfixed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KEY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " transparent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " linearfixed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->log(Ljava/lang/String;)V

    .line 248
    const-string/jumbo v0, "ef_mms_icp_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v1, "ef_mms_icp_info"

    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->parseMmsIcpInfo([B)Lcom/mediatek/internal/telephony/MmsIcpInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :goto_0
    return-void

    .line 248
    :cond_0
    const-string/jumbo v0, "ef_mms_config_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v1, "ef_mms_config_info"

    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->parseMmsConfigInfo([B)Lcom/mediatek/internal/telephony/MmsConfigInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 256
    :cond_1
    const-string/jumbo v0, "unknown key type."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method parseMmsConfigInfo([B)Lcom/mediatek/internal/telephony/MmsConfigInfo;
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 222
    if-eqz p1, :cond_0

    array-length v1, p1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 223
    :cond_0
    return-object v3

    .line 225
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseMmsConfigInfo data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->dumpBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->log(Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/mediatek/internal/telephony/MmsConfigInfo;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MmsConfigInfo;-><init>()V

    .line 227
    .local v0, "info":Lcom/mediatek/internal/telephony/MmsConfigInfo;
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 228
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 227
    or-int/2addr v1, v2

    .line 228
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 227
    or-int/2addr v1, v2

    iput v1, v0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mMessageMaxSize:I

    .line 230
    const/4 v1, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mRetryTimes:I

    .line 231
    const/4 v1, 0x5

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mRetryInterval:J

    .line 232
    const/4 v1, 0x6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, v0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mCenterTimeout:I

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseMmsConfigInfo: mMessageMaxSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mMessageMaxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    const-string/jumbo v2, " mRetryTimes = "

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    iget v2, v0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mRetryTimes:I

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    const-string/jumbo v2, " mRetryInterval = "

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    iget-wide v2, v0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mRetryInterval:J

    .line 233
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    const-string/jumbo v2, " mCenterTimeout = "

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    iget v2, v0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mCenterTimeout:I

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->log(Ljava/lang/String;)V

    .line 236
    return-object v0
.end method

.method parseMmsIcpInfo([B)Lcom/mediatek/internal/telephony/MmsIcpInfo;
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 156
    if-nez p1, :cond_0

    .line 157
    return-object v6

    .line 159
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseMmsIcpInfo data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->dumpBytes([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->log(Ljava/lang/String;)V

    .line 161
    const/4 v3, 0x0

    .line 162
    .local v3, "pos":I
    const/4 v1, 0x0

    .line 163
    .local v1, "infoLen":I
    const/4 v5, 0x0

    .line 164
    .local v5, "tempStr":Ljava/lang/String;
    new-instance v0, Lcom/mediatek/internal/telephony/MmsIcpInfo;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MmsIcpInfo;-><init>()V

    .line 166
    .end local v5    # "tempStr":Ljava/lang/String;
    .local v0, "icpInfo":Lcom/mediatek/internal/telephony/MmsIcpInfo;
    :goto_0
    array-length v7, p1

    if-ge v3, v7, :cond_1

    .line 167
    aget-byte v7, p1, v3

    and-int/lit16 v4, v7, 0xff

    .line 168
    .local v4, "tagParam":I
    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v2, v7, 0xff

    .line 169
    .local v2, "paramLen":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseMmsIcpInfo tagParam = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->log(Ljava/lang/String;)V

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseMmsIcpInfo, the Tag\'s value len = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->log(Ljava/lang/String;)V

    .line 171
    const/16 v7, 0xff

    if-ne v4, v7, :cond_2

    .line 218
    .end local v2    # "paramLen":I
    .end local v4    # "tagParam":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->isValideIcpInfo(Lcom/mediatek/internal/telephony/MmsIcpInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    .end local v0    # "icpInfo":Lcom/mediatek/internal/telephony/MmsIcpInfo;
    :goto_1
    return-object v0

    .line 174
    .restart local v0    # "icpInfo":Lcom/mediatek/internal/telephony/MmsIcpInfo;
    .restart local v2    # "paramLen":I
    .restart local v4    # "tagParam":I
    :cond_2
    sparse-switch v4, :sswitch_data_0

    .line 213
    const-string/jumbo v7, "unkonwn tag."

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :sswitch_0
    move v1, v2

    .line 178
    add-int/lit8 v3, v3, 0x2

    .line 179
    goto :goto_0

    .line 182
    :sswitch_1
    add-int/lit8 v7, v3, 0x2

    const/4 v8, 0x1

    invoke-virtual {p0, v0, p1, v7, v8}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->decodeMmsImplementation(Lcom/mediatek/internal/telephony/MmsIcpInfo;[BII)V

    .line 183
    add-int/lit8 v3, v3, 0x3

    .line 184
    goto :goto_0

    .line 186
    :sswitch_2
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v7, v3, 0x2

    invoke-direct {v5, p1, v7, v2}, Ljava/lang/String;-><init>([BII)V

    .line 187
    .local v5, "tempStr":Ljava/lang/String;
    iput-object v5, v0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mRelayOrServerAddress:Ljava/lang/String;

    .line 188
    add-int/lit8 v7, v3, 0x2

    add-int v3, v7, v2

    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseMmsIcpInfo, MMS_ICP_RS_TAG value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    .end local v5    # "tempStr":Ljava/lang/String;
    :sswitch_3
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v7, v3, 0x2

    invoke-direct {v5, p1, v7, v2}, Ljava/lang/String;-><init>([BII)V

    .line 193
    .restart local v5    # "tempStr":Ljava/lang/String;
    add-int/lit8 v7, v3, 0x2

    add-int v3, v7, v2

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseMmsIcpInfo, MMS_ICP_ICBI_TAG value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    .end local v5    # "tempStr":Ljava/lang/String;
    :sswitch_4
    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v0, p1, v7, v2}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->decodeGateWay(Lcom/mediatek/internal/telephony/MmsIcpInfo;[BII)V

    .line 198
    add-int/lit8 v7, v3, 0x2

    add-int v3, v7, v2

    .line 199
    goto/16 :goto_0

    .line 202
    :sswitch_5
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v7, v3, 0x2

    invoke-direct {v5, p1, v7, v2}, Ljava/lang/String;-><init>([BII)V

    .line 203
    .restart local v5    # "tempStr":Ljava/lang/String;
    add-int/lit8 v7, v3, 0x2

    add-int v3, v7, v2

    .line 204
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseMmsIcpInfo, MMS_ICP_AM_TAG value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    .end local v5    # "tempStr":Ljava/lang/String;
    :sswitch_6
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v7, v3, 0x2

    invoke-direct {v5, p1, v7, v2}, Ljava/lang/String;-><init>([BII)V

    .line 209
    .restart local v5    # "tempStr":Ljava/lang/String;
    add-int/lit8 v7, v3, 0x2

    add-int v3, v7, v2

    .line 210
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseMmsIcpInfo, MMS_ICP_AI_TAG value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MmsIccFileFetcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "paramLen":I
    .end local v4    # "tagParam":I
    .end local v5    # "tempStr":Ljava/lang/String;
    :cond_3
    move-object v0, v6

    .line 218
    goto/16 :goto_1

    .line 174
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_1
        0x81 -> :sswitch_2
        0x82 -> :sswitch_3
        0x83 -> :sswitch_4
        0x84 -> :sswitch_5
        0x85 -> :sswitch_6
        0xab -> :sswitch_0
    .end sparse-switch
.end method
