.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimMipUppLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method checkLengthLegal(II)Z
    .locals 3
    .param p1, "length"    # I
    .param p2, "expectLength"    # I

    .prologue
    .line 608
    if-ge p1, p2, :cond_0

    .line 609
    const-string/jumbo v0, "RuimRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CSIM MIPUPP format error, length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 610
    const-string/jumbo v2, "expected length at least ="

    .line 609
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v0, 0x0

    return v0

    .line 613
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    const-string/jumbo v0, "EF_CSIM_MIPUPP"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 17
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 620
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 622
    .local v2, "data":[B
    array-length v14, v2

    const/4 v15, 0x1

    if-ge v14, v15, :cond_0

    .line 623
    const-string/jumbo v14, "RuimRecords"

    const-string/jumbo v15, "MIPUPP read error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void

    .line 627
    :cond_0
    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 629
    .local v1, "bitStream":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v14, 0x8

    :try_start_0
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 631
    .local v6, "mipUppLength":I
    shl-int/lit8 v6, v6, 0x3

    .line 633
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_1

    .line 634
    return-void

    .line 637
    :cond_1
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    .line 638
    .local v13, "retryInfoInclude":I
    add-int/lit8 v6, v6, -0x1

    .line 640
    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 641
    const/16 v14, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_2

    .line 642
    return-void

    .line 644
    :cond_2
    const/16 v14, 0xb

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 646
    add-int/lit8 v6, v6, -0xb

    .line 649
    :cond_3
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_4

    .line 650
    return-void

    .line 652
    :cond_4
    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 653
    .local v12, "numNai":I
    add-int/lit8 v6, v6, -0x4

    .line 656
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v12, :cond_11

    .line 657
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_5

    .line 658
    return-void

    .line 660
    :cond_5
    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    .line 661
    .local v10, "naiEntryIndex":I
    add-int/lit8 v6, v6, -0x4

    .line 663
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_6

    .line 664
    return-void

    .line 666
    :cond_6
    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    .line 667
    .local v11, "naiLength":I
    add-int/lit8 v6, v6, -0x8

    .line 669
    if-nez v10, :cond_a

    .line 671
    shl-int/lit8 v14, v11, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_7

    .line 672
    return-void

    .line 674
    :cond_7
    new-array v9, v11, [C

    .line 675
    .local v9, "naiCharArray":[C
    const/4 v5, 0x0

    .local v5, "index1":I
    :goto_1
    if-ge v5, v11, :cond_8

    .line 676
    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    and-int/lit16 v14, v14, 0xff

    int-to-char v14, v14

    aput-char v14, v9, v5

    .line 675
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 678
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v9}, Ljava/lang/String;-><init>([C)V

    invoke-static {v14, v15}, Lcom/android/internal/telephony/uicc/RuimRecords;->-set6(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 679
    const-string/jumbo v14, "RuimRecords"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 680
    const-string/jumbo v14, "RuimRecords"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "MIPUPP Nai = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get4(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_9
    return-void

    .line 685
    .end local v5    # "index1":I
    .end local v9    # "naiCharArray":[C
    :cond_a
    shl-int/lit8 v14, v11, 0x3

    add-int/lit8 v14, v14, 0x66

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_b

    .line 686
    return-void

    .line 688
    :cond_b
    shl-int/lit8 v14, v11, 0x3

    add-int/lit8 v14, v14, 0x65

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 689
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 690
    .local v7, "mnAaaSpiIndicator":I
    shl-int/lit8 v14, v11, 0x3

    add-int/lit8 v14, v14, 0x66

    sub-int/2addr v6, v14

    .line 692
    const/4 v14, 0x1

    if-ne v7, v14, :cond_d

    .line 693
    const/16 v14, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_c

    .line 694
    return-void

    .line 696
    :cond_c
    const/16 v14, 0x20

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 697
    add-int/lit8 v6, v6, -0x20

    .line 701
    :cond_d
    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_e

    .line 702
    return-void

    .line 704
    :cond_e
    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 705
    add-int/lit8 v6, v6, -0x4

    .line 706
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 707
    .local v8, "mnHaSpiIndicator":I
    add-int/lit8 v6, v6, -0x1

    .line 709
    const/4 v14, 0x1

    if-ne v8, v14, :cond_10

    .line 710
    const/16 v14, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_f

    .line 711
    return-void

    .line 713
    :cond_f
    const/16 v14, 0x20

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    add-int/lit8 v6, v6, -0x20

    .line 656
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 718
    .end local v4    # "index":I
    .end local v6    # "mipUppLength":I
    .end local v7    # "mnAaaSpiIndicator":I
    .end local v8    # "mnHaSpiIndicator":I
    .end local v10    # "naiEntryIndex":I
    .end local v11    # "naiLength":I
    .end local v12    # "numNai":I
    .end local v13    # "retryInfoInclude":I
    :catch_0
    move-exception v3

    .line 719
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "RuimRecords"

    const-string/jumbo v15, "MIPUPP read Exception error!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void

    .line 618
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "index":I
    .restart local v6    # "mipUppLength":I
    .restart local v12    # "numNai":I
    .restart local v13    # "retryInfoInclude":I
    :cond_11
    return-void
.end method
