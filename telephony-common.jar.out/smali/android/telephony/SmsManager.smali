.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field public static final CELL_BROADCAST_RAN_TYPE_CDMA:I = 0x1

.field public static final CELL_BROADCAST_RAN_TYPE_GSM:I = 0x0

.field private static final DEFAULT_SUBSCRIPTION_ID:I = -0x3ea

.field private static DIALOG_TYPE_KEY:Ljava/lang/String; = null

.field public static final EXTRA_MMS_DATA:Ljava/lang/String; = "android.telephony.extra.MMS_DATA"

.field public static final EXTRA_MMS_HTTP_STATUS:Ljava/lang/String; = "android.telephony.extra.MMS_HTTP_STATUS"

.field public static final EXTRA_PARAMS_ENCODING_TYPE:Ljava/lang/String; = "encoding_type"

.field public static final EXTRA_PARAMS_VALIDITY_PERIOD:Ljava/lang/String; = "validity_period"

.field public static final MESSAGE_STATUS_READ:Ljava/lang/String; = "read"

.field public static final MESSAGE_STATUS_SEEN:Ljava/lang/String; = "seen"

.field public static final MMS_CONFIG_ALIAS_ENABLED:Ljava/lang/String; = "aliasEnabled"

.field public static final MMS_CONFIG_ALIAS_MAX_CHARS:Ljava/lang/String; = "aliasMaxChars"

.field public static final MMS_CONFIG_ALIAS_MIN_CHARS:Ljava/lang/String; = "aliasMinChars"

.field public static final MMS_CONFIG_ALLOW_ATTACH_AUDIO:Ljava/lang/String; = "allowAttachAudio"

.field public static final MMS_CONFIG_APPEND_TRANSACTION_ID:Ljava/lang/String; = "enabledTransID"

.field public static final MMS_CONFIG_EMAIL_GATEWAY_NUMBER:Ljava/lang/String; = "emailGatewayNumber"

.field public static final MMS_CONFIG_GROUP_MMS_ENABLED:Ljava/lang/String; = "enableGroupMms"

.field public static final MMS_CONFIG_HTTP_PARAMS:Ljava/lang/String; = "httpParams"

.field public static final MMS_CONFIG_HTTP_SOCKET_TIMEOUT:Ljava/lang/String; = "httpSocketTimeout"

.field public static final MMS_CONFIG_MAX_IMAGE_HEIGHT:Ljava/lang/String; = "maxImageHeight"

.field public static final MMS_CONFIG_MAX_IMAGE_WIDTH:Ljava/lang/String; = "maxImageWidth"

.field public static final MMS_CONFIG_MAX_MESSAGE_SIZE:Ljava/lang/String; = "maxMessageSize"

.field public static final MMS_CONFIG_MESSAGE_TEXT_MAX_SIZE:Ljava/lang/String; = "maxMessageTextSize"

.field public static final MMS_CONFIG_MMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableMMSDeliveryReports"

.field public static final MMS_CONFIG_MMS_ENABLED:Ljava/lang/String; = "enabledMMS"

.field public static final MMS_CONFIG_MMS_READ_REPORT_ENABLED:Ljava/lang/String; = "enableMMSReadReports"

.field public static final MMS_CONFIG_MULTIPART_SMS_ENABLED:Ljava/lang/String; = "enableMultipartSMS"

.field public static final MMS_CONFIG_NAI_SUFFIX:Ljava/lang/String; = "naiSuffix"

.field public static final MMS_CONFIG_NOTIFY_WAP_MMSC_ENABLED:Ljava/lang/String; = "enabledNotifyWapMMSC"

.field public static final MMS_CONFIG_RECIPIENT_LIMIT:Ljava/lang/String; = "recipientLimit"

.field public static final MMS_CONFIG_SEND_MULTIPART_SMS_AS_SEPARATE_MESSAGES:Ljava/lang/String; = "sendMultipartSmsAsSeparateMessages"

.field public static final MMS_CONFIG_SHOW_CELL_BROADCAST_APP_LINKS:Ljava/lang/String; = "config_cellBroadcastAppLinks"

.field public static final MMS_CONFIG_SMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableSMSDeliveryReports"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_LENGTH_THRESHOLD:Ljava/lang/String; = "smsToMmsTextLengthThreshold"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_THRESHOLD:Ljava/lang/String; = "smsToMmsTextThreshold"

.field public static final MMS_CONFIG_SUBJECT_MAX_LENGTH:Ljava/lang/String; = "maxSubjectLength"

.field public static final MMS_CONFIG_SUPPORT_HTTP_CHARSET_HEADER:Ljava/lang/String; = "supportHttpCharsetHeader"

.field public static final MMS_CONFIG_SUPPORT_MMS_CONTENT_DISPOSITION:Ljava/lang/String; = "supportMmsContentDisposition"

.field public static final MMS_CONFIG_UA_PROF_TAG_NAME:Ljava/lang/String; = "uaProfTagName"

.field public static final MMS_CONFIG_UA_PROF_URL:Ljava/lang/String; = "uaProfUrl"

.field public static final MMS_CONFIG_USER_AGENT:Ljava/lang/String; = "userAgent"

.field public static final MMS_ERROR_CONFIGURATION_ERROR:I = 0x7

.field public static final MMS_ERROR_HTTP_FAILURE:I = 0x4

.field public static final MMS_ERROR_INVALID_APN:I = 0x2

.field public static final MMS_ERROR_IO_ERROR:I = 0x5

.field public static final MMS_ERROR_NO_DATA_NETWORK:I = 0x8

.field public static final MMS_ERROR_RETRY:I = 0x6

.field public static final MMS_ERROR_UNABLE_CONNECT_MMS:I = 0x3

.field public static final MMS_ERROR_UNSPECIFIED:I = 0x1

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_INVALID_ADDRESS:I = 0x8

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_SIM_MEM_FULL:I = 0x7

.field public static final RESULT_ERROR_SUCCESS:I = 0x0

.field private static final SMS_PICK:I = 0x2

.field public static final SMS_TYPE_INCOMING:I = 0x0

.field public static final SMS_TYPE_OUTGOING:I = 0x1

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SmsManager"

.field public static final VALIDITY_PERIOD_MAX_DURATION:I = 0xff

.field public static final VALIDITY_PERIOD_NO_DURATION:I = -0x1

.field public static final VALIDITY_PERIOD_ONE_DAY:I = 0xa7

.field public static final VALIDITY_PERIOD_ONE_HOUR:I = 0xb

.field public static final VALIDITY_PERIOD_SIX_HOURS:I = 0x47

.field public static final VALIDITY_PERIOD_TWELVE_HOURS:I = 0x8f

.field private static final sInstance:Landroid/telephony/SmsManager;

.field private static final sLockObject:Ljava/lang/Object;

.field private static final sSubInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/SmsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

