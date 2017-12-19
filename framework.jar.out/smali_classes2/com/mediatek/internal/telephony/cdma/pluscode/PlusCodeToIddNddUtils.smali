.class public Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;
.super Ljava/lang/Object;
.source "PlusCodeToIddNddUtils.java"


# static fields
.field public static final INTERNATIONAL_PREFIX_SYMBOL:Ljava/lang/String; = "+"

.field static final LOG_TAG:Ljava/lang/String; = "PlusCodeToIddNddUtils"

.field private static final MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

.field private static sHpcd:Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;

.field private static sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->getInstance()Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sHpcd:Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .line 244
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/TelephonyPlusCode;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    .line 243
    sput-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canFormatPlusCodeForSms()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 333
    const/4 v0, 0x0

    .line 335
    .local v0, "canFormat":Z
    const-string/jumbo v2, "cdma.icc.operator.mcc"

    const-string/jumbo v3, ""

    .line 334
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "mcc":Ljava/lang/String;
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[canFormatPlusCodeForSms] Mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sput-object v5, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .line 338
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sHpcd:Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;

    if-eqz v2, :cond_0

    .line 339
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[canFormatPlusCodeForSms] Mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .line 342
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[canFormatPlusCodeForSms] getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 344
    sget-object v4, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .line 343
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 342
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 345
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canFormatPlusToIddNdd()Z
    .locals 20

    .prologue
    .line 86
    const-string/jumbo v17, "PlusCodeToIddNddUtils"

    const-string/jumbo v18, "-------------canFormatPlusToIddNdd-------------"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->getCdmaSubId()I

    move-result v3

    .line 88
    .local v3, "cdmaSubId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    .line 89
    .local v15, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v15, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v16

    .line 90
    .local v16, "value":Ljava/lang/String;
    const-string/jumbo v17, "PlusCodeToIddNddUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "cdmaSubId:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", network operator numeric:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string/jumbo v11, ""

    .line 92
    .local v11, "mccStr":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 93
    const/16 v17, 0x0

    const/16 v18, 0x4

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 97
    :goto_0
    const-string/jumbo v12, ""

    .line 100
    .local v12, "sidStr":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v17, "phoneEx"

    .line 99
    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v14

    .line 101
    .local v14, "telEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    invoke-interface {v14, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getServiceState(I)Landroid/os/Bundle;

    move-result-object v2

    .line 102
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 103
    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v13

    .line 104
    .local v13, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 112
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v13    # "ss":Landroid/telephony/ServiceState;
    .end local v14    # "telEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    :goto_1
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v17

    .line 113
    const-string/jumbo v18, "cdma.operator.ltmoffset"

    const-string/jumbo v19, ""

    .line 111
    invoke-static/range {v17 .. v19}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "ltmoffStr":Ljava/lang/String;
    const-string/jumbo v17, "PlusCodeToIddNddUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mcc = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", sid = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", ltm_off = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v6, 0x0

    .line 117
    .local v6, "find":Z
    const/16 v17, 0x0

    sput-object v17, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .line 118
    sget-object v17, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sHpcd:Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;

    if-eqz v17, :cond_4

    .line 119
    const-string/jumbo v17, "2134"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/4 v8, 0x0

    .line 120
    .local v8, "isValid":Z
    :goto_2
    const-string/jumbo v17, "PlusCodeToIddNddUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "[canFormatPlusToIddNdd] Mcc = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 121
    const-string/jumbo v19, ", !Mcc.startsWith(2134) = "

    .line 120
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isDigit(C)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 124
    const-string/jumbo v17, "000"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 131
    :cond_1
    invoke-static {v12}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->getMccFromConflictTableBySid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 132
    .local v10, "mccArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_9

    .line 133
    :cond_2
    const-string/jumbo v17, "PlusCodeToIddNddUtils"

    const-string/jumbo v18, "[canFormatPlusToIddNdd] Do not find cc by SID from confilcts table, so from lookup table"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {v12}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->getCcFromMINSTableBySid(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    move-result-object v17

    sput-object v17, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .line 136
    const-string/jumbo v17, "PlusCodeToIddNddUtils"

    .line 137
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "[canFormatPlusToIddNdd] getCcFromMINSTableBySid mccIddNddSid = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 138
    sget-object v19, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .line 137
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 136
    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3
    :goto_3
    sget-object v17, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    if-eqz v17, :cond_c

    const/4 v6, 0x1

    .line 157
    .end local v8    # "isValid":Z
    .end local v10    # "mccArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_4
    const-string/jumbo v17, "PlusCodeToIddNddUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "[canFormatPlusToIddNdd] find = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 158
    const-string/jumbo v19, ", mccIddNddSid = "

    .line 157
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 158
    sget-object v19, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .line 157
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v6

    .line 95
    .end local v6    # "find":Z
    .end local v9    # "ltmoffStr":Ljava/lang/String;
    .end local v12    # "sidStr":Ljava/lang/String;
    :cond_5
    const/16 v17, 0x0

    const/16 v18, 0x3

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 108
    .restart local v12    # "sidStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 109
    .local v5, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v17, "PlusCodeToIddNddUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "canFormatPlusToIddNdd, NullPointerException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 106
    .end local v5    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    .line 107
    .local v4, "ex":Landroid/os/RemoteException;
    const-string/jumbo v17, "PlusCodeToIddNddUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "canFormatPlusToIddNdd, RemoteException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 119
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v6    # "find":Z
    .restart local v9    # "ltmoffStr":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x1

    .restart local v8    # "isValid":Z
    goto/16 :goto_2

    .line 123
    :cond_7
    if-eqz v8, :cond_1

    .line 125
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    move-result-object v17

    sput-object v17, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .line 126
    const-string/jumbo v17, "PlusCodeToIddNddUtils"

    .line 127
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "[canFormatPlusToIddNdd] getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 128
    sget-object v19, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .line 127
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 126
    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v17, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    if-eqz v17, :cond_8

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 139
    .restart local v10    # "mccArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    .line 140
    sget-object v17, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sHpcd:Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v9}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->getCcFromMINSTableByLTM(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "findMcc":Ljava/lang/String;
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_a

    .line 142
    invoke-static {v7}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    move-result-object v17

    sput-object v17, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .line 144
    :cond_a
    const-string/jumbo v17, "PlusCodeToIddNddUtils"

    .line 145
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "[canFormatPlusToIddNdd] conflicts, getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 146
    sget-object v19, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .line 145
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 144
    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 147
    .end local v7    # "findMcc":Ljava/lang/String;
    :cond_b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 148
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 149
    .restart local v7    # "findMcc":Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    move-result-object v17

    sput-object v17, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .line 150
    const-string/jumbo v17, "PlusCodeToIddNddUtils"

    .line 151
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "[canFormatPlusToIddNdd] do not conflicts, getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 152
    sget-object v19, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    .line 151
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 150
    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 154
    .end local v7    # "findMcc":Ljava/lang/String;
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_4
.end method

.method public static checkMccBySidLtmOff(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "mccMnc"    # Ljava/lang/String;

    .prologue
    .line 436
    const-string/jumbo v11, "PlusCodeToIddNddUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[checkMccBySidLtmOff] mccMnc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->getCdmaSubId()I

    move-result v1

    .line 438
    .local v1, "cdmaSubId":I
    const-string/jumbo v8, ""

    .line 441
    .local v8, "strSid":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v11, "phoneEx"

    .line 440
    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v9

    .line 442
    .local v9, "telEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    invoke-interface {v9, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getServiceState(I)Landroid/os/Bundle;

    move-result-object v0

    .line 443
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 444
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 445
    .local v4, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 453
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "ss":Landroid/telephony/ServiceState;
    .end local v9    # "telEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v11

    .line 454
    const-string/jumbo v12, "cdma.operator.ltmoffset"

    const-string/jumbo v13, ""

    .line 452
    invoke-static {v11, v12, v13}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 455
    .local v5, "strLtmOff":Ljava/lang/String;
    const-string/jumbo v11, "PlusCodeToIddNddUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[checkMccBySidLtmOff] Sid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", Ltm_off = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-static {v8, v5}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->getMccFromConflictTableBySidLtmOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 461
    .local v6, "strMcc":Ljava/lang/String;
    const-string/jumbo v11, "PlusCodeToIddNddUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[checkMccBySidLtmOff] MccFromConflictTable = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-eqz v6, :cond_3

    .line 464
    move-object v10, v6

    .line 475
    .local v10, "tempMcc":Ljava/lang/String;
    :goto_1
    const-string/jumbo v11, "PlusCodeToIddNddUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[checkMccBySidLtmOff] tempMcc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string/jumbo v11, "310"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string/jumbo v11, "311"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string/jumbo v11, "312"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 478
    :cond_1
    invoke-static {v8}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->getMccMncFromSidMccMncListBySid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 479
    .local v7, "strMccMnc":Ljava/lang/String;
    const-string/jumbo v11, "PlusCodeToIddNddUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[checkMccBySidLtmOff] MccMnc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    if-eqz v7, :cond_2

    .line 481
    move-object v10, v7

    .line 485
    .end local v7    # "strMccMnc":Ljava/lang/String;
    :cond_2
    return-object v10

    .line 449
    .end local v5    # "strLtmOff":Ljava/lang/String;
    .end local v6    # "strMcc":Ljava/lang/String;
    .end local v10    # "tempMcc":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 450
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v11, "PlusCodeToIddNddUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checkMccBySidLtmOff, NullPointerException:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 447
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 448
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v11, "PlusCodeToIddNddUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checkMccBySidLtmOff, RemoteException:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 466
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v5    # "strLtmOff":Ljava/lang/String;
    .restart local v6    # "strMcc":Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeHpcdTable;->getMccFromMINSTableBySid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 467
    const-string/jumbo v11, "PlusCodeToIddNddUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[checkMccBySidLtmOff] MccFromMINSTable = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    if-eqz v6, :cond_4

    .line 469
    move-object v10, v6

    .restart local v10    # "tempMcc":Ljava/lang/String;
    goto/16 :goto_1

    .line 471
    .end local v10    # "tempMcc":Ljava/lang/String;
    :cond_4
    move-object v10, p0

    .restart local v10    # "tempMcc":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private static formatPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 167
    .local v0, "formatNumber":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    if-eqz v3, :cond_0

    .line 168
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    iget-object v2, v3, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mCc:Ljava/lang/String;

    .line 169
    .local v2, "sCC":Ljava/lang/String;
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number auto format correctly, mccIddNddSid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 170
    sget-object v5, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->toString()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mIdd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "formatNumber":Ljava/lang/String;
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CC dismatch, remove +(already erased before), add IDD formatNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v0    # "formatNumber":Ljava/lang/String;
    .end local v2    # "sCC":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 179
    .local v0, "formatNumber":Ljava/lang/String;
    .restart local v2    # "sCC":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    iget-object v1, v3, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mNdd:Ljava/lang/String;

    .line 180
    .local v1, "nddStr":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mCc:Ljava/lang/String;

    const-string/jumbo v4, "86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mCc:Ljava/lang/String;

    const-string/jumbo v4, "853"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 182
    :cond_2
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    const-string/jumbo v4, "CC matched, cc is chinese"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string/jumbo v1, "00"

    .line 193
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "formatNumber":Ljava/lang/String;
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CC matched, remove +(already erased before) and CC, add NDD formatNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    .local v0, "formatNumber":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 187
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isMobileNumber] number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {v2, p0}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->isMobileNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 189
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    const-string/jumbo v4, "CC matched, isMobile = true Ndd = "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method private static getCdmaSubId()I
    .locals 6

    .prologue
    .line 71
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 72
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 73
    .local v1, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 74
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 75
    .local v2, "subId":I
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 76
    return v2

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "subId":I
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method private static isMobileNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "sCC"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 247
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[isMobileNumber] number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", sCC = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 249
    :cond_0
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    const-string/jumbo v7, "[isMobileNumber] please check the param "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return v9

    .line 252
    :cond_1
    const/4 v3, 0x0

    .line 254
    .local v3, "isMobile":Z
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    if-nez v6, :cond_2

    .line 255
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    const-string/jumbo v7, "[isMobileNumber] MOBILE_NUMBER_SPEC_MAP == null "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v3

    .line 259
    :cond_2
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 262
    .local v5, "size":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 268
    .local v2, "iCC":I
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[isMobileNumber] iCC = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 270
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[isMobileNumber] value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 271
    sget-object v8, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 270
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 271
    const-string/jumbo v8, ", key =  "

    .line 270
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 272
    sget-object v8, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 270
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-ne v6, v2, :cond_4

    .line 274
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    const-string/jumbo v7, "[isMobileNumber]  value = icc"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "prfix":Ljava/lang/String;
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[isMobileNumber]  prfix = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 278
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    const-string/jumbo v7, "[isMobileNumber]  number.startsWith(prfix) = true"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v3, 0x1

    .line 285
    .end local v4    # "prfix":Ljava/lang/String;
    :cond_3
    return v3

    .line 263
    .end local v1    # "i":I
    .end local v2    # "iCC":I
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return v3

    .line 269
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "i":I
    .restart local v2    # "iCC":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public static removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[removeIddNddAddPlusCode] befor format number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 297
    :cond_0
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    const-string/jumbo v4, "[removeIddNddAddPlusCode] please check the param "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-object p0

    .line 301
    :cond_1
    move-object v1, p0

    .line 302
    .local v1, "formatNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .line 304
    .local v0, "bFind":Z
    const-string/jumbo v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 305
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->canFormatPlusToIddNdd()Z

    move-result v0

    .line 307
    .local v0, "bFind":Z
    if-nez v0, :cond_2

    .line 308
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    .line 309
    const-string/jumbo v4, "[removeIddNddAddPlusCode] find no operator that match the MCC "

    .line 308
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-object p0

    .line 313
    :cond_2
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    if-eqz v3, :cond_3

    .line 314
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    iget-object v2, v3, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mIdd:Ljava/lang/String;

    .line 315
    .local v2, "strIdd":Ljava/lang/String;
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[removeIddNddAddPlusCode] find match the cc, Idd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 318
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .end local v0    # "bFind":Z
    .end local v2    # "strIdd":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[removeIddNddAddPlusCode] number after format = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-object v1
.end method

.method public static removeIddNddAddPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 398
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[removeIddNddAddPlusCodeForSms] befor format number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 400
    :cond_0
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    const-string/jumbo v4, "[removeIddNddAddPlusCodeForSms] please check the param "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-object p0

    .line 404
    :cond_1
    move-object v1, p0

    .line 405
    .local v1, "formatNumber":Ljava/lang/String;
    const-string/jumbo v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 406
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->canFormatPlusCodeForSms()Z

    move-result v0

    .line 407
    .local v0, "camFormat":Z
    if-nez v0, :cond_2

    .line 408
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    .line 409
    const-string/jumbo v4, "[removeIddNddAddPlusCodeForSms] find no operator that match the MCC "

    .line 408
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-object v1

    .line 413
    :cond_2
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    if-eqz v3, :cond_3

    .line 414
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;

    iget-object v2, v3, Lcom/mediatek/internal/telephony/cdma/pluscode/MccIddNddSid;->mIdd:Ljava/lang/String;

    .line 415
    .local v2, "strIdd":Ljava/lang/String;
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[removeIddNddAddPlusCodeForSms] find match the cc, Idd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 415
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 418
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 419
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[removeIddNddAddPlusCodeForSms] sub num = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 425
    .end local v0    # "camFormat":Z
    .end local v2    # "strIdd":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[removeIddNddAddPlusCodeForSms] number after format = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-object v1
.end method

.method public static replacePlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 358
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replacePlusCodeForSms number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 361
    :cond_0
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number can\'t format correctly, number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-object v5

    .line 360
    :cond_1
    const-string/jumbo v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->canFormatPlusCodeForSms()Z

    move-result v0

    .line 366
    .local v0, "camFormat":Z
    if-nez v0, :cond_2

    .line 367
    return-object v5

    .line 371
    :cond_2
    const-string/jumbo v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 372
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number before remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 375
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number after   remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_3
    const/4 v1, 0x0

    .line 383
    .local v1, "formatNumber":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 384
    invoke-static {p0}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->formatPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    .end local v1    # "formatNumber":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method public static replacePlusCodeWithIddNdd(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 210
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replacePlusCodeWithIddNdd number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 213
    :cond_0
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number can\'t format correctly, number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-object v5

    .line 212
    :cond_1
    const-string/jumbo v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->canFormatPlusToIddNdd()Z

    move-result v0

    .line 219
    .local v0, "bFind":Z
    if-nez v0, :cond_2

    .line 220
    return-object v5

    .line 224
    :cond_2
    const-string/jumbo v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number before remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 228
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number after   remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_3
    const/4 v1, 0x0

    .line 236
    .local v1, "formatNumber":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 237
    invoke-static {p0}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeToIddNddUtils;->formatPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .end local v1    # "formatNumber":Ljava/lang/String;
    :cond_4
    return-object v1
.end method
