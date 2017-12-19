.class public final Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;
.super Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;
.source "SsIccFileFetcher.java"


# static fields
.field public static final FCNAME:[Ljava/lang/String;

.field private static final SSFC:Ljava/lang/String; = "ef_ssfc"

.field private static final TAG:Ljava/lang/String; = "SsIccFileFetcher"


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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/16 v0, 0x34

    new-array v0, v0, [Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "Number"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "CD"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "dCD"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "CFB"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "vCFB"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "dCFB"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "actCFB"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "dactCFB"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "CFD"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "vCFD"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "dCFD"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "actCFD"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "dactCFD"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "CFNA"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "vCFNA"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "dCFNA"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "actCFNA"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "dactCFNA"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "CFU"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "vCFU"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "dCFU"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "actCFU"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "dactCFU"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "CW"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "dCW"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "CCW"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "CNIR"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "dCNIR"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "CC"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "dCC"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "DND"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "dDND"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "aMWN"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "daMWN"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "MWN"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "dMWN"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "CMWN"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "PACA"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "VMR"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "CNAP"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "dCNAP"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "CNAR"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "dCNAR"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string/jumbo v1, "AC"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string/jumbo v1, "dAC"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string/jumbo v1, "AR"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string/jumbo v1, "dAR"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string/jumbo v1, "USCF"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string/jumbo v1, "RUAC"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string/jumbo v1, "dRUAC"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "AOC"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string/jumbo v1, "COT"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 59
    sput-object v0, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->FCNAME:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    .line 77
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    const-string/jumbo v1, "ef_ssfc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method private getFcForApp(ILjava/util/HashMap;)I
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, "fcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, -0x1

    .line 202
    .local v1, "fc":I
    sget-object v2, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->FCNAME:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 203
    .local v0, "code":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 204
    check-cast v0, Ljava/lang/String;

    .end local v0    # "code":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 206
    :cond_0
    return v1
.end method

.method private static getFcFromRuim(B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # B

    .prologue
    const/16 v5, 0x9

    .line 150
    const-string/jumbo v0, ""

    .line 151
    .local v0, "ret":Ljava/lang/String;
    and-int/lit16 v3, p0, 0xff

    const/16 v4, 0xff

    if-ne v3, v4, :cond_1

    .line 152
    const-string/jumbo v0, ""

    .line 172
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    and-int/lit16 v3, p0, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_2

    .line 154
    and-int/lit8 v3, p0, 0xf

    if-gt v3, v5, :cond_0

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v4, p0, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_2
    const/4 v2, 0x0

    .line 159
    .local v2, "tmp":I
    and-int/lit8 v3, p0, 0xf

    if-gt v3, v5, :cond_3

    .line 160
    and-int/lit8 v2, p0, 0xf

    .line 162
    :cond_3
    and-int/lit16 v3, p0, 0xf0

    const/16 v4, 0x90

    if-gt v3, v4, :cond_0

    .line 163
    shr-int/lit8 v3, p0, 0x4

    and-int/lit8 v1, v3, 0xf

    .line 164
    .local v1, "temp":I
    if-nez v1, :cond_4

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_4
    mul-int/lit8 v3, v1, 0xa

    add-int/2addr v2, v3

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getFcFromRuim(BB)Ljava/lang/String;
    .locals 4
    .param p0, "b1"    # B
    .param p1, "b2"    # B

    .prologue
    .line 137
    const-string/jumbo v2, "-1"

    .line 138
    .local v2, "featureCode":Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->getFcFromRuim(B)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "fc1":Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->getFcFromRuim(B)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "fc2":Ljava/lang/String;
    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    const-string/jumbo v2, "-1"

    .line 146
    :goto_0
    return-object v2

    .line 144
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getFcsForApp(III)[I
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "subId"    # I

    .prologue
    const/4 v7, 0x0

    .line 182
    const-string/jumbo v4, "SsIccFileFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFcsForApp start="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";end="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->mData:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->mData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 184
    :cond_0
    return-object v7

    .line 186
    :cond_1
    if-ge p2, p1, :cond_2

    .line 187
    return-object v7

    .line 190
    :cond_2
    sub-int v4, p2, p1

    add-int/lit8 v3, v4, 0x1

    .line 191
    .local v3, "size":I
    new-array v0, v3, [I

    .line 192
    .local v0, "featureCodes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 193
    add-int v2, p1, v1

    .line 194
    .local v2, "index":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->mData:Ljava/util/HashMap;

    invoke-direct {p0, v2, v4}, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->getFcForApp(ILjava/util/HashMap;)I

    move-result v4

    aput v4, v0, v1

    .line 195
    const-string/jumbo v4, "SsIccFileFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFcsForApp featureCodes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "index":I
    :cond_3
    return-object v0
.end method

.method public onGetFilePara(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 94
    const-string/jumbo v0, "ef_ssfc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 97
    const-string/jumbo v4, "3F007F25"

    .line 96
    const/16 v1, 0x6f3f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 97
    const/4 v6, -0x1

    move-object v7, v5

    .line 96
    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;-><init>(IIILjava/lang/String;[BILjava/lang/String;)V

    return-object v0

    .line 99
    :cond_0
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
    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V
    .locals 8
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
    .local p3, "linearfixed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v7, 0x0

    .line 112
    const-string/jumbo v4, "ef_ssfc"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 113
    const-string/jumbo v4, "SsIccFileFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "featureCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-eqz p2, :cond_0

    array-length v4, p2

    const/16 v5, 0x67

    if-eq v4, v5, :cond_1

    .line 115
    :cond_0
    return-void

    .line 117
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    aget-byte v4, p2, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "number":Ljava/lang/String;
    const-string/jumbo v4, "-1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    return-void

    .line 123
    :cond_2
    sget-object v4, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->FCNAME:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v0, "-1"

    .line 125
    .local v0, "featureCode":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_4

    .line 126
    aget-byte v4, p2, v1

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p2, v5

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->getFcFromRuim(BB)Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string/jumbo v4, "-1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 128
    const-string/jumbo v4, "SsIccFileFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onParseResult featureCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v4, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->FCNAME:[Ljava/lang/String;

    div-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 132
    :cond_4
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/SsIccFileFetcher;->mData:Ljava/util/HashMap;

    .line 110
    .end local v0    # "featureCode":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "number":Ljava/lang/String;
    :cond_5
    return-void
.end method