.field private mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/telephony/SmsManager;

    const/16 v1, -0x3ea

    invoke-direct {v0, v1}, Landroid/telephony/SmsManager;-><init>(I)V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 99
    sput-object v0, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    .line 275
    const-string/jumbo v0, "dialog_type"

    sput-object v0, Landroid/telephony/SmsManager;->DIALOG_TYPE_KEY:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private constructor <init>(I)V
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object v3, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 283
    iput-object v3, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    .line 739
    iput p1, p0, Landroid/telephony/SmsManager;->mSubId:I

    .line 742
    const-string/jumbo v3, "ro.mtk_bsp_package"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 745
    :try_start_0
    const-class v3, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    iput-object v3, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 746
    iget-object v3, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v3, :cond_1

    .line 747
    iget-object v3, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "actualClassName":Ljava/lang/String;
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initial mOnlyOwnerSimSupport done, actual class name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    .end local v0    # "actualClassName":Ljava/lang/String;
    :goto_0
    :try_start_1
    const-class v3, Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    iput-object v3, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    .line 760
    iget-object v3, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    if-eqz v3, :cond_2

    .line 761
    iget-object v3, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, "className":Ljava/lang/String;
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initial mDataOnlySmsFwkExt done, class name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 738
    .end local v1    # "className":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 751
    :cond_1
    :try_start_2
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "FAIL! intial mOnlyOwnerSimSupport"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 753
    :catch_0
    move-exception v2

    .line 754
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "FAIL! No IOnlyOwnerSimSupport"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 764
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :try_start_3
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "FAIL! intial mDataOnlySmsFwkExt"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 766
    :catch_1
    move-exception v2

    .line 767
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "FAIL! No mDataOnlySmsFwkExt"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private Convert2SmsBroadcastConfigInfo(Lcom/mediatek/internal/telephony/SmsCbConfigInfo;)Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 6
    .param p1, "info"    # Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    .prologue
    .line 2890
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 2891
    iget v1, p1, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mFromServiceId:I

    .line 2892
    iget v2, p1, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mToServiceId:I

    .line 2893
    iget v3, p1, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mFromCodeScheme:I

    .line 2894
    iget v4, p1, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mToCodeScheme:I

    .line 2895
    iget-boolean v5, p1, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mSelected:Z

    .line 2890
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    return-object v0
.end method

