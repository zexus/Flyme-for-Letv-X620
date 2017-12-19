.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CdmaSMSDispatcher"

.field private static final VDBG:Z


# instance fields
.field private mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    .line 91
    const-string/jumbo v0, "CdmaSMSDispatcher"

    const-string/jumbo v1, "CdmaSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    .line 89
    return-void
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 9
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .prologue
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 401
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "CDMASMSDispatcher: copy text message to icc card"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSuccess:Z

    .line 412
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 416
    .local v2, "msgCount":I
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText storage available"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-eq p4, v7, :cond_0

    const/4 v4, 0x3

    if-ne p4, v4, :cond_1

    .line 423
    :cond_0
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText to encode deliver pdu"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_0
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[copyText msgCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    if-le v2, v7, :cond_4

    .line 433
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText multi-part message"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_8

    .line 442
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSuccess:Z

    if-nez v4, :cond_6

    .line 443
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText Exception happened when copy message"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return v7

    .line 424
    .end local v1    # "i":I
    :cond_1
    const/4 v4, 0x5

    if-eq p4, v4, :cond_2

    const/4 v4, 0x7

    if-ne p4, v4, :cond_3

    .line 425
    :cond_2
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText to encode submit pdu"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    :cond_3
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText invalid status, default is deliver pdu"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return v7

    .line 434
    :cond_4
    if-ne v2, v7, :cond_5

    .line 435
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText single-part message"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 437
    :cond_5
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText invalid message count"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return v7

    .line 447
    .restart local v1    # "i":I
    :cond_6
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p2, v4, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->createEfPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    .line 449
    .local v3, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v3, :cond_7

    .line 450
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText write submit pdu into UIM"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, v3, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 452
    const/16 v6, 0x6a

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 451
    invoke-interface {v4, p4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V

    .line 457
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 459
    :try_start_0
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v6, "[copyText wait until the message be wrote in UIM"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 466
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText thread is waked up"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 454
    :cond_7
    return v7

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v6, "[copyText interrupted while trying to copy text message into UIM"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 463
    return v7

    .line 457
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 469
    .end local v3    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSuccess:Z

    if-eqz v4, :cond_9

    .line 470
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText all messages have been copied into UIM"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v4, 0x0

    return v4

    .line 474
    :cond_9
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "[copyText copy failed"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return v7
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, "3gpp2"

    return-object v0
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 20
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;
    .param p12, "fullMessageText"    # Ljava/lang/String;

    .prologue
    .line 243
    new-instance v19, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 244
    .local v19, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 245
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 246
    const/4 v5, 0x1

    move/from16 v0, p5

    if-ne v0, v5, :cond_1

    .line 247
    const/16 v5, 0x9

    move-object/from16 v0, v19

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 251
    :goto_0
    const/4 v5, 0x1

    move-object/from16 v0, v19

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 258
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->isOmhCard()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->getNextMessageId()I

    .line 263
    :cond_0
    if-eqz p7, :cond_2

    .line 262
    .end local p8    # "lastPart":Z
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v18

    .line 265
    .local v18, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 268
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    .line 269
    const/4 v14, 0x0

    const/16 v16, 0x1

    .line 270
    const/16 v17, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p4

    move-object/from16 v15, p12

    .line 267
    invoke-virtual/range {v5 .. v17}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v5

    return-object v5

    .line 249
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v18    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local p8    # "lastPart":Z
    :cond_1
    const/4 v5, 0x4

    move-object/from16 v0, v19

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 263
    :cond_2
    const/16 p8, 0x0

    goto :goto_1
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;II)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;
    .param p12, "fullMessageText"    # Ljava/lang/String;
    .param p13, "validityPeriod"    # I
    .param p14, "priority"    # I

    .prologue
    .line 879
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->isOmhCard()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 880
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->getNextMessageId()I

    .line 884
    :cond_0
    if-eqz p7, :cond_1

    move/from16 v8, p8

    :goto_0
    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p13

    move/from16 v12, p14

    .line 883
    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v18

    .line 886
    .local v18, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v18, :cond_2

    .line 887
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 890
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    .line 891
    const/4 v14, 0x0

    const/16 v16, 0x1

    .line 892
    const/16 v17, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p4

    move-object/from16 v15, p12

    .line 889
    invoke-virtual/range {v5 .. v17}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v5

    return-object v5

    .line 884
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v18    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 894
    .restart local v18    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_2
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "CDMASMSDispatcher.getNewSubmitPduTracker(), returned null, B"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/4 v5, 0x0

    return-object v5
.end method

.method handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 8
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 126
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 127
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 128
    .local v5, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v7, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    if-ne v6, v7, :cond_1

    .line 130
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 132
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 134
    iget-object v4, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 135
    .local v4, "intent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v2, "fillIn":Landroid/content/Intent;
    const-string/jumbo v6, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 137
    const-string/jumbo v6, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v2    # "fillIn":Landroid/content/Intent;
    .end local v4    # "intent":Landroid/app/PendingIntent;
    .end local v5    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 126
    .restart local v5    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    .restart local v2    # "fillIn":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 113
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_0

    .line 115
    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 112
    :goto_0
    return-void

    .line 117
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v0, "CdmaSMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleStatusReport() called for object type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This method must be called only on ImsSMSDispatcher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 22
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "originalPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 361
    const-string/jumbo v3, "CdmaSMSDispatcher"

    const-string/jumbo v4, "CdmaSMSDispatcher, implemented for interfaces needed. sendData"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->isOmhCard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->getNextMessageId()I

    .line 369
    :cond_0
    if-eqz p7, :cond_1

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    .line 368
    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 370
    .local v8, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-nez v8, :cond_2

    .line 371
    const-string/jumbo v3, "CdmaSMSDispatcher"

    const-string/jumbo v4, "sendData error: invalid paramters, pdu == null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-void

    .line 369
    .end local v8    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .restart local v8    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_2
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p5

    .line 374
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .line 375
    .local v10, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v13

    .line 376
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 377
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v9, p0

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 375
    invoke-virtual/range {v9 .. v18}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v21

    .line 379
    .local v21, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v19

    .line 380
    .local v19, "carrierPackage":Ljava/lang/String;
    if-eqz v19, :cond_3

    .line 381
    const-string/jumbo v3, "CdmaSMSDispatcher"

    const-string/jumbo v4, "Found carrier package. w/op"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v20, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 383
    .local v20, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 359
    .end local v20    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    :goto_1
    return-void

    .line 385
    :cond_3
    const-string/jumbo v3, "CdmaSMSDispatcher"

    const-string/jumbo v4, "No carrier package. w/op"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 24
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->isOmhCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->getNextMessageId()I

    .line 157
    :cond_0
    if-eqz p6, :cond_2

    const/4 v4, 0x1

    .line 156
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v9

    .line 158
    .local v9, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v9, :cond_4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    .line 159
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v11

    .line 160
    .local v11, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v14

    .line 161
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 162
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v10, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    .line 160
    invoke-virtual/range {v10 .. v19}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v23

    .line 164
    .local v23, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v20

    .line 165
    .local v20, "carrierPackage":Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 166
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v22, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 168
    .local v22, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 149
    .end local v11    # "map":Ljava/util/HashMap;
    .end local v20    # "carrierPackage":Ljava/lang/String;
    .end local v22    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    .end local v23    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    :goto_1
    return-void

    .line 157
    .end local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 170
    .restart local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v11    # "map":Ljava/util/HashMap;
    .restart local v20    # "carrierPackage":Ljava/lang/String;
    .restart local v23    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 174
    .end local v11    # "map":Ljava/util/HashMap;
    .end local v20    # "carrierPackage":Ljava/lang/String;
    .end local v23    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "CdmaSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz p5, :cond_1

    .line 177
    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v21

    .line 179
    .local v21, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "Intent has been canceled!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string/jumbo v0, "CdmaSMSDispatcher"

    const-string/jumbo v1, "Error! The functionality sendMultipartData is not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void
.end method

.method protected sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 28
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .param p9, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v16

    .line 565
    .local v16, "fullMessageText":Ljava/lang/String;
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "CdmaSMSDispatcher, implemented by for interfaces needed. sendMultipartTextWithEncodingType"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v24, v0

    .line 568
    .local v24, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 569
    .local v23, "msgCount":I
    move/from16 v20, p4

    .line 570
    .local v20, "encoding":I
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "want to use encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    if-ltz v20, :cond_0

    const/16 v4, 0xa

    move/from16 v0, v20

    if-le v0, v4, :cond_1

    .line 574
    :cond_0
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unavalid encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "to use the unkown default."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/16 v20, 0x0

    .line 579
    :cond_1
    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v21, v0

    .line 580
    .local v21, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v20, :cond_4

    .line 581
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "unkown encoding, to find one best."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 583
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v19

    .line 584
    .local v19, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v20

    if-eq v0, v4, :cond_3

    .line 585
    if-eqz v20, :cond_2

    .line 586
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_3

    .line 587
    :cond_2
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v20, v0

    .line 589
    :cond_3
    aput-object v19, v21, v22

    .line 582
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 592
    .end local v19    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v22    # "i":I
    :cond_4
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "APP want use specified encoding type."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 595
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move/from16 v0, v20

    invoke-static {v4, v5, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v19

    .line 596
    .restart local v19    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 597
    aput-object v19, v21, v22

    .line 593
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 601
    .end local v19    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v27, v0

    .line 604
    .local v27, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 605
    .local v13, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v14, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 607
    .local v14, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "now to send one by one, msgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 609
    new-instance v18, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 610
    .local v18, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 611
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 612
    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 619
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 620
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 621
    .local v8, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 623
    const/4 v10, 0x0

    .line 624
    .local v10, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    if-le v4, v0, :cond_6

    .line 625
    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 628
    :cond_6
    const/4 v11, 0x0

    .line 629
    .local v11, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_7

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    if-le v4, v0, :cond_7

    .line 630
    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 633
    :cond_7
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "to send the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " part"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 636
    aget-object v4, v21, v22

    iget v9, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 637
    add-int/lit8 v4, v23, -0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_8

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v15, p7

    .line 635
    invoke-virtual/range {v4 .. v16}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v4

    .line 634
    aput-object v4, v27, v22

    .line 608
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 637
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 641
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v18    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_9
    if-eqz p3, :cond_a

    if-nez v27, :cond_b

    .line 643
    :cond_a
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendMultipartTextWithEncodingType: Cannot send multipart text. parts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 644
    const-string/jumbo v6, " trackers="

    .line 643
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void

    .line 641
    :cond_b
    move-object/from16 v0, v27

    array-length v4, v0

    if-eqz v4, :cond_a

    .line 642
    const/4 v4, 0x0

    aget-object v4, v27, v4

    if-eqz v4, :cond_a

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v17

    .line 649
    .local v17, "carrierPackage":Ljava/lang/String;
    if-eqz v17, :cond_d

    .line 650
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "sendMultipartTextWithEncodingType: Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v25, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 653
    .local v25, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    .line 652
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    .line 560
    .end local v25    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    :cond_c
    return-void

    .line 655
    :cond_d
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "sendMultipartTextWithEncodingType: No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v4, 0x0

    move-object/from16 v0, v27

    array-length v5, v0

    :goto_4
    if-ge v4, v5, :cond_c

    aget-object v26, v27, v4

    .line 657
    .local v26, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v26, :cond_e

    .line 658
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 656
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 660
    :cond_e
    const-string/jumbo v6, "CdmaSMSDispatcher"

    const-string/jumbo v7, "sendMultipartTextWithEncodingType: Null tracker."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 30
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .param p9, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 751
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v16

    .line 754
    .local v16, "fullMessageText":Ljava/lang/String;
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "CdmaSMSDispatcher, implemented by for interfaces needed. sendMultipartTextWithExtraParams"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    if-nez p4, :cond_4

    .line 761
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "extraParams == null, will encoding with no extra feature."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/16 v17, -0x1

    .line 763
    .local v17, "validityPeriod":I
    const/16 v18, -0x1

    .line 764
    .local v18, "priority":I
    const/16 v22, 0x0

    .line 771
    .local v22, "encoding":I
    :goto_0
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "validityPeriod is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "priority is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "want to use encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v26, v0

    .line 776
    .local v26, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 779
    .local v25, "msgCount":I
    if-ltz v22, :cond_0

    const/16 v4, 0xa

    move/from16 v0, v22

    if-le v0, v4, :cond_1

    .line 780
    :cond_0
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unavalid encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "to use the unkown default."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/16 v22, 0x0

    .line 785
    :cond_1
    move/from16 v0, v25

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v23, v0

    .line 786
    .local v23, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v22, :cond_5

    .line 787
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "unkown encoding, to find one best."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 789
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v21

    .line 790
    .local v21, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v22

    if-eq v0, v4, :cond_3

    .line 791
    if-eqz v22, :cond_2

    .line 792
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_3

    .line 793
    :cond_2
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v22, v0

    .line 795
    :cond_3
    aput-object v21, v23, v24

    .line 788
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 766
    .end local v17    # "validityPeriod":I
    .end local v18    # "priority":I
    .end local v21    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v22    # "encoding":I
    .end local v23    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v24    # "i":I
    .end local v25    # "msgCount":I
    .end local v26    # "refNumber":I
    :cond_4
    const-string/jumbo v4, "validity_period"

    const/4 v5, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 767
    .restart local v17    # "validityPeriod":I
    const-string/jumbo v4, "priority"

    const/4 v5, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 768
    .restart local v18    # "priority":I
    const-string/jumbo v4, "encoding_type"

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .restart local v22    # "encoding":I
    goto/16 :goto_0

    .line 798
    .restart local v23    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v25    # "msgCount":I
    .restart local v26    # "refNumber":I
    :cond_5
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "APP want use specified encoding type."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 801
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move/from16 v0, v22

    invoke-static {v4, v5, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v21

    .line 802
    .restart local v21    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 803
    aput-object v21, v23, v24

    .line 799
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 807
    .end local v21    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_6
    move/from16 v0, v25

    new-array v0, v0, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v29, v0

    .line 810
    .local v29, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v0, v25

    invoke-direct {v13, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 811
    .local v13, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v14, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 813
    .local v14, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "now to send one by one, msgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/16 v24, 0x0

    :goto_3
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 815
    new-instance v20, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 816
    .local v20, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 817
    add-int/lit8 v4, v24, 0x1

    move-object/from16 v0, v20

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 818
    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 825
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 826
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 827
    .local v8, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v20

    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 829
    const/4 v10, 0x0

    .line 830
    .local v10, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-le v4, v0, :cond_7

    .line 831
    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 834
    :cond_7
    const/4 v11, 0x0

    .line 835
    .local v11, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_8

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-le v4, v0, :cond_8

    .line 836
    move-object/from16 v0, p6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 840
    :cond_8
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 841
    aget-object v4, v23, v24

    iget v9, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 842
    add-int/lit8 v4, v25, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_9

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v15, p7

    .line 840
    invoke-virtual/range {v4 .. v18}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;II)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v4

    .line 839
    aput-object v4, v29, v24

    .line 814
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 842
    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    .line 847
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v20    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_a
    if-eqz p3, :cond_b

    if-nez v29, :cond_c

    .line 849
    :cond_b
    const-string/jumbo v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendMultipartTextWithExtraParams: Cannot send multipart text. parts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 850
    const-string/jumbo v6, " trackers="

    .line 849
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return-void

    .line 847
    :cond_c
    move-object/from16 v0, v29

    array-length v4, v0

    if-eqz v4, :cond_b

    .line 848
    const/4 v4, 0x0

    aget-object v4, v29, v4

    if-eqz v4, :cond_b

    .line 854
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v19

    .line 855
    .local v19, "carrierPackage":Ljava/lang/String;
    if-eqz v19, :cond_e

    .line 856
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "sendMultipartTextWithExtraParams: Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    new-instance v27, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 859
    .local v27, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    .line 858
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    .line 749
    .end local v27    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    :cond_d
    return-void

    .line 861
    :cond_e
    const-string/jumbo v4, "CdmaSMSDispatcher"

    const-string/jumbo v5, "sendMultipartTextWithExtraParams: No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v4, 0x0

    move-object/from16 v0, v29

    array-length v5, v0

    :goto_5
    if-ge v4, v5, :cond_d

    aget-object v28, v29, v4

    .line 863
    .local v28, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v28, :cond_f

    .line 864
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 862
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 866
    :cond_f
    const-string/jumbo v6, "CdmaSMSDispatcher"

    const-string/jumbo v7, "sendMultipartTextWithExtraParams: Null tracker."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 288
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 291
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "pdu"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 294
    .local v2, "pdu":[B
    const/4 v0, 0x0

    .line 295
    .local v0, "isReadySend":Z
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 296
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_1

    .line 297
    :cond_0
    const-string/jumbo v3, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Add tracker into the list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 301
    const/4 v0, 0x1

    :cond_2
    monitor-exit v4

    .line 305
    if-nez v0, :cond_3

    .line 306
    const-string/jumbo v3, "CdmaSMSDispatcher"

    const-string/jumbo v4, "There is another tracker in-queue and is sending"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void

    .line 295
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 311
    :cond_3
    const-string/jumbo v3, "CdmaSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendSms:  isIms()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 313
    const-string/jumbo v5, " mRetryCount="

    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 313
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 314
    const-string/jumbo v5, " mImsRetry="

    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 314
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 315
    const-string/jumbo v5, " mMessageRef="

    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 315
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 316
    const-string/jumbo v5, " SS="

    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 316
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 287
    return-void
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v7, 0x0

    .line 324
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 326
    .local v4, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v4, :cond_0

    .line 327
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNotInServiceError(I)I

    move-result v6

    invoke-virtual {p1, v5, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 328
    return-void

    .line 331
    :cond_0
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 332
    .local v3, "reply":Landroid/os/Message;
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string/jumbo v6, "pdu"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 334
    .local v2, "pdu":[B
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .line 335
    .local v0, "currentDataNetwork":I
    const/16 v5, 0xe

    if-eq v0, v5, :cond_4

    .line 336
    const/16 v5, 0xd

    if-ne v0, v5, :cond_1

    .line 337
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 335
    :cond_1
    const/4 v1, 0x0

    .line 346
    .local v1, "imsSmsDisabled":Z
    :goto_0
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    if-eqz v1, :cond_6

    .line 347
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    .line 323
    :goto_1
    return-void

    .line 338
    .end local v1    # "imsSmsDisabled":Z
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v5

    .line 339
    const/4 v6, 0x7

    .line 338
    if-ne v5, v6, :cond_1

    .line 340
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_5

    const/4 v1, 0x1

    .restart local v1    # "imsSmsDisabled":Z
    goto :goto_0

    .end local v1    # "imsSmsDisabled":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "imsSmsDisabled":Z
    goto :goto_0

    .line 349
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface {v5, v2, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BIILandroid/os/Message;)V

    .line 352
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto :goto_1
.end method

.method sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 1
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 108
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v2, 0x0

    .line 275
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 280
    return-void

    .line 282
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 274
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 20
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z

    .prologue
    .line 191
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->isOmhCard()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->getNextMessageId()I

    .line 196
    :cond_0
    if-eqz p5, :cond_2

    const/4 v5, 0x1

    :goto_0
    const/4 v7, 0x0

    .line 195
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v5, v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v17

    .line 197
    .local v17, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v17, :cond_4

    .line 198
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 199
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    .line 200
    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p3

    move/from16 v14, p8

    .line 199
    invoke-virtual/range {v5 .. v14}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v19

    .line 202
    .local v19, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v15

    .line 203
    .local v15, "carrierPackage":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 204
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "Found carrier package."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v18, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 206
    .local v18, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v5}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 189
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v15    # "carrierPackage":Ljava/lang/String;
    .end local v18    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v19    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    :goto_1
    return-void

    .line 196
    .end local v17    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 208
    .restart local v6    # "map":Ljava/util/HashMap;
    .restart local v15    # "carrierPackage":Ljava/lang/String;
    .restart local v17    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v19    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "No carrier package."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 212
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v15    # "carrierPackage":Ljava/lang/String;
    .end local v19    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "CdmaSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz p4, :cond_1

    .line 215
    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 216
    :catch_0
    move-exception v16

    .line 217
    .local v16, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "Intent has been canceled!"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 23
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .param p9, "persistMessage"    # Z

    .prologue
    .line 483
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "CdmaSMSDispatcher, implemented for interfaces needed. sendTextWithEncodingType"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    move/from16 v17, p4

    .line 487
    .local v17, "encoding":I
    const-string/jumbo v5, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "want to use encoding = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    if-ltz v17, :cond_0

    const/16 v5, 0xa

    move/from16 v0, v17

    if-le v0, v5, :cond_1

    .line 491
    :cond_0
    const-string/jumbo v5, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unavalid encoding = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "to use the unkown default."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/16 v17, 0x0

    .line 496
    :cond_1
    if-nez v17, :cond_3

    .line 497
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "unkown encoding, to find one best."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v16

    .line 499
    .local v16, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v17

    if-eq v0, v5, :cond_3

    .line 500
    if-eqz v17, :cond_2

    .line 501
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_3

    .line 502
    :cond_2
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v17, v0

    .line 506
    .end local v16    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    new-instance v22, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 507
    .local v22, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 508
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_6

    .line 509
    const/4 v5, 0x2

    move-object/from16 v0, v22

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 515
    :goto_0
    const/4 v5, 0x1

    move-object/from16 v0, v22

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 522
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->isOmhCard()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 523
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->getNextMessageId()I

    .line 527
    :cond_4
    if-eqz p6, :cond_8

    const/4 v5, 0x1

    .line 526
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v20

    .line 529
    .local v20, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v20, :cond_a

    .line 530
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 531
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    .line 532
    const/4 v11, 0x0

    const/4 v13, 0x1

    .line 533
    const/4 v14, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p3

    .line 531
    invoke-virtual/range {v5 .. v14}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v21

    .line 535
    .local v21, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v15

    .line 536
    .local v15, "carrierPackage":Ljava/lang/String;
    if-eqz v15, :cond_9

    .line 537
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "sendTextWithEncodingType: Found carrier package."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v19, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 539
    .local v19, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v5}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 481
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v15    # "carrierPackage":Ljava/lang/String;
    .end local v19    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v21    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_5
    :goto_2
    return-void

    .line 510
    .end local v20    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v5, 0x2

    move/from16 v0, v17

    if-ne v0, v5, :cond_7

    .line 511
    const/4 v5, 0x0

    move-object/from16 v0, v22

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 513
    :cond_7
    const/4 v5, 0x4

    move-object/from16 v0, v22

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto/16 :goto_0

    .line 527
    :cond_8
    const/4 v5, 0x0

    goto :goto_1

    .line 541
    .restart local v6    # "map":Ljava/util/HashMap;
    .restart local v15    # "carrierPackage":Ljava/lang/String;
    .restart local v20    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v21    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_9
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "sendTextWithEncodingType: No carrier package."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 545
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v15    # "carrierPackage":Ljava/lang/String;
    .end local v21    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_a
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "sendTextWithEncodingType: submitPdu is null"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-eqz p5, :cond_5

    .line 548
    const/4 v5, 0x3

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 549
    :catch_0
    move-exception v18

    .line 550
    .local v18, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v7, "failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 29
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .param p9, "persistMessage"    # Z

    .prologue
    .line 671
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "CdmaSMSDispatcher, implemented by for interfaces needed. sendTextWithExtraParams"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    if-nez p4, :cond_6

    .line 679
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "extraParams == null, will encoding with no extra feature."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v11, -0x1

    .line 681
    .local v11, "validityPeriod":I
    const/4 v12, -0x1

    .line 682
    .local v12, "priority":I
    const/4 v10, 0x0

    .line 689
    .local v10, "encoding":I
    :goto_0
    const-string/jumbo v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validityPeriod is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string/jumbo v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "priority is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string/jumbo v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "want to use encoding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    if-ltz v10, :cond_0

    const/16 v5, 0xa

    if-le v10, v5, :cond_1

    .line 695
    :cond_0
    const-string/jumbo v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unavalid encoding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "to use the unkown default."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v10, 0x0

    .line 700
    :cond_1
    if-nez v10, :cond_3

    .line 701
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "unkown encoding, to find one best."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v24

    .line 703
    .local v24, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v5, :cond_3

    .line 704
    if-eqz v10, :cond_2

    .line 705
    const/4 v5, 0x1

    if-ne v10, v5, :cond_3

    .line 706
    :cond_2
    move-object/from16 v0, v24

    iget v10, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 711
    .end local v24    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->isOmhCard()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 712
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIccFileAdapter:Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/uicc/IccFileAdapter;->getNextMessageId()I

    .line 717
    :cond_4
    if-eqz p6, :cond_7

    const/4 v8, 0x1

    :goto_1
    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    .line 716
    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v27

    .line 719
    .local v27, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v27, :cond_9

    .line 720
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v14

    .line 721
    .local v14, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v17

    .line 722
    const/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v13, p0

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v18, p7

    move-object/from16 v20, p3

    .line 721
    invoke-virtual/range {v13 .. v22}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v28

    .line 724
    .local v28, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v23

    .line 725
    .local v23, "carrierPackage":Ljava/lang/String;
    if-eqz v23, :cond_8

    .line 726
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "sendTextWithExtraParams: Found carrier package."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v26, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 728
    .local v26, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v5, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 669
    .end local v14    # "map":Ljava/util/HashMap;
    .end local v23    # "carrierPackage":Ljava/lang/String;
    .end local v26    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v28    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_5
    :goto_2
    return-void

    .line 684
    .end local v10    # "encoding":I
    .end local v11    # "validityPeriod":I
    .end local v12    # "priority":I
    .end local v27    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_6
    const-string/jumbo v5, "validity_period"

    const/4 v6, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 685
    .restart local v11    # "validityPeriod":I
    const-string/jumbo v5, "priority"

    const/4 v6, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 686
    .restart local v12    # "priority":I
    const-string/jumbo v5, "encoding_type"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .restart local v10    # "encoding":I
    goto/16 :goto_0

    .line 717
    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    .line 730
    .restart local v14    # "map":Ljava/util/HashMap;
    .restart local v23    # "carrierPackage":Ljava/lang/String;
    .restart local v27    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v28    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "sendTextWithExtraParams: No carrier package."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 734
    .end local v14    # "map":Ljava/util/HashMap;
    .end local v23    # "carrierPackage":Ljava/lang/String;
    .end local v28    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_9
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "sendTextWithExtraParams: submitPdu is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    if-eqz p5, :cond_5

    .line 737
    const/4 v5, 0x3

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 738
    :catch_0
    move-exception v25

    .line 739
    .local v25, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
