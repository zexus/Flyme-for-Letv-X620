.class public Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;
.super Ljava/lang/Object;
.source "PlusCodeHpcdTable.java"


# static fields
.field private static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "PlusCodeHpcdTable"

.field private static final MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

.field private static final MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;

.field static final PARAM_FOR_OFFSET:I = 0x2

.field static final sInstSync:Ljava/lang/Object;

.field private static sInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->sInstSync:Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/TelephonyPlusCode;->MCC_IDD_NDD_SID_MAP:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .line 62
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/TelephonyPlusCode;->MCC_SID_LTM_OFF_MAP:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCcFromMINSTableBySid(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    .locals 10
    .param p0, "sSid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 191
    const-string/jumbo v6, "PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " [getCcFromMINSTableBySid] sid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 193
    :cond_0
    const-string/jumbo v6, "PlusCodeHpcdTable"

    const-string/jumbo v7, "[getCcFromMINSTableBySid] please check the param "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-object v9

    .line 192
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-gt v6, v7, :cond_0

    .line 199
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 204
    .local v4, "sid":I
    if-gez v4, :cond_2

    .line 205
    return-object v9

    .line 200
    .end local v4    # "sid":I
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-object v9

    .line 208
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "sid":I
    :cond_2
    const/4 v3, 0x0

    .line 209
    .local v3, "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    const/4 v1, 0x0

    .line 211
    .local v1, "findMccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    array-length v5, v6

    .line 212
    .local v5, "size":I
    const/4 v2, 0x0

    .end local v3    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 213
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    aget-object v3, v6, v2

    .line 214
    .local v3, "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    iget v6, v3, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMax:I

    if-gt v4, v6, :cond_4

    iget v6, v3, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMin:I

    if-lt v4, v6, :cond_4

    .line 215
    move-object v1, v3

    .line 221
    .end local v1    # "findMccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    .end local v3    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    :cond_3
    const-string/jumbo v6, "PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " getCcFromMINSTableBySid findMccIddNddSid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-object v1

    .line 212
    .restart local v1    # "findMccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    .restart local v3    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getCcFromTableByMcc(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    .locals 11
    .param p0, "sMcc"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 86
    const-string/jumbo v7, "PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " getCcFromTableByMcc mcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 88
    :cond_0
    const-string/jumbo v7, "PlusCodeHpcdTable"

    const-string/jumbo v8, "[getCcFromTableByMcc] please check the param "

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-object v10

    .line 94
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 99
    .local v3, "mcc":I
    sget-object v7, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    array-length v5, v7

    .line 101
    .local v5, "size":I
    const/4 v4, 0x0

    .line 116
    .local v4, "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    const-string/jumbo v7, "PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " getCcFromTableByMcc size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v1, -0x1

    .line 118
    .local v1, "find":I
    const/4 v2, 0x0

    .end local v4    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 119
    sget-object v7, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    aget-object v4, v7, v2

    .line 120
    .local v4, "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->getMcc()I

    move-result v6

    .line 121
    .local v6, "tempMcc":I
    const-string/jumbo v7, "PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " getCcFromTableByMcc tempMcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-ne v6, v3, :cond_3

    .line 123
    move v1, v2

    .line 128
    .end local v4    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    .end local v6    # "tempMcc":I
    :cond_2
    const-string/jumbo v7, "PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " getCcFromTableByMcc find = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v7, -0x1

    if-le v1, v7, :cond_4

    if-ge v1, v5, :cond_4

    .line 130
    sget-object v7, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    aget-object v4, v7, v1

    .line 131
    .restart local v4    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    const-string/jumbo v7, "PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Now find Mcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mMcc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Mcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 132
    iget-object v9, v4, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mCc:Ljava/lang/String;

    .line 131
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 132
    const-string/jumbo v9, ", SidMin = "

    .line 131
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 132
    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMin:I

    .line 131
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 133
    const-string/jumbo v9, ", SidMax = "

    .line 131
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 133
    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMax:I

    .line 131
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 133
    const-string/jumbo v9, ", Idd = "

    .line 131
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 134
    iget-object v9, v4, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mIdd:Ljava/lang/String;

    .line 131
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 134
    const-string/jumbo v9, ", Ndd = "

    .line 131
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 134
    iget-object v9, v4, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mNdd:Ljava/lang/String;

    .line 131
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-object v4

    .line 95
    .end local v1    # "find":I
    .end local v2    # "i":I
    .end local v3    # "mcc":I
    .end local v4    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    .end local v5    # "size":I
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object v10

    .line 118
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "find":I
    .restart local v2    # "i":I
    .restart local v3    # "mcc":I
    .restart local v4    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    .restart local v5    # "size":I
    .restart local v6    # "tempMcc":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 137
    .end local v4    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    .end local v6    # "tempMcc":I
    :cond_4
    const-string/jumbo v7, "PlusCodeHpcdTable"

    const-string/jumbo v8, "can\'t find one that match the Mcc"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v10
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;
    .locals 2

    .prologue
    .line 68
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->sInstSync:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->sInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->sInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 73
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->sInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMccFromConflictTableBySid(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "sSid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 149
    const-string/jumbo v6, "PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " [getMccFromConflictTableBySid] sid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 151
    :cond_0
    const-string/jumbo v6, "PlusCodeHpcdTable"

    const-string/jumbo v7, "[getMccFromConflictTableBySid] please check the param "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-object v9

    .line 150
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-gt v6, v7, :cond_0

    .line 157
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 163
    .local v5, "sid":I
    if-gez v5, :cond_2

    .line 164
    return-object v9

    .line 158
    .end local v5    # "sid":I
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-object v9

    .line 167
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "sid":I
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v2, "mccArrays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 169
    .local v3, "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;

    array-length v4, v6

    .line 170
    .local v4, "mccSidMapSize":I
    const-string/jumbo v6, "PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " [getMccFromConflictTableBySid] mccSidMapSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v1, 0x0

    .end local v3    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_4

    .line 172
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;

    aget-object v3, v6, v1

    .line 173
    .local v3, "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    if-eqz v3, :cond_3

    iget v6, v3, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mSid:I

    if-ne v6, v5, :cond_3

    .line 174
    iget v6, v3, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mMcc:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    const-string/jumbo v6, "PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mccSidLtmOff  Mcc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mMcc:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 176
    const-string/jumbo v8, ", Sid = "

    .line 175
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 176
    iget v8, v3, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mSid:I

    .line 175
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 176
    const-string/jumbo v8, ", LtmOffMin = "

    .line 175
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 177
    iget v8, v3, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMin:I

    .line 175
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 177
    const-string/jumbo v8, ", LtmOffMax = "

    .line 175
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 178
    iget v8, v3, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMax:I

    .line 175
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v3    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    :cond_4
    return-object v2
.end method

.method public static getMccFromConflictTableBySidLtmOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "sSid"    # Ljava/lang/String;
    .param p1, "sLtmOff"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 302
    const-string/jumbo v9, "PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " [getMccFromConflictTableBySidLtmOff] sSid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 303
    const-string/jumbo v11, ", sLtm_off = "

    .line 302
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 306
    :cond_0
    const-string/jumbo v9, "PlusCodeHpcdTable"

    const-string/jumbo v10, "[getMccFromConflictTableBySidLtmOff] please check the param "

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-object v12

    .line 304
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-gt v9, v10, :cond_0

    .line 305
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 312
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 317
    .local v8, "sid":I
    if-gez v8, :cond_2

    .line 318
    return-object v12

    .line 313
    .end local v8    # "sid":I
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-object v12

    .line 323
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "sid":I
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 329
    .local v2, "ltmoff":I
    const-string/jumbo v9, "PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " [getMccFromConflictTableBySidLtmOff] sid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v9, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;

    array-length v5, v9

    .line 332
    .local v5, "mccSidMapSize":I
    const-string/jumbo v9, "PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " [getMccFromConflictTableBySidLtmOff] mccSidMapSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v4, 0x0

    .line 335
    .local v4, "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    const/4 v1, 0x0

    .end local v4    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_4

    .line 336
    sget-object v9, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;

    aget-object v4, v9, v1

    .line 338
    .local v4, "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMax:I

    mul-int/lit8 v3, v9, 0x2

    .line 339
    .local v3, "max":I
    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMin:I

    mul-int/lit8 v7, v9, 0x2

    .line 341
    .local v7, "min":I
    const-string/jumbo v9, "PlusCodeHpcdTable"

    .line 342
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[getMccFromConflictTableBySidLtmOff] mccSidLtmOff.Sid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 343
    iget v11, v4, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mSid:I

    .line 342
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 343
    const-string/jumbo v11, ", sid = "

    .line 342
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 344
    const-string/jumbo v11, ", ltm_off = "

    .line 342
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 344
    const-string/jumbo v11, ", max = "

    .line 342
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 345
    const-string/jumbo v11, ", min = "

    .line 342
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 341
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mSid:I

    if-ne v9, v8, :cond_3

    if-gt v2, v3, :cond_3

    if-lt v2, v7, :cond_3

    .line 348
    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mMcc:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "mccStr":Ljava/lang/String;
    const-string/jumbo v9, "PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[getMccFromConflictTableBySidLtmOff] Mcc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-object v6

    .line 324
    .end local v1    # "i":I
    .end local v2    # "ltmoff":I
    .end local v3    # "max":I
    .end local v4    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    .end local v5    # "mccSidMapSize":I
    .end local v6    # "mccStr":Ljava/lang/String;
    .end local v7    # "min":I
    :catch_1
    move-exception v0

    .line 325
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-object v12

    .line 335
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "i":I
    .restart local v2    # "ltmoff":I
    .restart local v3    # "max":I
    .restart local v4    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    .restart local v5    # "mccSidMapSize":I
    .restart local v7    # "min":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 354
    .end local v3    # "max":I
    .end local v4    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    .end local v7    # "min":I
    :cond_4
    return-object v12
.end method

.method public static getMccFromMINSTableBySid(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "sSid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 363
    const-string/jumbo v6, "PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " [getMccFromMINSTableBySid] sid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 365
    :cond_0
    const-string/jumbo v6, "PlusCodeHpcdTable"

    const-string/jumbo v7, "[getMccFromMINSTableBySid] please check the param "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-object v9

    .line 364
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-gt v6, v7, :cond_0

    .line 371
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 376
    .local v4, "sid":I
    if-gez v4, :cond_2

    .line 377
    return-object v9

    .line 372
    .end local v4    # "sid":I
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-object v9

    .line 380
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "sid":I
    :cond_2
    const/4 v2, 0x0

    .line 382
    .local v2, "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    array-length v5, v6

    .line 383
    .local v5, "size":I
    const-string/jumbo v6, "PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " [getMccFromMINSTableBySid] size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v1, 0x0

    .end local v2    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_4

    .line 386
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    aget-object v2, v6, v1

    .line 388
    .local v2, "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    const-string/jumbo v6, "PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " [getMccFromMINSTableBySid] sid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 389
    const-string/jumbo v8, ", mccIddNddSid.SidMin = "

    .line 388
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 389
    iget v8, v2, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMin:I

    .line 388
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 390
    const-string/jumbo v8, ", mccIddNddSid.SidMax = "

    .line 388
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 390
    iget v8, v2, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMax:I

    .line 388
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget v6, v2, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMin:I

    if-lt v4, v6, :cond_3

    iget v6, v2, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mSidMax:I

    if-gt v4, v6, :cond_3

    .line 393
    iget v6, v2, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mMcc:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "mccStr":Ljava/lang/String;
    const-string/jumbo v6, "PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[queryMccFromConflictTableBySid] Mcc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-object v3

    .line 385
    .end local v3    # "mccStr":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v2    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;
    :cond_4
    return-object v9
.end method

.method public static getMccMncFromSidMccMncListBySid(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "sSid"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 409
    const-string/jumbo v9, "PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " [getMccMncFromSidMccMncListBySid] sid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 411
    :cond_0
    const-string/jumbo v9, "PlusCodeHpcdTable"

    const-string/jumbo v10, "[getMccMncFromSidMccMncListBySid] please check the param "

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-object v12

    .line 410
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-gt v9, v10, :cond_0

    .line 417
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 422
    .local v8, "sid":I
    if-gez v8, :cond_2

    .line 423
    return-object v12

    .line 418
    .end local v8    # "sid":I
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-object v12

    .line 426
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "sid":I
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/TelephonyPlusCode;->getSidMccMncList()Ljava/util/List;

    move-result-object v3

    .line 427
    .local v3, "mSidMccMncList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;>;"
    const/4 v2, 0x0

    .line 428
    .local v2, "mSidMccMnc":Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;
    const/4 v1, 0x0

    .line 429
    .local v1, "left":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 431
    .local v7, "right":I
    const/4 v4, 0x0

    .line 433
    .end local v2    # "mSidMccMnc":Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;
    .local v4, "mccMnc":I
    :goto_0
    if-gt v1, v7, :cond_5

    .line 434
    add-int v9, v1, v7

    div-int/lit8 v6, v9, 0x2

    .line 435
    .local v6, "mid":I
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;

    .line 436
    .local v2, "mSidMccMnc":Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;
    iget v9, v2, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->mSid:I

    if-ge v8, v9, :cond_3

    .line 437
    add-int/lit8 v7, v6, -0x1

    goto :goto_0

    .line 438
    :cond_3
    iget v9, v2, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->mSid:I

    if-le v8, v9, :cond_4

    .line 439
    add-int/lit8 v1, v6, 0x1

    goto :goto_0

    .line 441
    :cond_4
    iget v4, v2, Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;->mMccMnc:I

    .line 446
    .end local v2    # "mSidMccMnc":Lcom/mediatek/internal/telephony/cdma/pluscode/SidMccMnc;
    .end local v6    # "mid":I
    :cond_5
    if-eqz v4, :cond_6

    .line 447
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 448
    .local v5, "mccMncStr":Ljava/lang/String;
    const-string/jumbo v9, "PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[getMccMncFromSidMccMncListBySid] MccMncStr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-object v5

    .line 451
    .end local v5    # "mccMncStr":Ljava/lang/String;
    :cond_6
    return-object v12
.end method


# virtual methods
.method public getCcFromMINSTableByLTM(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p2, "ltmOff"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "mccArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v12, "PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " getCcFromMINSTableByLTM sLtm_off = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    .line 236
    :cond_0
    const-string/jumbo v12, "PlusCodeHpcdTable"

    const-string/jumbo v13, "[getCcFromMINSTableByLTM] please check the param "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v12, 0x0

    return-object v12

    .line 235
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_0

    .line 240
    const/4 v2, 0x0

    .line 244
    .local v2, "findMcc":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 250
    .local v6, "ltmoff":I
    const-string/jumbo v12, "PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[getCcFromMINSTableByLTM]  ltm_off =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 253
    .local v3, "findOutMccSize":I
    const/4 v12, 0x1

    if-le v3, v12, :cond_4

    sget-object v12, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;

    if-eqz v12, :cond_4

    .line 254
    sget-object v12, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;

    array-length v10, v12

    .line 256
    .local v10, "mccSidMapSize":I
    const-string/jumbo v12, "PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " Conflict FindOutMccSize = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v9, 0x0

    .line 260
    .local v9, "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    const/4 v8, -0x1

    .line 261
    .local v8, "mcc":I
    const/4 v4, 0x0

    .end local v2    # "findMcc":Ljava/lang/String;
    .end local v9    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 263
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 269
    const-string/jumbo v12, "PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " Conflict mcc = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ",index = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v10, :cond_2

    .line 271
    sget-object v12, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;

    aget-object v9, v12, v5

    .line 272
    .local v9, "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    iget v12, v9, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mMcc:I

    if-ne v12, v8, :cond_3

    .line 274
    iget v12, v9, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMax:I

    mul-int/lit8 v7, v12, 0x2

    .line 275
    .local v7, "max":I
    iget v12, v9, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMin:I

    mul-int/lit8 v11, v12, 0x2

    .line 277
    .local v11, "min":I
    const-string/jumbo v12, "PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mccSidLtmOff LtmOffMin = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 278
    iget v14, v9, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMin:I

    .line 277
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 278
    const-string/jumbo v14, ", LtmOffMax = "

    .line 277
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 279
    iget v14, v9, Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;->mLtmOffMax:I

    .line 277
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-gt v6, v7, :cond_3

    if-lt v6, v11, :cond_3

    .line 281
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 261
    .end local v7    # "max":I
    .end local v9    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    .end local v11    # "min":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 245
    .end local v3    # "findOutMccSize":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "ltmoff":I
    .end local v8    # "mcc":I
    .end local v10    # "mccSidMapSize":I
    .restart local v2    # "findMcc":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v12, "PlusCodeHpcdTable"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v12, 0x0

    return-object v12

    .line 264
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "findMcc":Ljava/lang/String;
    .restart local v3    # "findOutMccSize":I
    .restart local v4    # "i":I
    .restart local v6    # "ltmoff":I
    .restart local v8    # "mcc":I
    .restart local v10    # "mccSidMapSize":I
    :catch_1
    move-exception v1

    .line 265
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v12, "PlusCodeHpcdTable"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v12, 0x0

    return-object v12

    .line 270
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "j":I
    .restart local v9    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 288
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v8    # "mcc":I
    .end local v9    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/pluscode/MccSidLtmOff;
    .end local v10    # "mccSidMapSize":I
    .restart local v2    # "findMcc":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "findMcc":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 291
    :cond_5
    const-string/jumbo v12, "PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "find one that match the ltm_off mcc = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-object v2
.end method