.method private Convert2SmsCbConfigInfo(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .locals 6
    .param p1, "info"    # Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    .line 2902
    new-instance v0, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    .line 2903
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v1

    .line 2904
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v2

    .line 2905
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v3

    .line 2906
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v4

    .line 2907
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v5

    .line 2902
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;-><init>(IIIIZ)V

    return-object v0
.end method

.method private static createFromEfRecordByMode(II[BI)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "subId"    # I
    .param p1, "index"    # I
    .param p2, "data"    # [B
    .param p3, "mode"    # I

    .prologue
    .line 2167
    const/4 v0, 0x0

    .line 2169
    .local v0, "sms":Landroid/telephony/SmsMessage;
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 2170
    const-string/jumbo v1, "3gpp2"

    invoke-static {p1, p2, v1}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 2175
    .local v0, "sms":Landroid/telephony/SmsMessage;
    :goto_0
    if-eqz v0, :cond_0

    .line 2176
    invoke-virtual {v0, p0}, Landroid/telephony/SmsMessage;->setSubId(I)V

    .line 2179
    :cond_0
    return-object v0

    .line 2172
    .local v0, "sms":Landroid/telephony/SmsMessage;
    :cond_1
    const-string/jumbo v1, "3gpp"

    invoke-static {p1, p2, v1}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .local v0, "sms":Landroid/telephony/SmsMessage;
    goto :goto_0
.end method

.method private createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1180
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    .local v4, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    const-string/jumbo v7, "SmsManager"

    const-string/jumbo v8, "createMessageListFromRawRecords"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    if-eqz p1, :cond_3

    .line 1185
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1186
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1187
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsRawData;

    .line 1189
    .local v2, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v2, :cond_0

    .line 1191
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    iget v8, p0, Landroid/telephony/SmsManager;->mSubId:I

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 1192
    .local v0, "activePhone":I
    const/4 v7, 0x2

    if-ne v7, v0, :cond_1

    .line 1193
    const-string/jumbo v5, "3gpp2"

    .line 1194
    .local v5, "phoneType":Ljava/lang/String;
    :goto_1
    const-string/jumbo v7, "SmsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "phoneType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 1199
    .local v6, "sms":Landroid/telephony/SmsMessage;
    if-eqz v6, :cond_0

    .line 1200
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    .end local v0    # "activePhone":I
    .end local v5    # "phoneType":Ljava/lang/String;
    .end local v6    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1193
    .restart local v0    # "activePhone":I
    :cond_1
    const-string/jumbo v5, "3gpp"

    .restart local v5    # "phoneType":Ljava/lang/String;
    goto :goto_1

    .line 1205
    .end local v0    # "activePhone":I
    .end local v2    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v5    # "phoneType":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "SmsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "actual sms count is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    .end local v1    # "count":I
    .end local v3    # "i":I
    :goto_2
    return-object v4

    .line 1209
    :cond_3
    const-string/jumbo v7, "SmsManager"

    const-string/jumbo v8, "fail to parse SIM sms, records is null"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static createMessageListFromRawRecordsByMode(ILjava/util/List;I)Ljava/util/ArrayList;
    .locals 8
    .param p0, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2129
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    const-string/jumbo v5, "SmsManager"

    const-string/jumbo v6, "createMessageListFromRawRecordsByMode"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    const/4 v3, 0x0

    .line 2132
    .local v3, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p1, :cond_2

    .line 2133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2134
    .local v0, "count":I
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2136
    .local v3, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2137
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 2139
    .local v1, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 2141
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {p0, v5, v6, p2}, Landroid/telephony/SmsManager;->createFromEfRecordByMode(II[BI)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 2142
    .local v4, "singleSms":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 2143
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2136
    .end local v4    # "singleSms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2147
    .end local v1    # "data":Lcom/android/internal/telephony/SmsRawData;
    :cond_1
    const-string/jumbo v5, "SmsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "actual sms count is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    :goto_1
    return-object v3

    .line 2149
    .local v3, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    :cond_2
    const-string/jumbo v5, "SmsManager"

    const-string/jumbo v6, "fail to parse SIM sms, records is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 717
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method public static getDefaultSmsSubscriptionId()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1270
    const/4 v2, 0x0

    .line 1272
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string/jumbo v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1273
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-interface {v2}, Lcom/android/internal/telephony/ISms;->getPreferredSmsSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1276
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    .line 1277
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 1274
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1275
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method private static getISmsService()Lcom/android/internal/telephony/ISms;
    .locals 1

    .prologue
    .line 839
    const-string/jumbo v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method private static getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .locals 3

    .prologue
    .line 831
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 832
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-nez v0, :cond_0

    .line 833
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Sms is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 835
    :cond_0
    return-object v0
.end method

.method public static getMmsConfig(Landroid/os/BaseBundle;)Landroid/os/Bundle;
    .locals 3
    .param p0, "config"    # Landroid/os/BaseBundle;

    .prologue
    .line 1922
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1923
    .local v0, "filtered":Landroid/os/Bundle;
    const-string/jumbo v1, "enabledTransID"

    .line 1924
    const-string/jumbo v2, "enabledTransID"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1923
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1925
    const-string/jumbo v1, "enabledMMS"

    const-string/jumbo v2, "enabledMMS"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1926
    const-string/jumbo v1, "enableGroupMms"

    .line 1927
    const-string/jumbo v2, "enableGroupMms"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1926
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1928
    const-string/jumbo v1, "enabledNotifyWapMMSC"

    .line 1929
    const-string/jumbo v2, "enabledNotifyWapMMSC"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1928
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1930
    const-string/jumbo v1, "aliasEnabled"

    const-string/jumbo v2, "aliasEnabled"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1931
    const-string/jumbo v1, "allowAttachAudio"

    .line 1932
    const-string/jumbo v2, "allowAttachAudio"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1931
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1933
    const-string/jumbo v1, "enableMultipartSMS"

    .line 1934
    const-string/jumbo v2, "enableMultipartSMS"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1933
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1935
    const-string/jumbo v1, "enableSMSDeliveryReports"

    .line 1936
    const-string/jumbo v2, "enableSMSDeliveryReports"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1935
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1937
    const-string/jumbo v1, "supportMmsContentDisposition"

    .line 1938
    const-string/jumbo v2, "supportMmsContentDisposition"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1937
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1939
    const-string/jumbo v1, "sendMultipartSmsAsSeparateMessages"

    .line 1940
    const-string/jumbo v2, "sendMultipartSmsAsSeparateMessages"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1939
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1941
    const-string/jumbo v1, "enableMMSReadReports"

    .line 1942
    const-string/jumbo v2, "enableMMSReadReports"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1941
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1943
    const-string/jumbo v1, "enableMMSDeliveryReports"

    .line 1944
    const-string/jumbo v2, "enableMMSDeliveryReports"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1943
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1945
    const-string/jumbo v1, "maxMessageSize"

    const-string/jumbo v2, "maxMessageSize"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1946
    const-string/jumbo v1, "maxImageWidth"

    const-string/jumbo v2, "maxImageWidth"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1947
    const-string/jumbo v1, "maxImageHeight"

    const-string/jumbo v2, "maxImageHeight"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1948
    const-string/jumbo v1, "recipientLimit"

    const-string/jumbo v2, "recipientLimit"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1949
    const-string/jumbo v1, "aliasMinChars"

    const-string/jumbo v2, "aliasMinChars"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1950
    const-string/jumbo v1, "aliasMaxChars"

    const-string/jumbo v2, "aliasMaxChars"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1951
    const-string/jumbo v1, "smsToMmsTextThreshold"

    .line 1952
    const-string/jumbo v2, "smsToMmsTextThreshold"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1951
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1953
    const-string/jumbo v1, "smsToMmsTextLengthThreshold"

    .line 1954
    const-string/jumbo v2, "smsToMmsTextLengthThreshold"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1953
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1955
    const-string/jumbo v1, "maxMessageTextSize"

    .line 1956
    const-string/jumbo v2, "maxMessageTextSize"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1955
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1957
    const-string/jumbo v1, "maxSubjectLength"

    .line 1958
    const-string/jumbo v2, "maxSubjectLength"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1957
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1959
    const-string/jumbo v1, "httpSocketTimeout"

    .line 1960
    const-string/jumbo v2, "httpSocketTimeout"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1959
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1961
    const-string/jumbo v1, "uaProfTagName"

    .line 1962
    const-string/jumbo v2, "uaProfTagName"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1961
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    const-string/jumbo v1, "userAgent"

    const-string/jumbo v2, "userAgent"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    const-string/jumbo v1, "uaProfUrl"

    const-string/jumbo v2, "uaProfUrl"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    const-string/jumbo v1, "httpParams"

    const-string/jumbo v2, "httpParams"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    const-string/jumbo v1, "emailGatewayNumber"

    .line 1967
    const-string/jumbo v2, "emailGatewayNumber"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1966
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    const-string/jumbo v1, "naiSuffix"

    const-string/jumbo v2, "naiSuffix"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    const-string/jumbo v1, "config_cellBroadcastAppLinks"

    .line 1970
    const-string/jumbo v2, "config_cellBroadcastAppLinks"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1969
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1971
    const-string/jumbo v1, "supportHttpCharsetHeader"

    .line 1972
    const-string/jumbo v2, "supportHttpCharsetHeader"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1971
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1973
    return-object v0
.end method

.method public static getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 729
    sget-object v2, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 730
    :try_start_0
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsManager;

    .line 731
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    if-nez v0, :cond_0

    .line 732
    new-instance v0, Landroid/telephony/SmsManager;

    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    invoke-direct {v0, p0}, Landroid/telephony/SmsManager;-><init>(I)V

    .line 733
    .restart local v0    # "smsManager":Landroid/telephony/SmsManager;
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 735
    return-object v0

    .line 729
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 3
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1989
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1991
    .local v1, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1993
    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2000
    invoke-static {p0, v0, v1}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    return v2
.end method

.method private static isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 2014
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2015
    :cond_0
    return v4

    .line 2018
    :cond_1
    invoke-static {p0}, Landroid/telephony/SmsManager;->isValidSmsDestinationAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2019
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2020
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 2021
    .local v2, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_2

    .line 2023
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2019
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2024
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1

    .line 2028
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    .end local v2    # "sentIntent":Landroid/app/PendingIntent;
    :cond_3
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid destinationAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    return v6

    .line 2032
    .end local v1    # "i":I
    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2033
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid destinationAddress"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2035
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v4, :cond_7

    .line 2036
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid message body"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2039
    :cond_7
    return v4
.end method

.method private static isValidSmsDestinationAddress(Ljava/lang/String;)Z
    .locals 6
    .param p0, "da"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2050
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2051
    .local v0, "encodeAddress":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2052
    return v3

    .line 2054
    :cond_0
    const/4 v2, 0x0

    .line 2055
    .local v2, "spaceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 2056
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_2

    .line 2057
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2055
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2061
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-ne v4, v5, :cond_4

    :goto_1
    return v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "persistMessageForCarrierApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 532
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 541
    :cond_0
    const-string/jumbo v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMultipartTextMessage, destinationAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    move-object/from16 v0, p4

    invoke-static {p1, p3, v0}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 544
    return-void

    .line 547
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 548
    .local v10, "context":Landroid/content/Context;
    iget-object v2, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    .line 549
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 548
    move-object/from16 v0, p4

    invoke-interface {v2, v0, v3, v10}, Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;->is4GDataOnlyMode(Ljava/util/ArrayList;ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 550
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "is4GDataOnlyMode"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void

    .line 555
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 557
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 558
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 559
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    .line 558
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v11

    .line 565
    .local v11, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "sendMultipartTextMessage, RemoteException!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    .end local v11    # "ex":Landroid/os/RemoteException;
    :cond_3
    const/4 v6, 0x0

    .line 570
    .local v6, "sentIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 571
    .local v7, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 572
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 574
    :cond_4
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 575
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 579
    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const-string/jumbo v5, ""

    .local v5, "text":Ljava/lang/String;
    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 580
    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 579
    .end local v5    # "text":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .restart local v5    # "text":Ljava/lang/String;
    goto :goto_1
.end method

.method private sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "persistMessageForCarrierApp"    # Z

    .prologue
    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_0
    const-string/jumbo v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTextMessage, text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", destinationAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {p1, p3, p4}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    return-void

    .line 348
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 349
    .local v9, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    .line 350
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 349
    invoke-interface {v1, p4, v2, v9}, Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;->is4GDataOnlyMode(Landroid/app/PendingIntent;ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "is4GDataOnlyMode"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void

    .line 357
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 358
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v10

    .line 365
    .local v10, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "sendTextMessage, RemoteException!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public activateCellBroadcastSms(Z)Z
    .locals 6
    .param p1, "activate"    # Z

    .prologue
    .line 3048
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "activateCellBroadcastSms activate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3049
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v5

    .line 3048
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    const/4 v2, 0x0

    .line 3053
    .local v2, "result":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3054
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 3055
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/ISms;->activateCellBroadcastSmsForSubscriber(IZ)Z

    move-result v2

    .line 3066
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 3058
    .restart local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .restart local v2    # "result":Z
    :cond_0
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "fail to get sms service"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3059
    const/4 v2, 0x0

    goto :goto_0

    .line 3061
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 3062
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "fail to activate CB"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addMultimediaMessageDraft(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 1695
    if-nez p1, :cond_0

    .line 1696
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Uri contentUri null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1699
    :cond_0
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1700
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_1

    .line 1701
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/IMms;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1704
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1707
    :cond_1
    return-object v3
.end method

.method public addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1674
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1675
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1676
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/telephony/IMms;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1678
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1681
    :cond_0
    return-object v3
.end method

.method public archiveStoredConversation(JZ)Z
    .locals 3
    .param p1, "conversationId"    # J
    .param p3, "archived"    # Z

    .prologue
    .line 1651
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1652
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1653
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->archiveStoredConversation(Ljava/lang/String;JZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1656
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1659
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public copyMessageToIcc([B[BI)Z
    .locals 9
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    .line 858
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "copyMessageToIcc"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v8, 0x0

    .line 862
    .local v8, "success":Z
    const/4 v7, 0x0

    .line 865
    .local v7, "smsStatus":Landroid/telephony/SimSmsInsertStatus;
    if-nez p2, :cond_0

    .line 866
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "pdu is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 871
    :cond_0
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 878
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 879
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    .line 880
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 881
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p3

    move-object v4, p2

    move-object v5, p1

    .line 880
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 888
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v8    # "success":Z
    :cond_2
    :goto_0
    return v8

    .line 872
    .restart local v8    # "success":Z
    :cond_3
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "Not the current owner and reject this operation"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const/4 v1, 0x0

    return v1

    .line 884
    :catch_0
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public copySmsToIcc([B[BI)I
    .locals 6
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2746
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "copySmsToIcc"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    invoke-virtual {p0, p3, p2, p1}, Landroid/telephony/SmsManager;->insertRawMessageToIccCard(I[B[B)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v1

    .line 2749
    .local v1, "smsStatus":Landroid/telephony/SimSmsInsertStatus;
    if-nez v1, :cond_0

    .line 2750
    return v4

    .line 2752
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SimSmsInsertStatus;->getIndex()[I

    move-result-object v0

    .line 2754
    .local v0, "index":[I
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 2755
    aget v2, v0, v5

    return v2

    .line 2758
    :cond_1
    return v4
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 11
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
    .line 2199
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "copyTextMessageToIccCard"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    const/4 v10, 0x1

    .line 2203
    .local v10, "result":I
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2209
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2210
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 2211
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2212
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    .line 2211
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ISms;->copyTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 2219
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v10

    .line 2204
    :cond_2
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "Not the current owner and reject this operation"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    return v10

    .line 2215
    :catch_0
    move-exception v0

    .line 2216
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 8
    .param p1, "messageIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 904
    const-string/jumbo v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteMessageFromIcc, messageIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/4 v7, 0x0

    .line 910
    .local v7, "success":Z
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 916
    :cond_0
    const/16 v1, 0xaf

    new-array v5, v1, [B

    .line 917
    .local v5, "pdu":[B
    const/4 v1, -0x1

    invoke-static {v5, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 920
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 921
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 922
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 923
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 924
    const/4 v4, 0x0

    move v3, p1

    .line 922
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 933
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v7    # "success":Z
    :cond_1
    :goto_0
    return v7

    .line 911
    .end local v5    # "pdu":[B
    .restart local v7    # "success":Z
    :cond_2
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "Not the current owner and reject this operation"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    return v4

    .line 926
    .restart local v5    # "pdu":[B
    :catch_0
    move-exception v6

    .line 929
    .local v6, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "deleteMessageFromIcc, RemoteException!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteStoredConversation(J)Z
    .locals 3
    .param p1, "conversationId"    # J

    .prologue
    .line 1599
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1600
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1602
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1601
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/telephony/IMms;->deleteStoredConversation(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1604
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1607
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public deleteStoredMessage(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 1574
    if-nez p1, :cond_0

    .line 1575
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Empty message URI"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1578
    :cond_0
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1579
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_1

    .line 1580
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/IMms;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1582
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1585
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public disableCellBroadcast(II)Z
    .locals 4
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I

    .prologue
    .line 1070
    const/4 v2, 0x0

    .line 1073
    .local v2, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1074
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1076
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 1075
    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastForSubscriber(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1082
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    .line 1078
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public disableCellBroadcastRange(III)Z
    .locals 5
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I

    .prologue
    .line 1151
    const/4 v2, 0x0

    .line 1153
    .local v2, "success":Z
    if-ge p2, p1, :cond_0

    .line 1154
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "endMessageId < startMessageId"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1157
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1158
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 1159
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRangeForSubscriber(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1166
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_1
    :goto_0
    return v2

    .line 1162
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
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
    .line 474
    if-nez p1, :cond_0

    .line 475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2457
    const-string/jumbo v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "divideMessage, encoding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 2459
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "divideMessage: size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    return-object v0
.end method

.method public downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationUrl"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "downloadedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1464
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1465
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty MMS location URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1467
    :cond_0
    if-nez p3, :cond_1

    .line 1468
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1471
    :cond_1
    :try_start_0
    const-string/jumbo v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1472
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_2

    .line 1473
    return-void

    .line 1476
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1475
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IMms;->downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    .line 1478
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public enableCellBroadcast(II)Z
    .locals 4
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I

    .prologue
    .line 1034
    const/4 v2, 0x0

    .line 1037
    .local v2, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1038
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1040
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 1039
    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastForSubscriber(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1046
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    .line 1042
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public enableCellBroadcastRange(III)Z
    .locals 5
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I

    .prologue
    .line 1109
    const/4 v2, 0x0

    .line 1111
    .local v2, "success":Z
    if-ge p2, p1, :cond_0

    .line 1112
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "endMessageId < startMessageId"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1115
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1116
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 1117
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRangeForSubscriber(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1124
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_1
    :goto_0
    return v2

    .line 1120
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 992
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "getAllMessagesFromIcc"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/4 v2, 0x0

    .line 997
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 998
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1000
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 1001
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 999
    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1010
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3

    .line 1003
    .restart local v2    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "getAllMessagesFromIcc, RemoteException!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllMessagesFromIccEfByMode(I)Ljava/util/ArrayList;
    .locals 12
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2075
    const-string/jumbo v9, "SmsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAllMessagesFromIcc, mode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    const/4 v6, 0x0

    .line 2080
    .local v6, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 2081
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_0

    .line 2082
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v9

    .line 2083
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2082
    invoke-interface {v3, v9, v10, p1}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfByModeForSubscriber(ILjava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2089
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v6    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :cond_0
    :goto_0
    const/4 v8, 0x0

    .line 2090
    .local v8, "sz":I
    if-eqz v6, :cond_1

    .line 2091
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 2093
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_5

    .line 2094
    const/4 v0, 0x0

    .line 2095
    .local v0, "data":[B
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SmsRawData;

    .line 2096
    .local v5, "record":Lcom/android/internal/telephony/SmsRawData;
    if-nez v5, :cond_3

    .line 2093
    .end local v0    # "data":[B
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2085
    .end local v2    # "i":I
    .end local v5    # "record":Lcom/android/internal/telephony/SmsRawData;
    .end local v8    # "sz":I
    .restart local v6    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :catch_0
    move-exception v1

    .line 2086
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v9, "SmsManager"

    const-string/jumbo v10, "RemoteException!"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2099
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v6    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    .restart local v0    # "data":[B
    .restart local v2    # "i":I
    .restart local v5    # "record":Lcom/android/internal/telephony/SmsRawData;
    .restart local v8    # "sz":I
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v0

    .line 2101
    .local v0, "data":[B
    add-int/lit8 v4, v2, 0x1

    .line 2102
    .local v4, "index":I
    const/4 v9, 0x0

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 2103
    const-string/jumbo v9, "SmsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "index["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] is STATUS_ON_ICC_READ"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    const/4 v9, 0x1

    invoke-virtual {p0, v4, v9, v0}, Landroid/telephony/SmsManager;->updateMessageOnIcc(II[B)Z

    move-result v7

    .line 2106
    .local v7, "ret":Z
    if-eqz v7, :cond_4

    .line 2107
    const-string/jumbo v9, "SmsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "update index["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] to STATUS_ON_ICC_READ"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2109
    :cond_4
    const-string/jumbo v9, "SmsManager"

    const-string/jumbo v10, "fail to update message status"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2114
    .end local v0    # "data":[B
    .end local v4    # "index":I
    .end local v5    # "record":Lcom/android/internal/telephony/SmsRawData;
    .end local v7    # "ret":Z
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v9

    invoke-static {v9, v6, p1}, Landroid/telephony/SmsManager;->createMessageListFromRawRecordsByMode(ILjava/util/List;I)Ljava/util/ArrayList;

    move-result-object v9

    return-object v9
.end method

.method public getAutoPersisting()Z
    .locals 3

    .prologue
    .line 1883
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1884
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1885
    invoke-interface {v1}, Lcom/android/internal/telephony/IMms;->getAutoPersisting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1887
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1890
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getCarrierConfigValues()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1900
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1901
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1902
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IMms;->getCarrierConfigValues(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1904
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1907
    :cond_0
    return-object v3
.end method

.method public getCellBroadcastSmsConfig()[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2919
    const-string/jumbo v5, "SmsManager"

    const-string/jumbo v6, "getCellBroadcastSmsConfig"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    const-string/jumbo v5, "SmsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    const/4 v0, 0x0

    .line 2924
    .local v0, "configs":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 2925
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_0

    .line 2926
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/ISms;->getCellBroadcastSmsConfigForSubscriber(I)[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2934
    .end local v0    # "configs":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    if-eqz v0, :cond_2

    .line 2935
    const-string/jumbo v5, "SmsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "config length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    const/4 v2, 0x0

    .line 2937
    .local v2, "i":I
    array-length v5, v0

    if-eqz v5, :cond_2

    .line 2938
    array-length v5, v0

    new-array v4, v5, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 2939
    .local v4, "result":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    const/4 v2, 0x0

    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 2940
    aget-object v5, v0, v2

    invoke-direct {p0, v5}, Landroid/telephony/SmsManager;->Convert2SmsBroadcastConfigInfo(Lcom/mediatek/internal/telephony/SmsCbConfigInfo;)Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v5

    aput-object v5, v4, v2

    .line 2939
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2928
    .end local v2    # "i":I
    .end local v4    # "result":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .restart local v0    # "configs":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .restart local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :try_start_1
    const-string/jumbo v5, "SmsManager"

    const-string/jumbo v6, "fail to get sms service"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2930
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    .line 2931
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v5, "SmsManager"

    const-string/jumbo v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2941
    .end local v0    # "configs":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "i":I
    .restart local v4    # "result":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_1
    return-object v4

    .line 2949
    .end local v2    # "i":I
    .end local v4    # "result":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_2
    return-object v8
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1252
    const-string/jumbo v1, "unknown"

    .line 1254
    .local v1, "format":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1255
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 1256
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ISms;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1261
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    .line 1258
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSmsParameters()Landroid/telephony/SmsParameters;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2675
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "getSmsParameters"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2684
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2685
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_2

    .line 2686
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2687
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2686
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getSmsParametersForSubscriber(ILjava/lang/String;)Landroid/telephony/SmsParameters;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2679
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "Not the current owner and reject this operation"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    return-object v4

    .line 2689
    .restart local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_2
    return-object v4

    .line 2691
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 2692
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "fail to get SmsParameters"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    return-object v4
.end method

.method public getSmsSimMemoryStatus()Lcom/mediatek/internal/telephony/IccSmsStorageStatus;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2871
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "getSmsSimMemoryStatus"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2875
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2876
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2877
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2876
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getSmsSimMemoryStatusForSubscriber(ILjava/lang/String;)Lcom/mediatek/internal/telephony/IccSmsStorageStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2879
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 2880
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getSubscriptionId()I
    .locals 9

    .prologue
    .line 789
    iget v7, p0, Landroid/telephony/SmsManager;->mSubId:I

    const/16 v8, -0x3ea

    if-ne v7, v8, :cond_2

    .line 790
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v6

    .line 791
    .local v6, "subId":I
    :goto_0
    const/4 v5, 0x0

    .line 792
    .local v5, "isSmsSimPickActivityNeeded":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 794
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 795
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_0

    .line 796
    invoke-interface {v3, v6}, Lcom/android/internal/telephony/ISms;->isSmsSimPickActivityNeeded(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 804
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v5    # "isSmsSimPickActivityNeeded":Z
    :cond_0
    :goto_1
    const/4 v5, 0x0

    .line 806
    .restart local v5    # "isSmsSimPickActivityNeeded":Z
    if-eqz v5, :cond_1

    .line 807
    const-string/jumbo v7, "SmsManager"

    const-string/jumbo v8, "getSubscriptionId isSmsSimPickActivityNeeded is true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 810
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.android.settings"

    .line 811
    const-string/jumbo v8, "com.android.settings.sim.SimDialogActivity"

    .line 810
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 813
    sget-object v7, Landroid/telephony/SmsManager;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 815
    :try_start_1
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 823
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_2
    return v6

    .line 790
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "isSmsSimPickActivityNeeded":Z
    .end local v6    # "subId":I
    :cond_2
    iget v6, p0, Landroid/telephony/SmsManager;->mSubId:I

    .restart local v6    # "subId":I
    goto :goto_0

    .line 798
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "isSmsSimPickActivityNeeded":Z
    :catch_0
    move-exception v2

    .line 799
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v7, "SmsManager"

    const-string/jumbo v8, "Exception in getSubscriptionId"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 816
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 819
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v7, "SmsManager"

    const-string/jumbo v8, "Unable to launch Settings application."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public importMultimediaMessage(Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .locals 9
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "timestampSecs"    # J
    .param p5, "seen"    # Z
    .param p6, "read"    # Z

    .prologue
    .line 1548
    if-nez p1, :cond_0

    .line 1549
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1552
    :cond_0
    :try_start_0
    const-string/jumbo v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1553
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 1554
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IMms;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1557
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v8

    .line 1560
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public importTextMessage(Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "timestampMillis"    # J
    .param p6, "seen"    # Z
    .param p7, "read"    # Z

    .prologue
    .line 1515
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1516
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1517
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IMms;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1520
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1523
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 447
    const-string/jumbo v2, "3gpp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "3gpp2"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 453
    :cond_0
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 454
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 456
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 455
    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return-void

    .line 449
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 450
    const-string/jumbo v3, "Invalid pdu format. format must be either 3gpp or 3gpp2"

    .line 449
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 458
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public insertRawMessageToIccCard(I[B[B)Landroid/telephony/SimSmsInsertStatus;
    .locals 8
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "smsc"    # [B

    .prologue
    const/4 v3, 0x0

    .line 2515
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "insertRawMessageToIccCard"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    const/4 v7, 0x0

    .line 2519
    .local v7, "ret":Landroid/telephony/SimSmsInsertStatus;
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2525
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2526
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 2527
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 2528
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 2527
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->insertRawMessageToIccCardForSubscriber(ILjava/lang/String;I[B[B)Landroid/telephony/SimSmsInsertStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2534
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v7    # "ret":Landroid/telephony/SimSmsInsertStatus;
    :cond_1
    :goto_0
    const-string/jumbo v2, "SmsManager"

    if-eqz v7, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insert Raw "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v7, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    return-object v7

    .line 2520
    .restart local v7    # "ret":Landroid/telephony/SimSmsInsertStatus;
    :cond_2
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    return-object v3

    .line 2530
    :catch_0
    move-exception v6

    .line 2531
    .local v6, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2534
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "ret":Landroid/telephony/SimSmsInsertStatus;
    :cond_3
    const-string/jumbo v1, "insert Raw null"

    goto :goto_1
.end method

.method public insertTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Landroid/telephony/SimSmsInsertStatus;
    .locals 11
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
            ">;IJ)",
            "Landroid/telephony/SimSmsInsertStatus;"
        }
    .end annotation

    .prologue
    .line 2478
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "insertTextMessageToIccCard"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    const/4 v10, 0x0

    .line 2482
    .local v10, "ret":Landroid/telephony/SimSmsInsertStatus;
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2488
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2489
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 2490
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2491
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    .line 2490
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ISms;->insertTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Landroid/telephony/SimSmsInsertStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 2498
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v10    # "ret":Landroid/telephony/SimSmsInsertStatus;
    :cond_1
    :goto_0
    const-string/jumbo v3, "SmsManager"

    if-eqz v10, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insert Text "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    return-object v10

    .line 2483
    .restart local v10    # "ret":Landroid/telephony/SimSmsInsertStatus;
    :cond_2
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "Not the current owner and reject this operation"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    const/4 v2, 0x0

    return-object v2

    .line 2494
    :catch_0
    move-exception v0

    .line 2495
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2498
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v10    # "ret":Landroid/telephony/SimSmsInsertStatus;
    :cond_3
    const-string/jumbo v2, "insert Text null"

    goto :goto_1
.end method

.method public isImsSmsSupported()Z
    .locals 4

    .prologue
    .line 1227
    const/4 v0, 0x0

    .line 1229
    .local v0, "boSupported":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1230
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 1231
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ISms;->isImsSmsSupportedForSubscriber(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1236
    .end local v0    # "boSupported":Z
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1233
    .restart local v0    # "boSupported":Z
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isSMSPromptEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1288
    const/4 v2, 0x0

    .line 1290
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string/jumbo v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1291
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-interface {v2}, Lcom/android/internal/telephony/ISms;->isSMSPromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1294
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    .line 1295
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 1292
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1293
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public queryCellBroadcastSmsActivation()Z
    .locals 6

    .prologue
    .line 3017
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "queryCellBroadcastSmsActivation"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    const/4 v2, 0x0

    .line 3022
    .local v2, "result":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3023
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 3025
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 3024
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISms;->queryCellBroadcastSmsActivationForSubscriber(I)Z

    move-result v2

    .line 3034
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 3027
    .restart local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .restart local v2    # "result":Z
    :cond_0
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "fail to get sms service"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3028
    const/4 v2, 0x0

    goto :goto_0

    .line 3030
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 3031
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "RemoteException!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeCellBroadcastMsg(II)Z
    .locals 6
    .param p1, "channelId"    # I
    .param p2, "serialId"    # I

    .prologue
    .line 3080
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RemoveCellBroadcastMsg, subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    const/4 v2, 0x0

    .line 3084
    .local v2, "result":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3085
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 3086
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->removeCellBroadcastMsgForSubscriber(III)Z

    move-result v2

    .line 3096
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 3089
    .restart local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .restart local v2    # "result":Z
    :cond_0
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "fail to get sms service"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3090
    const/4 v2, 0x0

    goto :goto_0

    .line 3092
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 3093
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "RemoveCellBroadcastMsg, RemoteException!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 13
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "originalPort"    # S
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2255
    const-string/jumbo v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDataMessage, destinationAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2257
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2260
    :cond_0
    const-string/jumbo v2, "send_data"

    move-object/from16 v0, p6

    invoke-static {p1, v2, v0}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2261
    return-void

    .line 2264
    :cond_1
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    array-length v2, v0

    if-nez v2, :cond_3

    .line 2265
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid message data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2269
    :cond_3
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 2270
    .local v11, "context":Landroid/content/Context;
    iget-object v2, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    .line 2271
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 2270
    move-object/from16 v0, p6

    invoke-interface {v2, v0, v3, v11}, Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;->is4GDataOnlyMode(Landroid/app/PendingIntent;ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2272
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "is4GDataOnlyMode"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    return-void

    .line 2278
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2279
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_5

    .line 2280
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2281
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2282
    const v4, 0xffff

    and-int v6, p3, v4

    const v4, 0xffff

    and-int v7, p4, v4

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 2280
    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendDataWithOriginalPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2254
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_5
    :goto_0
    return-void

    .line 2285
    :catch_0
    move-exception v12

    .line 2286
    .local v12, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 634
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    :cond_0
    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    array-length v2, v0

    if-nez v2, :cond_2

    .line 639
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid message data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 643
    :cond_2
    const-string/jumbo v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDataMessage, destinationAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string/jumbo v2, "send_data"

    move-object/from16 v0, p5

    invoke-static {p1, v2, v0}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 646
    return-void

    .line 649
    :cond_3
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 650
    .local v10, "context":Landroid/content/Context;
    iget-object v2, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    .line 651
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 650
    move-object/from16 v0, p5

    invoke-interface {v2, v0, v3, v10}, Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;->is4GDataOnlyMode(Landroid/app/PendingIntent;ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 652
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "is4GDataOnlyMode"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void

    .line 658
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 659
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 660
    const v4, 0xffff

    and-int v6, p3, v4

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 659
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v11

    .line 665
    .local v11, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "sendDataMessage, RemoteException!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDataMessageWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 679
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 680
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 683
    :cond_0
    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    array-length v2, v0

    if-nez v2, :cond_2

    .line 684
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid message data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 688
    :cond_2
    const-string/jumbo v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDataMessage, destinationAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string/jumbo v2, "send_data"

    move-object/from16 v0, p5

    invoke-static {p1, v2, v0}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 691
    return-void

    .line 694
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 695
    .local v11, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 700
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 701
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 702
    const v4, 0xffff

    and-int v6, p3, v4

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 700
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v10

    .local v10, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1433
    if-nez p2, :cond_0

    .line 1434
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1437
    :cond_0
    :try_start_0
    const-string/jumbo v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1438
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_1

    .line 1439
    return-void

    .line 1442
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IMms;->sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    .line 1444
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
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
    .line 525
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 524
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 523
    return-void
.end method

.method public sendMultipartTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 14
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2393
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendMultipartTextMessageWithEncodingType, encoding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2395
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid destinationAddress"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2398
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {p1, v0, v1}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2399
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "invalid parameters for multipart message"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    return-void

    .line 2403
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 2404
    .local v12, "context":Landroid/content/Context;
    iget-object v3, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    .line 2405
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v4

    .line 2404
    move-object/from16 v0, p5

    invoke-interface {v3, v0, v4, v12}, Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;->is4GDataOnlyMode(Ljava/util/ArrayList;ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2406
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "is4GDataOnlyMode"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    return-void

    .line 2411
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 2413
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 2414
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_3

    .line 2415
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 2416
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2418
    const/4 v11, 0x1

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 2415
    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2392
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 2420
    :catch_0
    move-exception v13

    .line 2421
    .local v13, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2424
    .end local v13    # "ex":Landroid/os/RemoteException;
    :cond_4
    const/4 v8, 0x0

    .line 2425
    .local v8, "sentIntent":Landroid/app/PendingIntent;
    const/4 v9, 0x0

    .line 2426
    .local v9, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 2427
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 2429
    :cond_5
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get sentIntent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    if-eqz p6, :cond_6

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 2431
    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 2433
    :cond_6
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "send single message"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    if-eqz p3, :cond_7

    .line 2435
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parts.size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const-string/jumbo v6, ""

    .line 2438
    .local v6, "text":Ljava/lang/String;
    :goto_1
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pass encoding type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v7, p4

    .line 2439
    invoke-virtual/range {v3 .. v9}, Landroid/telephony/SmsManager;->sendTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2437
    .end local v6    # "text":Ljava/lang/String;
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .restart local v6    # "text":Ljava/lang/String;
    goto :goto_1
.end method

.method public sendMultipartTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 14
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2617
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "sendMultipartTextMessageWithExtraParams"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2619
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid destinationAddress"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2622
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {p1, v0, v1}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2623
    return-void

    .line 2626
    :cond_1
    if-nez p4, :cond_2

    .line 2627
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "bundle is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    return-void

    .line 2631
    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 2632
    .local v12, "context":Landroid/content/Context;
    iget-object v3, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    .line 2633
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v4

    .line 2632
    move-object/from16 v0, p5

    invoke-interface {v3, v0, v4, v12}, Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;->is4GDataOnlyMode(Ljava/util/ArrayList;ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2634
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "is4GDataOnlyMode"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    return-void

    .line 2639
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 2641
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 2642
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_4

    .line 2643
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 2644
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2646
    const/4 v11, 0x1

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 2643
    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2616
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_4
    :goto_0
    return-void

    .line 2648
    :catch_0
    move-exception v13

    .line 2649
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2652
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_5
    const/4 v8, 0x0

    .line 2653
    .local v8, "sentIntent":Landroid/app/PendingIntent;
    const/4 v9, 0x0

    .line 2654
    .local v9, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 2655
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 2657
    :cond_6
    if-eqz p6, :cond_7

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 2658
    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 2661
    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const-string/jumbo v6, ""

    .local v6, "text":Ljava/lang/String;
    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    .line 2662
    invoke-virtual/range {v3 .. v9}, Landroid/telephony/SmsManager;->sendTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 2661
    .end local v6    # "text":Ljava/lang/String;
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .restart local v6    # "text":Ljava/lang/String;
    goto :goto_1
.end method

.method public sendMultipartTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
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
    .line 598
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 597
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 596
    return-void
.end method

.method public sendStoredMultimediaMessage(Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "configOverrides"    # Landroid/os/Bundle;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1833
    if-nez p1, :cond_0

    .line 1834
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1837
    :cond_0
    :try_start_0
    const-string/jumbo v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1838
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 1840
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1839
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IMms;->sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1832
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    :goto_0
    return-void

    .line 1843
    :catch_0
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendStoredMultipartTextMessage(Landroid/net/Uri;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
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
    .line 1796
    .local p3, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p4, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-nez p1, :cond_0

    .line 1797
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1800
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 1801
    .local v7, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    .line 1802
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 1801
    invoke-interface {v1, p3, v2, v7}, Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;->is4GDataOnlyMode(Ljava/util/ArrayList;ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1803
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "is4GDataOnlyMode"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    return-void

    .line 1808
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1810
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1809
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendStoredMultipartText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1795
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 1812
    :catch_0
    move-exception v8

    .local v8, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendStoredTextMessage(Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1739
    if-nez p1, :cond_0

    .line 1740
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1744
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 1745
    .local v7, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    .line 1746
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 1745
    invoke-interface {v1, p3, v2, v7}, Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;->is4GDataOnlyMode(Landroid/app/PendingIntent;ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1747
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "is4GDataOnlyMode"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    return-void

    .line 1752
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1754
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1753
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendStoredText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1738
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 1756
    :catch_0
    move-exception v8

    .local v8, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 326
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 325
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 324
    return-void
.end method

.method public sendTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 14
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2322
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendTextMessageWithEncodingType, text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", encoding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2324
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid destinationAddress"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2327
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {p1, v0, v1}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2328
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "the parameters are invalid"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    return-void

    .line 2333
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 2334
    .local v12, "context":Landroid/content/Context;
    iget-object v3, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    .line 2335
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v4

    .line 2334
    move-object/from16 v0, p5

    invoke-interface {v3, v0, v4, v12}, Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;->is4GDataOnlyMode(Landroid/app/PendingIntent;ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2336
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "is4GDataOnlyMode"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    return-void

    .line 2342
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 2343
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_3

    .line 2344
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 2345
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2346
    const/4 v11, 0x1

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 2344
    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/ISms;->sendTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2321
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 2348
    :catch_0
    move-exception v13

    .line 2349
    .local v13, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 14
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2556
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendTextMessageWithExtraParams, text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2558
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid destinationAddress"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2561
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {p1, v0, v1}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2562
    return-void

    .line 2565
    :cond_1
    if-nez p4, :cond_2

    .line 2566
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "bundle is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    return-void

    .line 2571
    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 2572
    .local v12, "context":Landroid/content/Context;
    iget-object v3, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    .line 2573
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v4

    .line 2572
    move-object/from16 v0, p5

    invoke-interface {v3, v0, v4, v12}, Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;->is4GDataOnlyMode(Landroid/app/PendingIntent;ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2574
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "is4GDataOnlyMode"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    return-void

    .line 2580
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 2581
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_4

    .line 2582
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 2583
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2584
    const/4 v11, 0x1

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 2582
    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/ISms;->sendTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2555
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_4
    :goto_0
    return-void

    .line 2586
    :catch_0
    move-exception v13

    .line 2587
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextMessageWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 394
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    :cond_0
    const-string/jumbo v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTextMessage, text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", destinationAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {p1, p3, p4}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 407
    return-void

    .line 410
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 411
    .local v8, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/telephony/SmsManager;->mDataOnlySmsFwkExt:Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;

    .line 412
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 411
    invoke-interface {v1, p4, v2, v8}, Lcom/mediatek/common/sms/IDataOnlySmsFwkExt;->is4GDataOnlyMode(Landroid/app/PendingIntent;ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "is4GDataOnlyMode"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void

    .line 419
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 420
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 421
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 420
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v9

    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 382
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 381
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 380
    return-void
.end method

.method public setAutoPersisting(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1862
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1863
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1864
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/IMms;->setAutoPersisting(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1860
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_0
    :goto_0
    return-void

    .line 1866
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .locals 9
    .param p1, "channels"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "languages"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    .line 2965
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "setCellBroadcastSmsConfig"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    const-string/jumbo v6, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "subId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    if-eqz p1, :cond_0

    .line 2968
    const-string/jumbo v6, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "channel size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    :goto_0
    if-eqz p2, :cond_1

    .line 2973
    const-string/jumbo v6, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "language size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    :goto_1
    const/4 v5, 0x0

    .line 2980
    .local v5, "result":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 2981
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_4

    .line 2982
    const/4 v2, 0x0

    .line 2983
    .local v2, "i":I
    const/4 v0, 0x0

    .local v0, "channelInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    const/4 v4, 0x0

    .line 2984
    .local v4, "languageInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    if-eqz p1, :cond_2

    array-length v6, p1

    if-eqz v6, :cond_2

    .line 2985
    array-length v6, p1

    new-array v0, v6, [Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    .line 2986
    .local v0, "channelInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    const/4 v2, 0x0

    :goto_2
    array-length v6, p1

    if-ge v2, v6, :cond_2

    .line 2987
    aget-object v6, p1, v2

    invoke-direct {p0, v6}, Landroid/telephony/SmsManager;->Convert2SmsCbConfigInfo(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    move-result-object v6

    aput-object v6, v0, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2986
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2970
    .end local v0    # "channelInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .end local v2    # "i":I
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v4    # "languageInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .end local v5    # "result":Z
    :cond_0
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "channel size=0"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2975
    :cond_1
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "language size=0"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2989
    .restart local v2    # "i":I
    .restart local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .restart local v4    # "languageInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .restart local v5    # "result":Z
    :cond_2
    if-eqz p2, :cond_3

    :try_start_1
    array-length v6, p2

    if-eqz v6, :cond_3

    .line 2990
    array-length v6, p2

    new-array v4, v6, [Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    .line 2991
    .local v4, "languageInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    const/4 v2, 0x0

    :goto_3
    array-length v6, p2

    if-ge v2, v6, :cond_3

    .line 2992
    aget-object v6, p2, v2

    invoke-direct {p0, v6}, Landroid/telephony/SmsManager;->Convert2SmsCbConfigInfo(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    move-result-object v6

    aput-object v6, v4, v2

    .line 2991
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2995
    .end local v4    # "languageInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v6

    invoke-interface {v3, v6, v0, v4}, Lcom/android/internal/telephony/ISms;->setCellBroadcastSmsConfigForSubscriber(I[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;)Z

    move-result v5

    .line 3005
    .end local v2    # "i":I
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v5    # "result":Z
    :goto_4
    return v5

    .line 2998
    .restart local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .restart local v5    # "result":Z
    :cond_4
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "fail to get sms service"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2999
    const/4 v5, 0x0

    goto :goto_4

    .line 3001
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    .line 3002
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "setCellBroadcastSmsConfig, RemoteException!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setEtwsConfig(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 2822
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEtwsConfig, mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    const/4 v2, 0x0

    .line 2826
    .local v2, "ret":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2827
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2828
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/ISms;->setEtwsConfigForSubscriber(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2834
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "ret":Z
    :cond_0
    :goto_0
    return v2

    .line 2830
    .restart local v2    # "ret":Z
    :catch_0
    move-exception v0

    .line 2831
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSmsMemoryStatus(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 2848
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "setSmsMemoryStatus"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2852
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2853
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/ISms;->setSmsMemoryStatusForSubscriber(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2847
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 2855
    :catch_0
    move-exception v0

    .line 2856
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSmsParameters(Landroid/telephony/SmsParameters;)Z
    .locals 5
    .param p1, "params"    # Landroid/telephony/SmsParameters;

    .prologue
    const/4 v4, 0x0

    .line 2710
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "setSmsParameters"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2719
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2720
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_2

    .line 2721
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2722
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2721
    invoke-interface {v1, v2, v3, p1}, Lcom/android/internal/telephony/ISms;->setSmsParametersForSubscriber(ILjava/lang/String;Landroid/telephony/SmsParameters;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2714
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "Not the current owner and reject this operation"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    return v4

    .line 2724
    .restart local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_2
    return v4

    .line 2726
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 2727
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    return v4
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 8
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B

    .prologue
    .line 952
    const-string/jumbo v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMessageOnIcc, messageIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v7, 0x0

    .line 958
    .local v7, "success":Z
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 965
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 966
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 967
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 968
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 967
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 978
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v7    # "success":Z
    :cond_1
    :goto_0
    return v7

    .line 959
    .restart local v7    # "success":Z
    :cond_2
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "Not the current owner and reject this operation"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v1, 0x0

    return v1

    .line 971
    :catch_0
    move-exception v6

    .line 974
    .local v6, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "updateMessageOnIcc, RemoteException!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateSmsOnSimReadStatus(IZ)Z
    .locals 12
    .param p1, "index"    # I
    .param p2, "read"    # Z

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2772
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "updateSmsOnSimReadStatus"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    const/4 v4, 0x0

    .line 2776
    .local v4, "record":Lcom/android/internal/telephony/SmsRawData;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2777
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2778
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v6

    .line 2779
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2778
    invoke-interface {v1, v6, v7, p1}, Lcom/android/internal/telephony/ISms;->getMessageFromIccEfForSubscriber(ILjava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2785
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v4    # "record":Lcom/android/internal/telephony/SmsRawData;
    :cond_0
    :goto_0
    if-eqz v4, :cond_6

    .line 2786
    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v3

    .line 2787
    .local v3, "rawData":[B
    aget-byte v6, v3, v9

    and-int/lit16 v5, v6, 0xff

    .line 2788
    .local v5, "status":I
    const-string/jumbo v6, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sms status is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    if-eq v5, v11, :cond_1

    .line 2790
    if-eq v5, v10, :cond_1

    .line 2791
    const-string/jumbo v6, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "non-delivery sms "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    return v9

    .line 2781
    .end local v3    # "rawData":[B
    .end local v5    # "status":I
    .restart local v4    # "record":Lcom/android/internal/telephony/SmsRawData;
    :catch_0
    move-exception v0

    .line 2782
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "RemoteException"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2794
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v4    # "record":Lcom/android/internal/telephony/SmsRawData;
    .restart local v3    # "rawData":[B
    .restart local v5    # "status":I
    :cond_1
    if-ne v5, v11, :cond_3

    if-nez p2, :cond_3

    .line 2796
    :cond_2
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "no need to update status"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    return v10

    .line 2795
    :cond_3
    if-ne v5, v10, :cond_4

    if-nez p2, :cond_2

    .line 2799
    :cond_4
    const-string/jumbo v6, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update sms status as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    if-eqz p2, :cond_5

    const/4 v2, 0x1

    .line 2802
    .local v2, "newStatus":I
    :goto_1
    invoke-virtual {p0, p1, v2, v3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(II[B)Z

    move-result v6

    return v6

    .line 2801
    .end local v2    # "newStatus":I
    :cond_5
    const/4 v2, 0x3

    .restart local v2    # "newStatus":I
    goto :goto_1

    .line 2807
    .end local v2    # "newStatus":I
    .end local v3    # "rawData":[B
    .end local v5    # "status":I
    :cond_6
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "record is null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    return v9
.end method

.method public updateStoredMessageStatus(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "statusValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1621
    if-nez p1, :cond_0

    .line 1622
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Empty message URI"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1625
    :cond_0
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1626
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_1

    .line 1627
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/telephony/IMms;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1630
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1633
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
