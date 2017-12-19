.class public Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;
.super Ljava/lang/Object;
.source "RadioCapabilitySwitchUtil.java"


# static fields
.field public static final CN_MCC:Ljava/lang/String; = "460"

.field public static final DO_SWITCH:I = 0x0

.field public static final ICCID_ERROR:I = 0x3

.field public static final IMSI_NOT_READY:Ljava/lang/String; = "0"

.field public static final IMSI_NOT_READY_OR_SIM_LOCKED:I = 0x2

.field public static final IMSI_READY:Ljava/lang/String; = "1"

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final MAIN_SIM_PROP:Ljava/lang/String; = "persist.radio.simswitch.iccid"

.field public static final NOT_SHOW_DIALOG:I = 0x1

.field public static final NOT_SWITCH:I = 0x1

.field public static final NOT_SWITCH_SIM_INFO_NOT_READY:I = 0x2

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field public static final OP01_6M_PRIORITY_OP01_SIM:I = 0x1

.field public static final OP01_6M_PRIORITY_OP01_USIM:I = 0x0

.field public static final OP01_6M_PRIORITY_OTHER:I = 0x2

.field private static final PLMN_TABLE_OP01:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP02:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP09:[Ljava/lang/String;

.field private static final PROPERTY_ICCID:Ljava/lang/String; = "ril.iccid.sim"

.field private static final PROPERTY_SIM_ICCID:[Ljava/lang/String;

.field private static final PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

.field public static final SHOW_DIALOG:I = 0x0

.field public static final SIM_OP_INFO_OP01:I = 0x2

.field public static final SIM_OP_INFO_OP02:I = 0x3

.field public static final SIM_OP_INFO_OP09:I = 0x4

.field public static final SIM_OP_INFO_OVERSEA:I = 0x1

.field public static final SIM_OP_INFO_UNKNOWN:I = 0x0

.field public static final SIM_SWITCH_MODE_DUAL_TALK:I = 0x3

.field public static final SIM_SWITCH_MODE_DUAL_TALK_SWAP:I = 0x4

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS:I = 0x1

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS_LITE:I = 0x2

.field public static final SIM_TYPE_OTHER:I = 0x2

.field public static final SIM_TYPE_SIM:I = 0x0

.field public static final SIM_TYPE_USIM:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    .line 85
    const-string/jumbo v1, "46000"

    aput-object v1, v0, v3

    const-string/jumbo v1, "46002"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46007"

    aput-object v1, v0, v5

    const-string/jumbo v1, "46008"

    aput-object v1, v0, v6

    const-string/jumbo v1, "45412"

    aput-object v1, v0, v7

    const-string/jumbo v1, "45413"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "00101"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "00211"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "00321"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "00431"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "00541"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "00651"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "00761"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "00871"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "00902"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "01012"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "01122"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "01232"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "46004"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "46602"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "50270"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 84
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    .line 93
    new-array v0, v7, [Ljava/lang/String;

    .line 94
    const-string/jumbo v1, "46001"

    aput-object v1, v0, v3

    const-string/jumbo v1, "46006"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46009"

    aput-object v1, v0, v5

    const-string/jumbo v1, "45407"

    aput-object v1, v0, v6

    .line 93
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    .line 98
    new-array v0, v7, [Ljava/lang/String;

    .line 99
    const-string/jumbo v1, "46005"

    aput-object v1, v0, v3

    const-string/jumbo v1, "45502"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46003"

    aput-object v1, v0, v5

    const-string/jumbo v1, "46011"

    aput-object v1, v0, v6

    .line 98
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    .line 105
    new-array v0, v7, [Ljava/lang/String;

    .line 106
    const-string/jumbo v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    .line 107
    const-string/jumbo v1, "ril.iccid.sim2"

    aput-object v1, v0, v4

    .line 108
    const-string/jumbo v1, "ril.iccid.sim3"

    aput-object v1, v0, v5

    .line 109
    const-string/jumbo v1, "ril.iccid.sim4"

    aput-object v1, v0, v6

    .line 105
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    .line 121
    new-array v0, v7, [Ljava/lang/String;

    .line 122
    const-string/jumbo v1, "ril.imsi.status.sim1"

    aput-object v1, v0, v3

    .line 123
    const-string/jumbo v1, "ril.imsi.status.sim2"

    aput-object v1, v0, v4

    .line 124
    const-string/jumbo v1, "ril.imsi.status.sim3"

    aput-object v1, v0, v5

    .line 125
    const-string/jumbo v1, "ril.imsi.status.sim4"

    aput-object v1, v0, v6

    .line 121
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOp01(I[I[I)Z
    .locals 11
    .param p0, "targetPhoneId"    # I
    .param p1, "simOpInfo"    # [I
    .param p2, "simType"    # [I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 418
    const-string/jumbo v6, "persist.radio.simswitch"

    const-string/jumbo v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 417
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 419
    .local v0, "curPhoneId":I
    const/4 v3, 0x0

    .line 420
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 421
    .local v4, "insertedStatus":I
    array-length v5, p1

    .line 422
    .local v5, "phoneNum":I
    new-array v1, v5, [Ljava/lang/String;

    .line 423
    .local v1, "currIccId":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 424
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ril.iccid.sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 425
    const-string/jumbo v6, "N/A"

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 426
    add-int/lit8 v3, v3, 0x1

    .line 427
    shl-int v6, v8, v2

    or-int/2addr v4, v6

    .line 423
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkOp01 : curPhoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", insertedSimCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 432
    if-ne v3, v8, :cond_2

    .line 433
    const-string/jumbo v6, "checkOp01 : single SIM case, switch!"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 434
    return v8

    .line 436
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isOp01LCProject()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 437
    aget v6, p2, p0

    if-ne v6, v10, :cond_3

    .line 438
    aget v6, p2, v0

    if-eq v6, v10, :cond_3

    .line 439
    const-string/jumbo v6, "checkOp01 : case L+C; stay in current phone"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 440
    return v9

    .line 443
    :cond_3
    aget v6, p1, p0

    if-ne v6, v10, :cond_6

    .line 444
    aget v6, p2, p0

    if-nez v6, :cond_5

    .line 445
    aget v6, p1, v0

    if-ne v6, v10, :cond_4

    .line 446
    aget v6, p2, v0

    if-eqz v6, :cond_4

    .line 447
    const-string/jumbo v6, "checkOp01 : case 1,2; stay in current phone"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 448
    return v9

    .line 452
    :cond_4
    const-string/jumbo v6, "checkOp01 : case 3,4"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 453
    return v8

    .line 458
    :cond_5
    const-string/jumbo v6, "checkOp01 : case 1,2"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 459
    return v8

    .line 461
    :cond_6
    aget v6, p1, p0

    if-ne v6, v8, :cond_a

    .line 462
    aget v6, p1, v0

    if-ne v6, v10, :cond_7

    .line 463
    const-string/jumbo v6, "checkOp01 : case 1,2,3,4; stay in current phone"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 464
    return v9

    .line 465
    :cond_7
    aget v6, p2, p0

    if-nez v6, :cond_9

    .line 466
    aget v6, p1, v0

    if-ne v6, v8, :cond_8

    .line 467
    aget v6, p2, v0

    if-eqz v6, :cond_8

    .line 468
    const-string/jumbo v6, "checkOp01 : case 5,6; stay in current phone"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 469
    return v9

    .line 473
    :cond_8
    const-string/jumbo v6, "checkOp01 : case 7,8"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 474
    return v8

    .line 479
    :cond_9
    const-string/jumbo v6, "checkOp01 : case 5,6"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 480
    return v8

    .line 483
    :cond_a
    if-ne v3, v10, :cond_b

    .line 484
    aget v6, p2, v0

    if-ne v6, v10, :cond_b

    .line 485
    aget v6, p2, p0

    if-ne v6, v10, :cond_b

    .line 486
    const-string/jumbo v6, "checkOp01 : case C+C, switch!"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 487
    return v8

    .line 489
    :cond_b
    aget v6, p1, p0

    if-nez v6, :cond_c

    .line 490
    const-string/jumbo v6, "checkOp01 : case 10, target IMSI not ready"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 491
    if-gt v4, v10, :cond_c

    .line 492
    const-string/jumbo v6, "checkOp01 : case 10, single SIM case, switch!"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 493
    return v8

    .line 496
    :cond_c
    const-string/jumbo v6, "ro.mtk_world_phone_policy"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 497
    aget v6, p1, v0

    if-eq v6, v10, :cond_d

    .line 498
    aget v6, p1, v0

    if-eq v6, v8, :cond_d

    .line 499
    const-string/jumbo v6, "checkOp01 : case 11, op01-B, switch it!"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 500
    return v8

    .line 504
    :cond_d
    const-string/jumbo v6, "checkOp01 : case 9"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 505
    return v9
.end method

.method private static checkOp01LC(I[I[I)Z
    .locals 12
    .param p0, "targetPhoneId"    # I
    .param p1, "simOpInfo"    # [I
    .param p2, "simType"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 511
    const-string/jumbo v7, "persist.radio.simswitch"

    const-string/jumbo v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 510
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 512
    .local v0, "curPhoneId":I
    const/4 v3, 0x0

    .line 513
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 514
    .local v4, "insertedStatus":I
    array-length v5, p1

    .line 515
    .local v5, "phoneNum":I
    new-array v1, v5, [Ljava/lang/String;

    .line 516
    .local v1, "currIccId":[Ljava/lang/String;
    new-array v6, v5, [I

    .line 517
    .local v6, "priority":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_4

    .line 518
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ril.iccid.sim"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 519
    const-string/jumbo v7, "N/A"

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 520
    add-int/lit8 v3, v3, 0x1

    .line 521
    shl-int v7, v9, v2

    or-int/2addr v4, v7

    .line 523
    :cond_0
    aget v7, p1, v2

    if-ne v7, v11, :cond_3

    .line 524
    aget v7, p2, v2

    if-ne v7, v9, :cond_2

    .line 525
    aput v10, v6, v2

    .line 517
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    :cond_2
    aget v7, p2, v2

    if-nez v7, :cond_1

    .line 527
    aput v9, v6, v2

    goto :goto_1

    .line 530
    :cond_3
    aput v11, v6, v2

    goto :goto_1

    .line 534
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkOp01LC(curPhoneId): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 535
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkOp01LC(insertedSimCount): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 536
    if-ne v3, v9, :cond_5

    .line 537
    const-string/jumbo v7, "checkOp01LC : single SIM case, switch!"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 538
    return v9

    .line 540
    :cond_5
    aget v7, v6, p0

    aget v8, v6, v0

    if-gt v7, v8, :cond_6

    .line 541
    const-string/jumbo v7, "checkOp01LC : target priority greater than or equal to current, switch!"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 542
    return v9

    .line 544
    :cond_6
    const-string/jumbo v7, "checkOp01LC : target priority lower than current; stay in current phone"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 545
    return v10
.end method

.method public static clearRilMccMnc(I)V
    .locals 3
    .param p0, "slot"    # I

    .prologue
    .line 748
    if-nez p0, :cond_0

    .line 749
    const-string/jumbo v0, "gsm.sim.ril.mcc.mnc"

    .line 753
    .local v0, "propStr":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clear property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 746
    return-void

    .line 751
    .end local v0    # "propStr":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "propStr":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I
    .locals 5
    .param p0, "curId"    # I
    .param p1, "op01Usim"    # [Z
    .param p2, "op01Sim"    # [Z
    .param p3, "overseaUsim"    # [Z
    .param p4, "overseaSim"    # [Z

    .prologue
    const/4 v4, -0x1

    .line 343
    const/4 v2, -0x1

    .line 344
    .local v2, "targetSim":I
    array-length v1, p1

    .line 346
    .local v1, "phoneNum":I
    aget-boolean v3, p1, p0

    if-eqz v3, :cond_0

    .line 347
    return p0

    .line 349
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 350
    aget-boolean v3, p1, v0

    if-eqz v3, :cond_1

    .line 351
    move v2, v0

    .line 349
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_2
    if-ne v2, v4, :cond_3

    aget-boolean v3, p2, p0

    if-eqz v3, :cond_4

    .line 355
    :cond_3
    return v2

    .line 357
    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_6

    .line 358
    aget-boolean v3, p2, v0

    if-eqz v3, :cond_5

    .line 359
    move v2, v0

    .line 357
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 362
    :cond_6
    if-ne v2, v4, :cond_7

    aget-boolean v3, p3, p0

    if-eqz v3, :cond_8

    .line 363
    :cond_7
    return v2

    .line 365
    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_a

    .line 366
    aget-boolean v3, p3, v0

    if-eqz v3, :cond_9

    .line 367
    move v2, v0

    .line 365
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 370
    :cond_a
    if-ne v2, v4, :cond_b

    aget-boolean v3, p4, p0

    if-eqz v3, :cond_c

    .line 371
    :cond_b
    return v2

    .line 373
    :cond_c
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_e

    .line 374
    aget-boolean v3, p4, v0

    if-eqz v3, :cond_d

    .line 375
    move v2, v0

    .line 373
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 378
    :cond_e
    return v2
.end method

.method public static getHighestPriorityPhone(I[I)I
    .locals 9
    .param p0, "capPhoneId"    # I
    .param p1, "priority"    # [I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 389
    const/4 v4, 0x0

    .line 390
    .local v4, "targetPhone":I
    array-length v3, p1

    .line 391
    .local v3, "phoneNum":I
    const/4 v1, 0x0

    .line 392
    .local v1, "highestPriorityCount":I
    const/4 v0, 0x0

    .line 394
    .local v0, "highestPriorityBitMap":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 395
    aget v5, p1, v2

    aget v6, p1, v4

    if-ge v5, v6, :cond_1

    .line 396
    move v4, v2

    .line 397
    const/4 v1, 0x1

    .line 398
    shl-int v0, v7, v2

    .line 394
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    :cond_1
    aget v5, p1, v2

    aget v6, p1, v4

    if-ne v5, v6, :cond_0

    .line 400
    add-int/lit8 v1, v1, 0x1

    .line 401
    shl-int v5, v7, v2

    or-int/2addr v0, v5

    goto :goto_1

    .line 404
    :cond_2
    if-ne v1, v7, :cond_3

    .line 405
    return v4

    .line 406
    :cond_3
    if-ne p0, v8, :cond_4

    .line 409
    return v8

    .line 410
    :cond_4
    shl-int v5, v7, p0

    and-int/2addr v5, v0

    if-eqz v5, :cond_5

    .line 411
    return p0

    .line 413
    :cond_5
    return v8
.end method

.method public static getMainCapabilityPhoneId()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "phoneId":I
    const-string/jumbo v2, "ro.mtk_dt_support"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    const-string/jumbo v2, "persist.ril.simswitch.swapmode"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 557
    .local v1, "swapMode":I
    if-ne v1, v4, :cond_1

    .line 558
    const/4 v0, 0x0

    .line 565
    .end local v1    # "swapMode":I
    :cond_0
    :goto_0
    const-string/jumbo v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[RadioCapSwitchUtil] getMainCapabilityPhoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return v0

    .line 559
    .restart local v1    # "swapMode":I
    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 560
    const/4 v0, 0x1

    goto :goto_0

    .line 563
    .end local v1    # "swapMode":I
    :cond_2
    const-string/jumbo v2, "persist.radio.simswitch"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method private static getSimImsiStatus(I)Ljava/lang/String;
    .locals 2
    .param p0, "slot"    # I

    .prologue
    .line 742
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 743
    .local v0, "propStr":Ljava/lang/String;
    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSimInfo([I[II)Z
    .locals 13
    .param p0, "simOpInfo"    # [I
    .param p1, "simType"    # [I
    .param p2, "insertedStatus"    # I

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 168
    array-length v5, p0

    new-array v3, v5, [Ljava/lang/String;

    .line 169
    .local v3, "strMnc":[Ljava/lang/String;
    array-length v5, p0

    new-array v4, v5, [Ljava/lang/String;

    .line 172
    .local v4, "strSimType":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_15

    .line 173
    if-nez v0, :cond_7

    .line 174
    const-string/jumbo v2, "gsm.ril.uicctype"

    .line 178
    .local v2, "propStr":Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 179
    aget-object v5, v4, v0

    const-string/jumbo v7, "SIM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 180
    aput v6, p1, v0

    .line 186
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SimType["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "]= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v4, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", simType["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "]="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v7, p1, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 188
    if-nez v0, :cond_a

    .line 189
    const-string/jumbo v2, "gsm.sim.ril.mcc.mnc"

    .line 193
    :goto_3
    const-string/jumbo v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 194
    aget-object v5, v3, v0

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, v3, v0

    const-string/jumbo v7, "error"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 195
    :cond_0
    const-string/jumbo v5, "1"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimImsiStatus(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 196
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isOp01LCProject()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    aget v5, p1, v0

    if-ne v5, v11, :cond_1

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ril.uim.subscriberid."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    const-string/jumbo v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 201
    :cond_1
    aget-object v5, v3, v0

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 202
    aget-object v5, v3, v0

    const-string/jumbo v7, "N/A"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 201
    if-nez v5, :cond_2

    .line 203
    aget-object v5, v3, v0

    const-string/jumbo v7, "error"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 201
    if-eqz v5, :cond_3

    .line 204
    :cond_2
    const-string/jumbo v2, "gsm.sim.operator.imsi"

    .line 205
    const-string/jumbo v5, ""

    invoke-static {v0, v2, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 207
    :cond_3
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v12, :cond_4

    .line 208
    aget-object v5, v3, v0

    invoke-virtual {v5, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 210
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "strMnc["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "] from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 216
    :cond_5
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertedStatus:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 217
    if-ltz p2, :cond_d

    shl-int v5, v10, v0

    and-int/2addr v5, p2

    if-lez v5, :cond_d

    .line 218
    aget-object v5, v3, v0

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    aget-object v5, v3, v0

    const-string/jumbo v7, "error"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 219
    :cond_6
    const-string/jumbo v5, "SIM is inserted but no imsi"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 220
    return v6

    .line 176
    .end local v2    # "propStr":Ljava/lang/String;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "gsm.ril.uicctype."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "propStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 181
    :cond_8
    aget-object v5, v4, v0

    const-string/jumbo v7, "USIM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 182
    aput v10, p1, v0

    goto/16 :goto_2

    .line 184
    :cond_9
    aput v11, p1, v0

    goto/16 :goto_2

    .line 191
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 213
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "strMnc["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "] from ril.mcc.mnc:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 222
    :cond_c
    aget-object v5, v3, v0

    const-string/jumbo v7, "sim_lock"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 223
    const-string/jumbo v5, "SIM is lock, wait pin unlock"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 224
    return v6

    .line 227
    :cond_d
    sget-object v7, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_5
    if-ge v5, v8, :cond_e

    aget-object v1, v7, v5

    .line 228
    .local v1, "mccmnc":Ljava/lang/String;
    aget-object v9, v3, v0

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 229
    aput v11, p0, v0

    .line 233
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_e
    aget v5, p0, v0

    if-nez v5, :cond_f

    .line 234
    sget-object v7, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_6
    if-ge v5, v8, :cond_f

    aget-object v1, v7, v5

    .line 235
    .restart local v1    # "mccmnc":Ljava/lang/String;
    aget-object v9, v3, v0

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 236
    const/4 v5, 0x3

    aput v5, p0, v0

    .line 241
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_f
    aget v5, p0, v0

    if-nez v5, :cond_10

    .line 242
    sget-object v7, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_7
    if-ge v5, v8, :cond_10

    aget-object v1, v7, v5

    .line 243
    .restart local v1    # "mccmnc":Ljava/lang/String;
    aget-object v9, v3, v0

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 244
    const/4 v5, 0x4

    aput v5, p0, v0

    .line 249
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_10
    aget v5, p0, v0

    if-nez v5, :cond_11

    .line 250
    aget-object v5, v3, v0

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 251
    aput v10, p0, v0

    .line 254
    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "strMnc["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "]= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", simOpInfo["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "]="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v7, p0, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 227
    .restart local v1    # "mccmnc":Ljava/lang/String;
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 234
    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 242
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 256
    .end local v1    # "mccmnc":Ljava/lang/String;
    .end local v2    # "propStr":Ljava/lang/String;
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSimInfo(simOpInfo): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSimInfo(simType): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 258
    return v10
.end method

.method public static isAnySimLocked(I)Z
    .locals 8
    .param p0, "phoneNum"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 676
    const-string/jumbo v4, "ro.mtk_svlte_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 677
    const-string/jumbo v4, "ro.mtk_srlte_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 676
    if-eqz v4, :cond_1

    .line 678
    :cond_0
    const-string/jumbo v4, "isAnySimLocked always returns false in C2K"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 679
    return v6

    .line 682
    :cond_1
    new-array v2, p0, [Ljava/lang/String;

    .line 683
    .local v2, "mnc":[Ljava/lang/String;
    new-array v1, p0, [Ljava/lang/String;

    .line 685
    .local v1, "iccid":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_a

    .line 686
    sget-object v4, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 688
    aget-object v4, v1, v0

    const-string/jumbo v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 689
    const-string/jumbo v4, "gsm.sim.operator.imsi"

    const-string/jumbo v5, ""

    invoke-static {v0, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 690
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_2

    .line 691
    aget-object v4, v2, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 693
    :cond_2
    aget-object v4, v2, v0

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 694
    if-nez v0, :cond_5

    .line 695
    const-string/jumbo v3, "gsm.sim.ril.mcc.mnc"

    .line 699
    .local v3, "propStr":Ljava/lang/String;
    :goto_1
    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mnc["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] from ril.mcc.mnc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 707
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_3
    :goto_2
    aget-object v4, v1, v0

    const-string/jumbo v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    aget-object v4, v2, v0

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 708
    aget-object v4, v2, v0

    const-string/jumbo v5, "sim_lock"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 707
    if-eqz v4, :cond_7

    .line 709
    :cond_4
    const/4 v4, 0x1

    return v4

    .line 697
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propStr":Ljava/lang/String;
    goto :goto_1

    .line 702
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from gsm.sim.operator.imsi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 703
    aget-object v5, v1, v0

    .line 702
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 712
    :cond_7
    const-string/jumbo v4, "1"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimImsiStatus(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "clear mcc.mnc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 714
    if-nez v0, :cond_9

    .line 715
    const-string/jumbo v3, "gsm.sim.ril.mcc.mnc"

    .line 719
    .restart local v3    # "propStr":Ljava/lang/String;
    :goto_3
    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 717
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propStr":Ljava/lang/String;
    goto :goto_3

    .line 723
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_a
    return v6
.end method

.method public static isNeedShowSimDialog()I
    .locals 14

    .prologue
    .line 584
    const-string/jumbo v12, "ro.mtk_disable_cap_switch"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 585
    const-string/jumbo v12, "mtk_disable_cap_switch is true"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 586
    const/4 v12, 0x0

    return v12

    .line 589
    :cond_0
    const-string/jumbo v12, "isNeedShowSimDialog start"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 590
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    .line 591
    .local v7, "phoneCount":I
    new-array v9, v7, [I

    .line 592
    .local v9, "simOpInfo":[I
    new-array v10, v7, [I

    .line 593
    .local v10, "simType":[I
    new-array v0, v7, [Ljava/lang/String;

    .line 594
    .local v0, "currIccId":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 595
    .local v2, "insertedSimCount":I
    const/4 v3, 0x0

    .line 596
    .local v3, "insertedStatus":I
    const/4 v4, 0x0

    .line 597
    .local v4, "op02CardCount":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v11, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .local v8, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v5, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v6, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_4

    .line 603
    sget-object v12, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v12, v12, v1

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v1

    .line 604
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "currIccid["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 605
    aget-object v12, v0, v1

    if-eqz v12, :cond_1

    const-string/jumbo v12, ""

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 606
    :cond_1
    const-string/jumbo v12, "GSM"

    const-string/jumbo v13, "iccid not found, wait for next sim state change"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v12, 0x3

    return v12

    .line 609
    :cond_2
    const-string/jumbo v12, "N/A"

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 610
    add-int/lit8 v2, v2, 0x1

    .line 611
    const/4 v12, 0x1

    shl-int/2addr v12, v1

    or-int/2addr v3, v12

    .line 602
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 615
    :cond_4
    const/4 v12, 0x2

    if-ge v2, v12, :cond_5

    .line 616
    const-string/jumbo v12, "isNeedShowSimDialog: insert sim count < 2, do not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 617
    const/4 v12, 0x1

    return v12

    .line 620
    :cond_5
    invoke-static {v9, v10, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v12

    if-nez v12, :cond_6

    .line 621
    const-string/jumbo v12, "GSM"

    const-string/jumbo v13, "isNeedShowSimDialog: Can\'t get SIM information"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v12, 0x2

    return v12

    .line 624
    :cond_6
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_a

    .line 626
    aget v12, v10, v1

    const/4 v13, 0x1

    if-ne v13, v12, :cond_8

    .line 627
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_7
    :goto_2
    aget v12, v9, v1

    const/4 v13, 0x3

    if-ne v13, v12, :cond_9

    .line 634
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 628
    :cond_8
    aget v12, v10, v1

    if-nez v12, :cond_7

    .line 629
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 636
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 639
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "usimIndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 640
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "op02IndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_d

    .line 644
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_c

    .line 645
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 646
    add-int/lit8 v4, v4, 0x1

    .line 644
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 650
    :cond_c
    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 651
    const-string/jumbo v12, "isNeedShowSimDialog: One OP02Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 652
    const/4 v12, 0x1

    return v12

    .line 654
    :cond_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 655
    const-string/jumbo v12, "isNeedShowSimDialog: One Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 656
    const/4 v12, 0x1

    return v12

    .line 660
    :cond_e
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_10

    .line 661
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 662
    add-int/lit8 v4, v4, 0x1

    .line 660
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 666
    :cond_10
    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 667
    const-string/jumbo v12, "isNeedShowSimDialog: One non-OP02 Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 668
    const/4 v12, 0x1

    return v12

    .line 671
    :cond_11
    const-string/jumbo v12, "isNeedShowSimDialog: Show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 672
    const/4 v12, 0x0

    return v12
.end method

.method public static isNeedSwitchInOpPackage([Lcom/android/internal/telephony/Phone;[Landroid/telephony/RadioAccessFamily;)I
    .locals 14
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;
    .param p1, "rats"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 272
    const-string/jumbo v11, "ro.operator.optr"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "operatorSpec":Ljava/lang/String;
    array-length v11, p0

    new-array v6, v11, [I

    .line 274
    .local v6, "simOpInfo":[I
    array-length v11, p0

    new-array v7, v11, [I

    .line 276
    .local v7, "simType":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    .line 277
    .local v5, "phoneCount":I
    const/4 v2, 0x0

    .line 278
    .local v2, "insertedSimCount":I
    const/4 v3, 0x0

    .line 279
    .local v3, "insertedStatus":I
    new-array v0, v5, [Ljava/lang/String;

    .line 281
    .local v0, "currIccId":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Operator Spec:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v11, "ro.mtk_disable_cap_switch"

    invoke-static {v11, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 283
    const-string/jumbo v9, "mtk_disable_cap_switch is true"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 284
    return v10

    .line 285
    :cond_0
    const-string/jumbo v11, "OP01"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 293
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_5

    .line 294
    sget-object v11, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v11, v11, v1

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v1

    .line 295
    aget-object v11, v0, v1

    if-eqz v11, :cond_1

    const-string/jumbo v11, ""

    aget-object v12, v0, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 296
    :cond_1
    const-string/jumbo v9, "error: iccid not found, not switch, return NOT_SWITCH_SIM_INFO_NOT_READY"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 297
    return v13

    .line 289
    .end local v1    # "i":I
    :cond_2
    return v9

    .line 299
    .restart local v1    # "i":I
    :cond_3
    const-string/jumbo v11, "N/A"

    aget-object v12, v0, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 300
    add-int/lit8 v2, v2, 0x1

    .line 301
    shl-int v11, v10, v1

    or-int/2addr v3, v11

    .line 293
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_5
    invoke-static {v6, v7, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v11

    if-nez v11, :cond_6

    .line 305
    if-eq v2, v10, :cond_6

    .line 306
    return v13

    .line 311
    :cond_6
    const/4 v8, 0x0

    .local v8, "targetPhoneId":I
    :goto_1
    array-length v11, p1

    if-ge v8, v11, :cond_7

    .line 312
    const-string/jumbo v11, "ro.mtk_lte_support"

    invoke-static {v11, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v10, :cond_8

    .line 313
    aget-object v11, p1, v8

    invoke-virtual {v11}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v11

    and-int/lit16 v11, v11, 0x4000

    .line 314
    const/16 v12, 0x4000

    .line 313
    if-ne v11, v12, :cond_9

    .line 324
    :cond_7
    const-string/jumbo v11, "OP01"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 325
    invoke-static {v8, v6, v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->checkOp01LC(I[I[I)Z

    move-result v11

    if-eqz v11, :cond_a

    :goto_2
    return v9

    .line 318
    :cond_8
    aget-object v11, p1, v8

    invoke-virtual {v11}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    .line 319
    const/16 v12, 0x8

    .line 318
    if-eq v11, v12, :cond_7

    .line 311
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_a
    move v9, v10

    .line 325
    goto :goto_2

    .line 327
    :cond_b
    return v9
.end method

.method public static isOp01LCProject()Z
    .locals 2

    .prologue
    .line 727
    const-string/jumbo v0, "ro.mtk_c2k_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const-string/jumbo v0, "ro.operator.optr"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 727
    if-eqz v0, :cond_0

    .line 729
    const-string/jumbo v0, "return true for OP01 L+C project"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 730
    const/4 v0, 0x1

    return v0

    .line 732
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 570
    const-string/jumbo v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[RadioCapSwitchUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-void
.end method

.method public static updateIccid([Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "bIsMajorPhone":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 140
    const/4 v0, 0x0

    .line 141
    const-string/jumbo v3, "ro.mtk_lte_support"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 142
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    and-int/lit16 v3, v3, 0x4000

    .line 143
    const/16 v4, 0x4000

    .line 142
    if-ne v3, v4, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 152
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ril.iccid.sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "currIccId":Ljava/lang/String;
    const-string/jumbo v3, "persist.radio.simswitch.iccid"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIccid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 137
    .end local v1    # "currIccId":Ljava/lang/String;
    :cond_1
    return-void

    .line 147
    :cond_2
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    .line 148
    const/16 v4, 0x8

    .line 147
    if-ne v3, v4, :cond_0

    .line 149
    const/4 v0, 0x1

    goto :goto_1

    .line 139
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static updateSimImsiStatus(ILjava/lang/String;)V
    .locals 3
    .param p0, "slot"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSimImsiStatus slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 737
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 738
    .local v0, "propStr":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    return-void
.end method
