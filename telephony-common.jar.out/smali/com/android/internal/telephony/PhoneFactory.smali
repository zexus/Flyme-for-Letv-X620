.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field private static mNetworkManager:Lcom/mediatek/internal/telephony/NetworkManager;

.field private static mProxyController:Lcom/android/internal/telephony/ProxyController;

.field private static mRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sDeviceIdenitityExt:Lcom/mediatek/common/telephony/IDeviceInformationExt;

.field private static final sLocalLogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field static final sLockProxyPhones:Ljava/lang/Object;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

.field private static sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private static sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

.field private static sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    .line 79
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 80
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 82
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 90
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 91
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 96
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLocalLog(Ljava/lang/String;I)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 528
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v1

    .line 529
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 532
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    new-instance v2, Landroid/util/LocalLog;

    invoke-direct {v2, p1}, Landroid/util/LocalLog;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 527
    return-void
.end method

.method public static calculatePreferredNetworkType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 393
    const-string/jumbo v2, "preferred_network_mode"

    .line 394
    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 392
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 395
    .local v0, "networkType":I
    const-string/jumbo v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calculatePreferredNetworkType: networkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return v0
.end method

.method public static calculatePreferredNetworkType(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneSubId"    # I

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 407
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 410
    .local v0, "networkType":I
    const-string/jumbo v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calculatePreferredNetworkType: phoneSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 411
    const-string/jumbo v3, " networkType = "

    .line 410
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return v0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 555
    const-string/jumbo v8, "PhoneFactory:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, [Lcom/android/internal/telephony/PhoneProxy;

    .line 557
    .local v7, "phones":[Lcom/android/internal/telephony/PhoneProxy;
    const/4 v1, -0x1

    .line 558
    .local v1, "i":I
    const/4 v8, 0x0

    array-length v10, v7

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v6, v7, v9

    .line 560
    .local v6, "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    add-int/lit8 v1, v1, 0x1

    .line 563
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    .line 564
    .local v5, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 571
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    :try_start_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 578
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 579
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    .end local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :goto_2
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Telephony DebugService: Could not get Phone["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "] e="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 575
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :catch_1
    move-exception v0

    .line 576
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 583
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v8

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DctController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 589
    :goto_3
    :try_start_3
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 593
    :goto_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 594
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 601
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 602
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    :try_start_5
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 609
    :goto_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 611
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v9

    .line 613
    :try_start_6
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v8, "  "

    invoke-direct {v2, p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 614
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 615
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 617
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LocalLog;

    invoke-virtual {v8, p0, v2, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 618
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 612
    .end local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 584
    :catch_2
    move-exception v0

    .line 585
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 590
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 591
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 598
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 599
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 606
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 607
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 620
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_7
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v9

    .line 554
    return-void
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    .line 273
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 274
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    .line 275
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 274
    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    .line 277
    return-object v0

    .line 273
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getDataSubscription()J
    .locals 4

    .prologue
    .line 484
    const/4 v1, -0x1

    .line 487
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 488
    const-string/jumbo v3, "multi_sim_data_call"

    .line 487
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 493
    :goto_0
    int-to-long v2, v1

    return-wide v2

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "PhoneFactory"

    const-string/jumbo v3, "Settings Exception Reading Dual Sim Data Call Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 289
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v2

    .line 290
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v1, :cond_0

    .line 291
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Default phones haven\'t been made yet!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .local v0, "phoneId":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 293
    .end local v0    # "phoneId":I
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 294
    .restart local v0    # "phoneId":I
    const-string/jumbo v1, "PhoneFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDefaultPhone before revised: phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-ltz v0, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 296
    :cond_1
    const/4 v0, 0x0

    .line 298
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1
.end method

.method public static getDefaultSubscription()I
    .locals 1

    .prologue
    .line 417
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    .line 281
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 282
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    .line 283
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 282
    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    .line 284
    return-object v0

    .line 281
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    .line 305
    const-string/jumbo v0, ""

    .line 307
    .local v0, "dbgInfo":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v3

    .line 308
    :try_start_0
    sget-boolean v2, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v2, :cond_0

    .line 309
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Default phones haven\'t been made yet!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 311
    :cond_0
    const v2, 0x7fffffff

    if-ne p0, v2, :cond_1

    .line 313
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 324
    return-object v1

    .line 316
    :cond_1
    if-ltz p0, :cond_2

    .line 317
    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge p0, v2, :cond_2

    .line 318
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v2, p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    const/4 v1, 0x0

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0
.end method

.method public static getPhones()[Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 329
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 333
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static getSMSSubscription()I
    .locals 4

    .prologue
    .line 498
    const/4 v1, -0x1

    .line 500
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 501
    const-string/jumbo v3, "multi_sim_sms"

    .line 500
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 506
    :goto_0
    return v1

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "PhoneFactory"

    const-string/jumbo v3, "Settings Exception Reading Dual Sim SMS Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getVoiceSubscription()I
    .locals 4

    .prologue
    .line 422
    const/4 v1, -0x1

    .line 425
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 426
    const-string/jumbo v3, "multi_sim_voice_call"

    .line 425
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 431
    :goto_0
    return v1

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "PhoneFactory"

    const-string/jumbo v3, "Settings Exception Reading Dual Sim Voice Call Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWorldPhone()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;
    .locals 2

    .prologue
    .line 338
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    if-nez v0, :cond_0

    .line 339
    const-string/jumbo v0, "PhoneFactory"

    const-string/jumbo v1, "sWorldPhone is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    return-object v0
.end method

.method public static isPromptEnabled()Z
    .locals 6

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 439
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 440
    const-string/jumbo v4, "multi_sim_voice_prompt"

    .line 439
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 444
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 445
    :goto_1
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Prompt option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return v0

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "PhoneFactory"

    const-string/jumbo v4, "Settings Exception Reading Dual Sim Voice Prompt Values"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static isSMSPromptEnabled()Z
    .locals 6

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 463
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 464
    const-string/jumbo v4, "multi_sim_sms_prompt"

    .line 463
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 468
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 469
    :goto_1
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SMS Prompt option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return v0

    .line 465
    :catch_0
    move-exception v1

    .line 466
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "PhoneFactory"

    const-string/jumbo v4, "Settings Exception Reading Dual Sim SMS Prompt Values"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static localLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 546
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v1

    .line 547
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 550
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 545
    return-void
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v19

    .line 114
    :try_start_0
    sget-boolean v18, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v18, :cond_8

    .line 115
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 118
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->create()Lcom/android/internal/telephony/TelephonyDevController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    const/16 v17, 0x0

    .line 122
    .local v17, "retryCount":I
    :goto_0
    const/4 v10, 0x0

    .line 123
    .local v10, "hasException":Z
    add-int/lit8 v17, v17, 0x1

    .line 128
    :try_start_1
    new-instance v18, Landroid/net/LocalServerSocket;

    const-string/jumbo v20, "com.android.internal.telephony"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :goto_1
    if-nez v10, :cond_0

    .line 145
    :try_start_2
    new-instance v18, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 147
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v5

    .line 148
    .local v5, "cdmaSubscription":I
    const-string/jumbo v18, "PhoneFactory"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Cdma Subscription set to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v13

    .line 154
    .local v13, "numPhones":I
    new-array v12, v13, [I

    .line 155
    .local v12, "networkModes":[I
    new-array v0, v13, [Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v18, v0

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 156
    new-array v0, v13, [Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 159
    const-string/jumbo v18, "persist.radio.simswitch"

    const-string/jumbo v20, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 158
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 161
    .local v4, "capabilityPhoneId":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v13, :cond_3

    .line 179
    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_2

    .line 180
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;)I

    move-result v18

    aput v18, v12, v11

    .line 185
    :goto_3
    const-string/jumbo v18, "PhoneFactory"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "RILJ Sub = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string/jumbo v18, "PhoneFactory"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "capabilityPhoneId="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 187
    const-string/jumbo v21, " Network Mode set to "

    .line 186
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 187
    aget v21, v12, v11

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 186
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v20, Lcom/android/internal/telephony/RIL;

    aget v21, v12, v11

    .line 189
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 188
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    aput-object v20, v18, v11

    .line 161
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 129
    .end local v4    # "capabilityPhoneId":I
    .end local v5    # "cdmaSubscription":I
    .end local v11    # "i":I
    .end local v12    # "networkModes":[I
    .end local v13    # "numPhones":I
    :catch_0
    move-exception v9

    .line 130
    .local v9, "ex":Ljava/io/IOException;
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 135
    .end local v9    # "ex":Ljava/io/IOException;
    :cond_0
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 136
    new-instance v18, Ljava/lang/RuntimeException;

    const-string/jumbo v20, "PhoneFactory probably already running"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .end local v10    # "hasException":Z
    .end local v17    # "retryCount":I
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 139
    .restart local v10    # "hasException":Z
    .restart local v17    # "retryCount":I
    :cond_1
    const-wide/16 v20, 0x7d0

    :try_start_3
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 140
    :catch_1
    move-exception v8

    .local v8, "er":Ljava/lang/InterruptedException;
    goto/16 :goto_0

    .line 182
    .end local v8    # "er":Ljava/lang/InterruptedException;
    .restart local v4    # "capabilityPhoneId":I
    .restart local v5    # "cdmaSubscription":I
    .restart local v11    # "i":I
    .restart local v12    # "networkModes":[I
    .restart local v13    # "numPhones":I
    :cond_2
    const/16 v18, 0x1

    :try_start_4
    aput v18, v12, v11

    goto/16 :goto_3

    .line 191
    :cond_3
    const-string/jumbo v18, "PhoneFactory"

    const-string/jumbo v20, "Creating SubscriptionController"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;

    .line 196
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 199
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v13, v1}, Lcom/mediatek/internal/telephony/RadioManager;->init(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->mRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    .line 201
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v13, v1}, Lcom/mediatek/internal/telephony/NetworkManager;->init(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/NetworkManager;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->mNetworkManager:Lcom/mediatek/internal/telephony/NetworkManager;

    .line 203
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v13, :cond_6

    .line 204
    const/4 v15, 0x0

    .line 205
    .local v15, "phone":Lcom/android/internal/telephony/PhoneBase;
    aget v18, v12, v11

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v16

    .line 206
    .local v16, "phoneType":I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 207
    new-instance v15, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 208
    .end local v15    # "phone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v18, v18, v11

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v15, v0, v1, v2, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 209
    .local v15, "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->startMonitoringImsService()V

    .line 215
    .end local v15    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_4
    :goto_5
    const-string/jumbo v18, "PhoneFactory"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Creating Phone with type = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " sub = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    new-instance v20, Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    aput-object v20, v18, v11

    .line 203
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 210
    .local v15, "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_5
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 211
    new-instance v15, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .line 212
    .end local v15    # "phone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v18, v18, v11

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 211
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v15, v0, v1, v2, v11}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 213
    .local v15, "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->startMonitoringImsService()V

    goto :goto_5

    .line 219
    .end local v15    # "phone":Lcom/android/internal/telephony/PhoneBase;
    .end local v16    # "phoneType":I
    :cond_6
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 220
    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 219
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProxyController;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ProxyController;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->mProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 225
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    const/16 v20, 0x0

    aget-object v18, v18, v20

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 226
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v20, 0x0

    aget-object v18, v18, v20

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 231
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v6

    .line 232
    .local v6, "componentName":Landroid/content/ComponentName;
    const-string/jumbo v14, "NONE"

    .line 233
    .local v14, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 234
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 236
    :cond_7
    const-string/jumbo v18, "PhoneFactory"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "defaultSmsApplication: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 241
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 243
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v18

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->updatePhonesAvailability([Lcom/android/internal/telephony/PhoneProxy;)V

    .line 244
    const-string/jumbo v18, "PhoneFactory"

    const-string/jumbo v20, "Creating SubInfoRecordUpdater "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 246
    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 245
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 247
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v18

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->updatePhonesAvailability([Lcom/android/internal/telephony/PhoneProxy;)V

    .line 249
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 250
    const-string/jumbo v18, "PhoneFactory"

    const-string/jumbo v20, "World mode support"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->init()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v4    # "capabilityPhoneId":I
    .end local v5    # "cdmaSubscription":I
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "hasException":Z
    .end local v11    # "i":I
    .end local v12    # "networkModes":[I
    .end local v13    # "numPhones":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v17    # "retryCount":I
    :cond_8
    :goto_6
    monitor-exit v19

    .line 262
    :try_start_5
    const-string/jumbo v18, "PhoneFactory"

    const-string/jumbo v19, "mDeviceIdenitityExt create"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-class v18, Lcom/mediatek/common/telephony/IDeviceInformationExt;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 263
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mediatek/common/telephony/IDeviceInformationExt;

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sDeviceIdenitityExt:Lcom/mediatek/common/telephony/IDeviceInformationExt;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 112
    :goto_7
    return-void

    .line 252
    .restart local v4    # "capabilityPhoneId":I
    .restart local v5    # "cdmaSubscription":I
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    .restart local v10    # "hasException":Z
    .restart local v11    # "i":I
    .restart local v12    # "networkModes":[I
    .restart local v13    # "numPhones":I
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v17    # "retryCount":I
    :cond_9
    :try_start_6
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 253
    const-string/jumbo v18, "PhoneFactory"

    const-string/jumbo v20, "World phone support"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->getWorldPhoneInstance()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    goto :goto_6

    .line 256
    :cond_a
    const-string/jumbo v18, "PhoneFactory"

    const-string/jumbo v20, "World phone not support"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 265
    .end local v4    # "capabilityPhoneId":I
    .end local v5    # "cdmaSubscription":I
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "hasException":Z
    .end local v11    # "i":I
    .end local v12    # "networkModes":[I
    .end local v13    # "numPhones":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v17    # "retryCount":I
    :catch_2
    move-exception v7

    .line 266
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v18, "PhoneFactory"

    const-string/jumbo v19, "mDeviceIdenitityExt create has error"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public static makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 1
    .param p0, "phoneNotifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p1, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 514
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    return-object v0
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 351
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultSubscription(I)V
    .locals 6
    .param p0, "subId"    # I

    .prologue
    const/4 v5, 0x0

    .line 359
    const-string/jumbo v3, "persist.radio.default.sub"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 362
    .local v2, "phoneId":I
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v4

    .line 364
    if-ltz v2, :cond_0

    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 365
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, v2

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 366
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 367
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 372
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "defaultMccMnc":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v3, v0, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 377
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 379
    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 380
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultSubscription : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 381
    const-string/jumbo v5, " Broadcasting Default Subscription Changed..."

    .line 380
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 358
    return-void

    .line 362
    .end local v0    # "defaultMccMnc":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static setPromptEnabled(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    .prologue
    .line 452
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 453
    .local v0, "value":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 454
    const-string/jumbo v2, "multi_sim_voice_prompt"

    .line 453
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 455
    const-string/jumbo v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVoicePromptOption to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void

    .line 452
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method public static setSMSPromptEnabled(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    .prologue
    .line 476
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 477
    .local v0, "value":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 478
    const-string/jumbo v2, "multi_sim_sms_prompt"

    .line 477
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    const-string/jumbo v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSMSPromptOption to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void

    .line 476
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "value":I
    goto :goto_0
.end method
