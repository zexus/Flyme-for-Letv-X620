.class public final Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;
.super Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;
.source "SmsbcIccFileFetcher.java"


# static fields
.field private static final BCSMSCFG:Ljava/lang/String; = "ef_bcsmscfg"

.field private static final BCSMSP:Ljava/lang/String; = "ef_bcsmsp"

.field private static final BCSMSTABLE:Ljava/lang/String; = "ef_bcsmstable"

.field private static final TAG:Ljava/lang/String; = "SmsbcIccFileFetcher"


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
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    .line 66
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    const-string/jumbo v1, "ef_bcsmscfg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    const-string/jumbo v1, "ef_bcsmstable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    const-string/jumbo v1, "ef_bcsmsp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method


# virtual methods
.method public getBcsmsCfgFromRuim(II)I
    .locals 20
    .param p1, "userServiceCategory"    # I
    .param p2, "userPriorityIndicator"    # I

    .prologue
    .line 156
    const/4 v11, 0x2

    .line 157
    .local v11, "ret":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;->mData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string/jumbo v18, "ef_bcsmscfg"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 159
    .local v2, "cfg":[B
    if-eqz v2, :cond_0

    array-length v0, v2

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 160
    :cond_0
    const/16 v17, -0x1

    return v17

    .line 162
    :cond_1
    const/16 v17, 0x0

    aget-byte v5, v2, v17

    .line 163
    .local v5, "config":B
    const-string/jumbo v17, "SmsbcIccFileFetcher"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getBcsmsCfgFromRuim config = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_2

    .line 165
    and-int/lit8 v11, v5, 0x3

    .line 167
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_3

    .line 168
    return v11

    .line 170
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;->mData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string/jumbo v18, "ef_bcsmstable"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashMap;

    .line 171
    .local v16, "tables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;->mData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string/jumbo v18, "ef_bcsmsp"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 173
    .local v9, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    if-eqz v16, :cond_4

    if-nez v9, :cond_5

    .line 174
    :cond_4
    const/4 v11, -0x1

    .line 175
    return v11

    .line 178
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 179
    .local v6, "i":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 180
    .local v15, "t":[B
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 181
    .local v8, "p":[B
    if-eqz v15, :cond_6

    if-eqz v8, :cond_6

    .line 182
    const/16 v17, 0x0

    aget-byte v17, v15, v17

    and-int/lit8 v14, v17, 0x1

    .line 183
    .local v14, "status":I
    const/16 v17, 0x0

    aget-byte v17, v8, v17

    and-int/lit8 v12, v17, 0x1

    .line 184
    .local v12, "select":I
    const-string/jumbo v17, "SmsbcIccFileFetcher"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getBcsmsCfgFromRuim status="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " select="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_6

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_6

    .line 186
    const/16 v17, 0x1

    aget-byte v3, v15, v17

    .line 187
    .local v3, "ch1":B
    const/16 v17, 0x2

    aget-byte v4, v15, v17

    .line 188
    .local v4, "ch2":B
    shl-int/lit8 v17, v3, 0x8

    add-int v13, v17, v4

    .line 189
    .local v13, "serviceCategory":I
    const-string/jumbo v17, "SmsbcIccFileFetcher"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getBcsmsCfgFromRuim serviceCategory="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string/jumbo v17, "SmsbcIccFileFetcher"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "userServiceCategory="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move/from16 v0, p1

    if-ne v13, v0, :cond_6

    .line 193
    const/16 v17, 0x1

    aget-byte v17, v8, v17

    and-int/lit8 v10, v17, 0x3

    .line 194
    .local v10, "priority":I
    const-string/jumbo v17, "SmsbcIccFileFetcher"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getBcsmsCfgFromRuim priority="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    move/from16 v0, p2

    if-lt v0, v10, :cond_9

    .line 196
    const/4 v11, 0x2

    .line 205
    .end local v3    # "ch1":B
    .end local v4    # "ch2":B
    .end local v6    # "i":Ljava/lang/String;
    .end local v8    # "p":[B
    .end local v10    # "priority":I
    .end local v12    # "select":I
    .end local v13    # "serviceCategory":I
    .end local v14    # "status":I
    .end local v15    # "t":[B
    :cond_7
    :goto_0
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_8

    .line 206
    const/4 v11, -0x1

    .line 208
    :cond_8
    return v11

    .line 198
    .restart local v3    # "ch1":B
    .restart local v4    # "ch2":B
    .restart local v6    # "i":Ljava/lang/String;
    .restart local v8    # "p":[B
    .restart local v10    # "priority":I
    .restart local v12    # "select":I
    .restart local v13    # "serviceCategory":I
    .restart local v14    # "status":I
    .restart local v15    # "t":[B
    :cond_9
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public onGetFilePara(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 85
    const-string/jumbo v0, "ef_bcsmscfg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 88
    const-string/jumbo v4, "3F007F25"

    .line 87
    const/16 v1, 0x6f5b

    const/4 v2, 0x1

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;-><init>(IIILjava/lang/String;[BILjava/lang/String;)V

    return-object v0

    .line 85
    :cond_0
    const-string/jumbo v0, "ef_bcsmstable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 91
    const-string/jumbo v4, "3F007F25"

    .line 90
    const/16 v1, 0x6f5d

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;-><init>(IIILjava/lang/String;[BILjava/lang/String;)V

    return-object v0

    .line 85
    :cond_1
    const-string/jumbo v0, "ef_bcsmsp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 94
    const-string/jumbo v4, "3F007F25"

    .line 93
    const/16 v1, 0x6f5e

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;-><init>(IIILjava/lang/String;[BILjava/lang/String;)V

    return-object v0

    .line 96
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
    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V
    .locals 11
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
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 109
    const-string/jumbo v6, "ef_bcsmscfg"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    const-string/jumbo v6, "SmsbcIccFileFetcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BCSMSCFG = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v7, "ef_bcsmscfg"

    invoke-virtual {v6, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string/jumbo v6, "ef_bcsmstable"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 113
    const-string/jumbo v6, "SmsbcIccFileFetcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BCSMSTABLE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 115
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v5, "tables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 117
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 118
    .local v1, "item":[B
    if-eqz v1, :cond_2

    array-length v6, v1

    if-lez v6, :cond_2

    .line 119
    const-string/jumbo v6, "SmsbcIccFileFetcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BCSMSTABLE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    aget-byte v6, v1, v9

    and-int/lit8 v4, v6, 0x1

    .line 122
    .local v4, "status":I
    if-ne v4, v10, :cond_2

    .line 123
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v4    # "status":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    .end local v1    # "item":[B
    :cond_3
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v7, "ef_bcsmstable"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 129
    .end local v0    # "i":I
    .end local v5    # "tables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :cond_4
    const-string/jumbo v6, "ef_bcsmsp"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 130
    const-string/jumbo v6, "SmsbcIccFileFetcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BCSMSP = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 132
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 134
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 135
    .restart local v1    # "item":[B
    if-eqz v1, :cond_5

    array-length v6, v1

    if-lez v6, :cond_5

    .line 136
    const-string/jumbo v6, "SmsbcIccFileFetcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BCSMSP = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    aget-byte v6, v1, v9

    and-int/lit8 v3, v6, 0x1

    .line 139
    .local v3, "select":I
    if-ne v3, v10, :cond_5

    .line 140
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .end local v3    # "select":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 144
    .end local v1    # "item":[B
    :cond_6
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/SmsbcIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v7, "ef_bcsmsp"

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
