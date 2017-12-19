.class public Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;
.super Landroid/os/Handler;
.source "CsimPhbStorageInfo.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CsimphbStorageInfo"

.field static sAdnRecordSize:[I

.field static sFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field static sMaxNameLength:I

.field static sMaxnumberLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 55
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sAdnRecordSize:[I

    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sMaxNameLength:I

    .line 60
    const/16 v0, 0x14

    sput v0, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sMaxnumberLength:I

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    const-string/jumbo v0, "CsimphbStorageInfo"

    const-string/jumbo v1, " CsimphbStorageInfo constructor finished. "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public static checkPhbRecordInfo(Landroid/os/Message;)V
    .locals 6
    .param p0, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 105
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sAdnRecordSize:[I

    const/16 v1, 0x14

    aput v1, v0, v4

    .line 106
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sAdnRecordSize:[I

    sget v1, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sMaxNameLength:I

    aput v1, v0, v5

    .line 108
    const-string/jumbo v0, "CsimphbStorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " [getPhbRecordInfo] sAdnRecordSize[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sAdnRecordSize:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    const-string/jumbo v2, " sAdnRecordSize[1] = "

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    sget-object v2, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sAdnRecordSize:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    const-string/jumbo v2, " sAdnRecordSize[2] = "

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    sget-object v2, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sAdnRecordSize:[I

    aget v2, v2, v4

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    const-string/jumbo v2, " sAdnRecordSize[3] = "

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    sget-object v2, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sAdnRecordSize:[I

    aget v2, v2, v5

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz p0, :cond_0

    .line 113
    invoke-static {p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sAdnRecordSize:[I

    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 115
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 102
    :cond_0
    return-void
.end method

.method public static checkPhbStorage(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->getPhbRecordStorageInfo()[I

    move-result-object v3

    .line 181
    .local v3, "stroageInfo":[I
    const/4 v8, 0x0

    aget v7, v3, v8

    .line 182
    .local v7, "usedStorage":I
    const/4 v8, 0x1

    aget v5, v3, v8

    .line 183
    .local v5, "totalStorage":I
    const/4 v4, -0x1

    .line 184
    .local v4, "totalSize":I
    const/4 v6, -0x1

    .line 185
    .local v6, "usedRecord":I
    if-eqz p0, :cond_2

    .line 186
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 187
    const/4 v6, 0x0

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    .line 191
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 192
    add-int/lit8 v6, v6, 0x1

    .line 193
    const-string/jumbo v8, "CsimphbStorageInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " print userRecord: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    const-string/jumbo v8, "CsimphbStorageInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " checkPhbStorage totalSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " usedRecord = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string/jumbo v8, "CsimphbStorageInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " checkPhbStorage totalStorage = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 200
    const-string/jumbo v10, " usedStorage = "

    .line 199
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v8, -0x1

    if-le v5, v8, :cond_3

    .line 204
    add-int v2, v6, v7

    .line 205
    .local v2, "newUsed":I
    add-int v1, v5, v4

    .line 206
    .local v1, "newTotal":I
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->setPhbRecordStorageInfo(II)V

    .line 178
    .end local v0    # "i":I
    .end local v1    # "newTotal":I
    .end local v2    # "newUsed":I
    :cond_2
    :goto_1
    return-void

    .line 208
    .restart local v0    # "i":I
    :cond_3
    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->setPhbRecordStorageInfo(II)V

    goto :goto_1
.end method

.method public static clearAdnRecordSize()V
    .locals 3

    .prologue
    .line 134
    const-string/jumbo v1, "CsimphbStorageInfo"

    const-string/jumbo v2, " clearAdnRecordSize"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sAdnRecordSize:[I

    if-eqz v1, :cond_0

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sAdnRecordSize:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 137
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sAdnRecordSize:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method

.method public static getPhbRecordStorageInfo()[I
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sAdnRecordSize:[I

    return-object v0
.end method

.method public static setMaxNameLength(I)V
    .locals 3
    .param p0, "mMaxNameLength"    # I

    .prologue
    .line 78
    sput p0, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sMaxNameLength:I

    .line 80
    const-string/jumbo v0, "CsimphbStorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " [setMaxNameLength] sMaxNameLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sMaxNameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public static setPhbRecordStorageInfo(II)V
    .locals 3
    .param p0, "totalSize"    # I
    .param p1, "usedRecord"    # I

    .prologue
    .line 90
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sAdnRecordSize:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 91
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->sAdnRecordSize:[I

    const/4 v1, 0x1

    aput p0, v0, v1

    .line 93
    const-string/jumbo v0, "CsimphbStorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " [setPhbRecordStorageInfo] usedRecord = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    const-string/jumbo v2, " | totalSize ="

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public static updatePhbStorageInfo(I)Z
    .locals 9
    .param p0, "update"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 152
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->getPhbRecordStorageInfo()[I

    move-result-object v1

    .line 154
    .local v1, "stroageInfo":[I
    aget v3, v1, v7

    .line 155
    .local v3, "used":I
    aget v2, v1, v8

    .line 157
    .local v2, "total":I
    const-string/jumbo v4, "CsimphbStorageInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " [updatePhbStorageInfo] used "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " | total : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 158
    const-string/jumbo v6, " | update : "

    .line 157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 160
    add-int v0, v3, p0

    .line 161
    .local v0, "newUsed":I
    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->setPhbRecordStorageInfo(II)V

    .line 162
    return v8

    .line 164
    .end local v0    # "newUsed":I
    :cond_0
    const-string/jumbo v4, "CsimphbStorageInfo"

    const-string/jumbo v5, " the storage info is not ready return false"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v7
.end method
