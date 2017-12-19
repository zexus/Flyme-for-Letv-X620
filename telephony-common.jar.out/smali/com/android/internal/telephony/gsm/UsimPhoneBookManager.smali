.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_AAS_LOAD_DONE:I = 0x8

.field private static final EVENT_AAS_UPDATE_DONE:I = 0x15

.field private static final EVENT_ANR_LOAD_DONE:I = 0x5

.field private static final EVENT_ANR_RECORD_LOAD_DONE:I = 0xd

.field private static final EVENT_ANR_UPDATE_DONE:I = 0x9

.field private static final EVENT_EMAIL_LENGTH_READ_DONE:I = 0x12

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_EMAIL_RECORD_LOAD_DONE:I = 0x13

.field private static final EVENT_EMAIL_UPDATE_DONE:I = 0xb

.field private static final EVENT_EXT1_LOAD_DONE:I = 0x3e9

.field private static final EVENT_GAS_LOAD_DONE:I = 0x7

.field private static final EVENT_GAS_UPDATE_DONE:I = 0x11

.field private static final EVENT_GET_AAS_RECORD_SIZE_DONE:I = 0x14

.field private static final EVENT_GET_ANR_RECORD_SIZE_DONE:I = 0xe

.field private static final EVENT_GET_RECORDS_SIZE_DONE:I = 0x3e8

.field private static final EVENT_GET_RECORD_SIZE_DONE:I = 0x16

.field private static final EVENT_GRP_LOAD_DONE:I = 0x6

.field private static final EVENT_GRP_RECORD_LOAD_DONE:I = 0xf

.field private static final EVENT_GRP_UPDATE_DONE:I = 0xa

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_IAP_RECORD_LOAD_DONE:I = 0x1a

.field private static final EVENT_IAP_UPDATE_DONE:I = 0xc

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_QUERY_PHB_ADN_INFO:I = 0x1c

.field private static final EVENT_SELECT_EF_FILE_DONE:I = 0x1b

.field private static final EVENT_SNE_LOAD_DONE:I = 0x18

.field private static final EVENT_SNE_RECORD_LOAD_DONE:I = 0x17

.field private static final EVENT_SNE_UPDATE_DONE:I = 0x19

.field private static final EVENT_UPB_CAPABILITY_QUERY_DONE:I = 0x10

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UsimPhoneBookManager"

.field private static final UPB_EF_AAS:I = 0x3

.field private static final UPB_EF_ANR:I = 0x0

.field private static final UPB_EF_EMAIL:I = 0x1

.field private static final UPB_EF_GAS:I = 0x4

.field private static final UPB_EF_GRP:I = 0x5

.field private static final UPB_EF_SNE:I = 0x2

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field public static final USIM_ERROR_GROUP_COUNT:I = -0x14

.field public static final USIM_ERROR_NAME_LEN:I = -0xa

.field public static final USIM_MAX_ANR_COUNT:I = 0x3

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_CONDITIONAL_LENGTH:I = 0x2

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field protected efData:Lcom/android/internal/telephony/EFResponseData;

.field private mAasFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAasForAnrRec:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAasLock:Ljava/lang/Object;

.field private mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field private mAdnFileSize:I

.field private mAdnRecordSize:[I

.field private mAnrFileList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mAnrFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAnrFileSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrRecordSize:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mEmailFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailFileSize:I

.field private mEmailPresentInIap:Z

.field private mEmailRecTable:[I

.field private mEmailRecordSize:I

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExt1ForAnrRec:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mGasForGrp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/UsimGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mGasLock:Ljava/lang/Object;

.field private mIapFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mIapFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private final mLock:Ljava/lang/Object;

.field private mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPbrFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRecordSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mRefreshCache:Z

.field private mResult:I

.field private mSneFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mSneFileSize:I

.field private mSneRecordSize:I

.field private final mUPBCapabilityLock:Ljava/lang/Object;

.field private mUpbCap:[I


# direct methods
.method static synthetic -set0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .locals 5
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .prologue
    const/16 v4, 0xfa

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    .line 89
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 90
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 91
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 92
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    .line 93
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    .line 94
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileSize:I

    .line 95
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    .line 104
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 108
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    .line 111
    const/16 v0, 0x190

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    .line 114
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 115
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    .line 116
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    .line 117
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 187
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 188
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 191
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 193
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    .line 196
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 200
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 204
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 205
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 206
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 207
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 213
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager constructor finished. "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 5
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    const/16 v4, 0xfa

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    .line 89
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 90
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 91
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 92
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    .line 93
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    .line 94
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileSize:I

    .line 95
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    .line 104
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 108
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    .line 111
    const/16 v0, 0x190

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    .line 114
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 115
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    .line 116
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    .line 117
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 187
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 188
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 191
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 193
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    .line 218
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 222
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 226
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 227
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 228
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 229
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 235
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager constructor finished. "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method private buildAnrRecord(Ljava/lang/String;II)[B
    .locals 8
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "recordSize"    # I
    .param p3, "aas"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2799
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "buildAnrRecord anr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",recordSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",aas:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2800
    if-gtz p2, :cond_0

    .line 2801
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecordSize()V

    .line 2803
    :cond_0
    iget p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 2804
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "buildAnrRecord recordSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2808
    new-array v0, p2, [B

    .line 2809
    .local v0, "anrString":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 2810
    const/4 v4, -0x1

    aput-byte v4, v0, v2

    .line 2809
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2813
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2814
    .local v3, "updatedAnr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2815
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "[buildAdnString] Empty dialing number"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    return-object v0

    .line 2817
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_3

    .line 2818
    const-string/jumbo v4, "UsimPhoneBookManager"

    .line 2819
    const-string/jumbo v5, "[buildAnrRecord] Max length of dialing number is 20"

    .line 2818
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    return-object v7

    .line 2822
    :cond_3
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 2823
    .local v1, "bcdNumber":[B
    if-eqz v1, :cond_4

    .line 2824
    int-to-byte v4, p3

    aput-byte v4, v0, v6

    .line 2826
    array-length v4, v1

    const/4 v5, 0x2

    .line 2825
    invoke-static {v1, v6, v0, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2827
    array-length v4, v1

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v0, v5

    .line 2830
    :cond_4
    return-object v0
.end method

.method private buildEmailRecord(Ljava/lang/String;II)[B
    .locals 11
    .param p1, "strEmail"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "recordSize"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x0

    .line 2837
    new-array v1, p3, [B

    .line 2839
    .local v1, "eMailRecData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 2840
    aput-byte v7, v1, v2

    .line 2839
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2842
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2864
    :cond_1
    :goto_1
    return-object v1

    .line 2843
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 2844
    .local v0, "eMailData":[B
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-eq v6, v7, :cond_3

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v6, :cond_3

    array-length v6, v1

    add-int/lit8 v3, v6, -0x2

    .line 2845
    .local v3, "maxDataLength":I
    :goto_2
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buildEmailRecord eMailData.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", maxDataLength="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    array-length v6, v0

    if-le v6, v3, :cond_4

    .line 2848
    return-object v9

    .line 2844
    .end local v3    # "maxDataLength":I
    :cond_3
    array-length v3, v1

    .restart local v3    # "maxDataLength":I
    goto :goto_2

    .line 2850
    :cond_4
    array-length v6, v0

    invoke-static {v0, v10, v1, v10, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2851
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buildEmailRecord eMailData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", eMailRecData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v6, :cond_1

    .line 2854
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "record$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 2855
    .local v4, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v6, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    add-int/lit8 v7, p2, -0x1

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int/2addr v7, v8

    if-ne v6, v7, :cond_5

    .line 2856
    add-int/lit8 v6, p3, -0x2

    iget-byte v7, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mSfi:B

    aput-byte v7, v1, v6

    .line 2857
    add-int/lit8 v6, p3, -0x1

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 2858
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buildEmailRecord x+1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mSfi:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", x+2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v8, p2, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private changeAdnRecordNumber(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "baseNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4674
    .local p2, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4675
    .local v2, "size":I
    const/4 v1, 0x0

    .line 4678
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4679
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 4680
    .local v0, "adnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v0, :cond_0

    .line 4681
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordIndex(I)V

    .line 4678
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4684
    .end local v0    # "adnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    return-object p2
.end method

.method private checkIsPhbReady()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4533
    const-string/jumbo v5, "false"

    .line 4534
    .local v5, "strPhbReady":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 4535
    .local v3, "strAllSimState":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 4536
    .local v4, "strCurSimState":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4537
    .local v0, "isSimLocked":Z
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v2

    .line 4538
    .local v2, "slotId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    .line 4539
    .local v6, "subId":[I
    aget v10, v6, v8

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 4541
    .local v1, "phoneId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4542
    const-string/jumbo v10, "gsm.sim.state"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4544
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 4545
    const-string/jumbo v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4546
    .local v7, "values":[Ljava/lang/String;
    if-ltz v1, :cond_0

    array-length v10, v7

    if-ge v1, v10, :cond_0

    aget-object v10, v7, v1

    if-eqz v10, :cond_0

    .line 4547
    aget-object v4, v7, v1

    .line 4551
    .end local v7    # "values":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v10, "NETWORK_LOCKED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "PIN_REQUIRED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4553
    .end local v0    # "isSimLocked":Z
    :goto_0
    if-ne v9, v2, :cond_4

    .line 4554
    const-string/jumbo v10, "gsm.sim.ril.phbready.2"

    const-string/jumbo v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4564
    :cond_1
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[isPhbReady] subId[0]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v6, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", slotId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isPhbReady: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",strSimState: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4566
    const-string/jumbo v10, "true"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v0, :cond_7

    :cond_2
    :goto_2
    return v8

    .line 4551
    .restart local v0    # "isSimLocked":Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 4555
    .end local v0    # "isSimLocked":Z
    :cond_4
    const/4 v10, 0x2

    if-ne v10, v2, :cond_5

    .line 4556
    const-string/jumbo v10, "gsm.sim.ril.phbready.3"

    const-string/jumbo v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 4557
    :cond_5
    const/4 v10, 0x3

    if-ne v10, v2, :cond_6

    .line 4558
    const-string/jumbo v10, "gsm.sim.ril.phbready.4"

    const-string/jumbo v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 4560
    :cond_6
    const-string/jumbo v10, "gsm.sim.ril.phbready"

    const-string/jumbo v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    move v8, v9

    .line 4566
    goto :goto_2
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v0, 0x0

    .line 996
    if-nez p1, :cond_0

    .line 997
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 998
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 999
    return-void

    .line 1001
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 995
    return-void
.end method

.method private decodeGas(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "srcGas"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1899
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[decodeGas] gas string is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p1, :cond_1

    const-string/jumbo v5, "null"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 1901
    :cond_0
    return-object v8

    :cond_1
    move-object v5, p1

    .line 1899
    goto :goto_0

    .line 1903
    :cond_2
    const/4 v3, 0x0

    .line 1906
    .local v3, "retGas":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1907
    .local v0, "ba":[B
    if-nez v0, :cond_3

    .line 1908
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "gas string is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    return-object v3

    .line 1911
    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const-string/jumbo v6, "utf-16be"

    const/4 v7, 0x0

    invoke-direct {v4, v0, v7, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "retGas":Ljava/lang/String;
    .local v4, "retGas":Ljava/lang/String;
    move-object v3, v4

    .line 1917
    .end local v0    # "ba":[B
    .end local v4    # "retGas":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 1914
    .restart local v3    # "retGas":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1915
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "[decodeGas] RuntimeException"

    invoke-static {v5, v6, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1912
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 1913
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "[decodeGas] implausible UnsupportedEncodingException"

    invoke-static {v5, v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1924
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1926
    .local v3, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1927
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1928
    .local v0, "hexInt":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_0

    .line 1929
    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1931
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1926
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1934
    .end local v0    # "hexInt":Ljava/lang/String;
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getAdnStorageInfo()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4178
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "getAdnStorageInfo "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v1, :cond_0

    .line 4181
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1c

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPhbStorageInfo(ILandroid/os/Message;)V

    .line 4182
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4184
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 4193
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    return-object v1

    .line 4185
    :catch_0
    move-exception v0

    .line 4186
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in getAdnStorageInfo"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4182
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 4190
    :cond_0
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "GetAdnStorageInfo: filehandle is null."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    return-object v3
.end method

.method private getRecNum([Ljava/lang/String;II[BI)I
    .locals 9
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "pbrRecNum"    # I
    .param p3, "nIapRecNum"    # I
    .param p4, "iapRec"    # [B
    .param p5, "tagNum"    # I

    .prologue
    const/16 v8, 0xff

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 2541
    const/4 v0, 0x0

    .line 2542
    .local v0, "hasEmail":Z
    if-nez p1, :cond_1

    .line 2544
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-eq v4, v8, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-lez v4, :cond_0

    .line 2545
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    add-int/lit8 v5, v5, -0x1

    aput v6, v4, v5

    .line 2547
    :cond_0
    return v7

    .line 2549
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_4

    .line 2550
    aget-object v4, p1, v1

    if-eqz v4, :cond_2

    aget-object v4, p1, v1

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2549
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2551
    :cond_3
    const/4 v0, 0x1

    .line 2555
    :cond_4
    if-nez v0, :cond_6

    .line 2556
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-eq v4, v8, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-lez v4, :cond_5

    .line 2557
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    add-int/lit8 v5, v5, -0x1

    aput v6, v4, v5

    .line 2559
    :cond_5
    return v7

    .line 2561
    :cond_6
    aget-byte v3, p4, p5

    .line 2562
    .local v3, "recNum":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRecNum recNum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2563
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-gt v3, v4, :cond_7

    if-lt v3, v8, :cond_a

    .line 2569
    :cond_7
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v2, p2, v4

    .line 2570
    .local v2, "nOffset":I
    move v1, v2

    :goto_2
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v4, v2

    if-ge v1, v4, :cond_8

    .line 2571
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEmailsByAdnIndex: mEmailRecTable["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2572
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v6, v6, v1

    .line 2571
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v4, v4, v1

    if-nez v4, :cond_b

    .line 2574
    add-int/lit8 v4, v1, 0x1

    sub-int v3, v4, v2

    .line 2575
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aput p3, v4, v1

    .line 2580
    .end local v2    # "nOffset":I
    :cond_8
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-le v3, v4, :cond_9

    .line 2581
    const/16 v3, 0xff

    .line 2583
    :cond_9
    if-ne v3, v7, :cond_c

    .line 2584
    const/4 v4, -0x2

    return v4

    .line 2563
    :cond_a
    if-gtz v3, :cond_8

    goto :goto_1

    .line 2570
    .restart local v2    # "nOffset":I
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2586
    .end local v2    # "nOffset":I
    :cond_c
    return v3
.end method

.method private isSameEfidEmailCapacityFree(II)Z
    .locals 5
    .param p1, "pbrRecNUm"    # I
    .param p2, "emailRecIndex"    # I

    .prologue
    .line 2606
    const/4 v0, 0x0

    .line 2607
    .local v0, "free":Z
    if-nez p1, :cond_1

    .line 2608
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v1, v1, p2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, p2

    aget v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2609
    :goto_0
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2610
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v3, v3, p2

    .line 2609
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2612
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v4, p2

    aget v3, v3, v4

    .line 2611
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :goto_1
    return v0

    .line 2608
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2614
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v1, v1, p2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v2, p2, v2

    aget v1, v1, v2

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 2615
    :goto_2
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2616
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v3, v3, p2

    .line 2615
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2618
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v4, p2, v4

    aget v3, v3, v4

    .line 2617
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2614
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2440
    const-string/jumbo v0, "UsimPhoneBookManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    return-void
.end method

.method private queryUpbCapablityAndWait()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1753
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "UsimPhoneBookManager queryUpbCapablityAndWait begin"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1755
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 1756
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v4, 0x0

    aput v4, v2, v1

    .line 1755
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1759
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1760
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1762
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v3

    .line 1768
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UsimPhoneBookManager queryUpbCapablityAndWait done:N_Anr is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1769
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v4, v4, v5

    .line 1768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1769
    const-string/jumbo v4, ", N_Email is "

    .line 1768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1769
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 1768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1769
    const-string/jumbo v4, ",N_Sne is "

    .line 1768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1769
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    .line 1768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1771
    const-string/jumbo v4, ",N_Aas is "

    .line 1768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1771
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    .line 1768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1771
    const-string/jumbo v4, ", L_Aas is "

    .line 1768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1771
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    .line 1768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1771
    const-string/jumbo v4, ",N_Gas is "

    .line 1768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1771
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    .line 1768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1772
    const-string/jumbo v4, ",L_Gas is "

    .line 1768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1772
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    .line 1768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1772
    const-string/jumbo v4, ", N_Grp is "

    .line 1768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1772
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    .line 1768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    return-void

    .line 1763
    :catch_0
    move-exception v0

    .line 1764
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v4, "Interrupted Exception in queryUpbCapablityAndWait"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1754
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private readAASFileAndWait(I)V
    .locals 13
    .param p1, "recNum"    # I

    .prologue
    const/16 v12, 0xc7

    .line 602
    const-string/jumbo v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readAASFileAndWait "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v9, :cond_1

    .line 604
    :cond_0
    return-void

    .line 606
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 607
    .local v3, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 611
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 612
    .local v2, "efid":I
    const-string/jumbo v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readAASFileAndWait-get AAS EFID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-eqz v9, :cond_5

    .line 614
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 615
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AAS has been loaded for Pbr number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 616
    return-void

    .line 608
    .end local v2    # "efid":I
    :cond_2
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v10, "readAASFileAndWait-PBR have no AAS EF record"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-void

    .line 618
    .restart local v2    # "efid":I
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 619
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 620
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 621
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 622
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 623
    .local v7, "pbr":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 624
    .local v4, "fileid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 625
    .local v1, "ef":I
    if-ne v2, v1, :cond_4

    .line 626
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AAS has been loaded for ef "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 627
    return-void

    .line 632
    .end local v1    # "ef":I
    .end local v4    # "fileid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7    # "pbr":I
    .end local v8    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v9, :cond_6

    .line 633
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 634
    .local v6, "msg":Landroid/os/Message;
    iput p1, v6, Landroid/os/Message;->arg1:I

    .line 635
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v9, v2, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 637
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v10, "Interrupted Exception in readAASFileAndWait"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "msg":Landroid/os/Message;
    :cond_6
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v10, "readAASFileAndWait-IccFileHandler is null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return-void
.end method

.method private readAdnFileAndWait(I)V
    .locals 5
    .param p1, "recNum"    # I

    .prologue
    const/16 v4, 0x6f3a

    .line 972
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UsimPhoneBookManager readAdnFileAndWait: recNum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 975
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 973
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 989
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :goto_0
    return-void

    .line 990
    :catch_0
    move-exception v0

    .line 991
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readAdnFileAndWaitForUICC(I)V
    .locals 9
    .param p1, "recNum"    # I

    .prologue
    const/16 v8, 0xc0

    .line 4638
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readAdnFileAndWaitForUICC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4639
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 4640
    :cond_0
    return-void

    .line 4643
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4645
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4650
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4651
    .local v1, "efid":I
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readAdnFileAndWaitForUICC: EFADN id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4653
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "record$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4654
    .local v3, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v5, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v5, v1, :cond_2

    iget v5, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v5, p1, :cond_2

    .line 4655
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UiccPhoneBookManager readAdnFileAndWaitForUICC: recNum is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4657
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 4658
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/16 v7, 0x6f3a

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4657
    invoke-virtual {v5, v1, v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 4661
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4662
    :catch_0
    move-exception v0

    .line 4663
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4646
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "efid":I
    .end local v3    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v4    # "record$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readAdnFileAndWaitForUICC: No ADN tag in pbr record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    return-void

    .line 4637
    .restart local v1    # "efid":I
    .restart local v4    # "record$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private readAnrFileAndWait(I)V
    .locals 22
    .param p1, "recNum"    # I

    .prologue
    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 676
    :cond_0
    return-void

    .line 678
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 679
    .local v8, "fileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 680
    :cond_2
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readAnrFileAndWait: No anr tag in pbr record "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-void

    .line 684
    :cond_3
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readAnrFileAndWait: recNum is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_d

    .line 687
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 688
    .local v7, "efid":I
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readAnrFileAndWait: recNum is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 689
    const-string/jumbo v20, " EFANR id is "

    .line 688
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "record$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 692
    .local v15, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_4

    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_4

    .line 693
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v18, v0

    const/16 v19, 0xa9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 694
    iput v10, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    .line 695
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType2Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 696
    return-void

    .line 701
    .end local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 702
    .local v13, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    mul-int v12, p1, v18

    .line 703
    .local v12, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    add-int v11, v12, v18

    .line 704
    .local v11, "nMax":I
    if-ge v13, v11, :cond_6

    .line 705
    move v11, v13

    .line 708
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 709
    const/16 v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 710
    .local v17, "result":Landroid/os/Message;
    mul-int/lit8 v18, p1, 0x3

    add-int v18, v18, v10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 717
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 723
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v19, "UsimPhoneBookManager readAnrFileAndWait: AnrRecordSize is 0. "

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void

    .line 713
    .end local v17    # "result":Landroid/os/Message;
    :cond_7
    return-void

    .line 718
    .restart local v17    # "result":Landroid/os/Message;
    :catch_0
    move-exception v6

    .line 719
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v19, "Interrupted Exception in readAnrFileAndWait"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 726
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_8
    move v9, v12

    .local v9, "i":I
    :goto_2
    if-ge v9, v11, :cond_b

    .line 729
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 735
    .local v14, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_9

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_a

    .line 736
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 737
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v4, v0, [I

    .line 738
    .local v4, "data":[I
    const/16 v18, 0x0

    aput p1, v4, v18

    .line 739
    const/16 v18, 0x1

    aput v9, v4, v18

    .line 740
    const/16 v18, 0x2

    aput v10, v4, v18

    .line 741
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readAnrFileAndWait: read anr for  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 742
    const-string/jumbo v20, " adn "

    .line 741
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 742
    const-string/jumbo v20, "( "

    .line 741
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 742
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v20

    .line 741
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 742
    const-string/jumbo v20, ", "

    .line 741
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 742
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v20

    .line 741
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 743
    const-string/jumbo v20, " )  mReadingAnrNum is "

    .line 741
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    .line 741
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v18, v0

    add-int/lit8 v19, v9, 0x1

    sub-int v19, v19, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move/from16 v20, v0

    .line 745
    const/16 v21, 0xd

    .line 744
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 726
    .end local v4    # "data":[I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 730
    .end local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_1
    move-exception v5

    .line 731
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readAnrFileAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 732
    const-string/jumbo v20, "index is "

    .line 731
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    if-nez v18, :cond_c

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 686
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 753
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 755
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "readAnrFileAndWait before mLock.wait "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 757
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 761
    :goto_4
    const-string/jumbo v18, "readAnrFileAndWait after mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 758
    :catch_2
    move-exception v6

    .line 759
    .restart local v6    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v19, "Interrupted Exception in readAnrFileAndWait"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 673
    .end local v6    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "efid":I
    .end local v9    # "i":I
    .end local v11    # "nMax":I
    .end local v12    # "nOffset":I
    .end local v13    # "numAdnRecs":I
    .end local v16    # "record$iterator":Ljava/util/Iterator;
    .end local v17    # "result":Landroid/os/Message;
    :cond_d
    return-void
.end method

.method private readAnrRecordSize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3599
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager readAnrRecordSize"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 3601
    :cond_0
    return-void

    .line 3603
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3604
    .local v2, "fileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3605
    :cond_2
    return-void

    .line 3608
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 3609
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager readAnrRecordSize: No anr tag in pbr record "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    return-void

    .line 3613
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3614
    .local v1, "efid":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v3, :cond_5

    .line 3615
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 3619
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3621
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v4

    .line 3598
    return-void

    .line 3617
    :cond_5
    return-void

    .line 3622
    :catch_0
    move-exception v0

    .line 3623
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in readAnrRecordSize"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3619
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private readEmailFileAndWait(I)V
    .locals 25
    .param p1, "recNum"    # I

    .prologue
    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 356
    :cond_0
    return-void

    .line 358
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 359
    .local v10, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v10, :cond_2

    .line 360
    return-void

    .line 362
    :cond_2
    const/16 v22, 0xca

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 363
    const/16 v22, 0xca

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 364
    .local v9, "efid":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readEmailFileAndWait: efid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 365
    const/16 v18, 0x0

    .line 366
    .local v18, "rec":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "record$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 367
    .local v19, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readEmailFileAndWait mEmailFile record "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v9, :cond_3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    .line 369
    move-object/from16 v18, v19

    .line 370
    .local v18, "rec":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v22, v0

    const/16 v23, 0xa8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 371
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType1Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 372
    return-void

    .line 373
    :cond_4
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v22, v0

    const/16 v23, 0xa9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 374
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readEmailFileAndWait type2 email "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 385
    .end local v18    # "rec":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v19    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 386
    const/16 v22, 0xc1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 387
    const/16 v22, 0xc1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(IIZ)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_8

    .line 394
    :cond_6
    const-string/jumbo v22, "UsimPhoneBookManager"

    const-string/jumbo v23, "Error: IAP file is empty"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void

    .line 390
    :cond_7
    const-string/jumbo v22, "UsimPhoneBookManager"

    const-string/jumbo v23, "readEmailFileAndWait Error: No IAP file!"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void

    .line 393
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-eqz v22, :cond_6

    .line 398
    :cond_9
    const-string/jumbo v22, "readEmailFileAndWait after read IAP"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 415
    .local v17, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v22, v0

    mul-int v16, p1, v22

    .line 416
    .local v16, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v22, v0

    add-int v15, v16, v22

    .line 417
    .local v15, "nMax":I
    move/from16 v0, v17

    if-ge v0, v15, :cond_a

    .line 418
    move/from16 v15, v17

    .line 420
    :cond_a
    move/from16 v11, v16

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v22, v0

    add-int v22, v22, v16

    move/from16 v0, v22

    if-ge v11, v0, :cond_b

    .line 422
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v23, v22, v11
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 423
    :catch_0
    move-exception v6

    .line 424
    .local v6, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "init RecTable error "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 428
    .end local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_b
    const/16 v21, 0x0

    .line 429
    .local v21, "size":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "size":[I
    check-cast v21, [I

    .line 434
    .local v21, "size":[I
    :goto_1
    if-eqz v21, :cond_c

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    .line 435
    :cond_c
    const-string/jumbo v22, "UsimPhoneBookManager"

    const-string/jumbo v23, "UsimPhoneBookManager readEmailFileAndWait: read record size error."

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void

    .line 432
    .local v21, "size":[I
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v21

    .local v21, "size":[I
    goto :goto_1

    .line 439
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 441
    .local v12, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_f

    .line 442
    const-string/jumbo v22, "UsimPhoneBookManager"

    const-string/jumbo v23, "Warning: IAP size is 0"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void

    .line 446
    :cond_f
    move/from16 v11, v16

    :goto_2
    if-ge v11, v15, :cond_12

    .line 449
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 456
    .local v4, "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-gtz v22, :cond_10

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_11

    .line 457
    :cond_10
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v5, v0, [I

    .line 459
    .local v5, "data":[I
    sub-int v22, v11, v16

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 460
    .local v13, "iapRecord":[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v22, v0

    aget-byte v22, v13, v22

    move/from16 v0, v22

    and-int/lit16 v14, v0, 0xff

    .line 461
    .local v14, "index":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readEmailFileAndWait iap["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sub-int v23, v11, v16

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "]="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 462
    if-lez v14, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v14, v0, :cond_13

    .line 446
    .end local v5    # "data":[I
    .end local v13    # "iapRecord":[B
    .end local v14    # "index":I
    :cond_11
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 450
    .end local v4    # "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_1
    move-exception v7

    .line 451
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v22, "UsimPhoneBookManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "UsimPhoneBookManager readEmailFileAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 452
    const-string/jumbo v24, "index is "

    .line 451
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v22

    if-nez v22, :cond_14

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 478
    return-void

    .line 462
    .restart local v4    # "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v5    # "data":[I
    .restart local v13    # "iapRecord":[B
    .restart local v14    # "index":I
    :cond_13
    const/16 v22, 0xff

    move/from16 v0, v22

    if-ge v14, v0, :cond_11

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 466
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v22, v0

    mul-int v22, v22, v16

    add-int v22, v22, v14

    const/16 v23, 0x0

    aput v22, v5, v23

    .line 467
    const/16 v22, 0x1

    aput v11, v5, v22

    .line 468
    const-string/jumbo v22, "UsimPhoneBookManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "UsimPhoneBookManager readEmailFileAndWait: read email for  "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 469
    const-string/jumbo v24, " adn "

    .line 468
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 469
    const-string/jumbo v24, "( "

    .line 468
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 469
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v24

    .line 468
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 469
    const-string/jumbo v24, ", "

    .line 468
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 469
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v24

    .line 468
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 470
    const-string/jumbo v24, " )  mReadingEmailNum is "

    .line 468
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v24

    .line 468
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v23, v21, v23

    .line 472
    const/16 v24, 0x13

    .line 471
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v9, v14, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    goto/16 :goto_3

    .line 480
    .end local v4    # "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5    # "data":[I
    .end local v13    # "iapRecord":[B
    .end local v14    # "index":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 482
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readEmailFileAndWait before mLock.wait "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 484
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 488
    :goto_4
    const-string/jumbo v22, "readEmailFileAndWait after mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 353
    .end local v9    # "efid":I
    .end local v11    # "i":I
    .end local v12    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v15    # "nMax":I
    .end local v16    # "nOffset":I
    .end local v17    # "numAdnRecs":I
    .end local v20    # "record$iterator":Ljava/util/Iterator;
    .end local v21    # "size":[I
    :cond_15
    return-void

    .line 485
    .restart local v9    # "efid":I
    .restart local v11    # "i":I
    .restart local v12    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v15    # "nMax":I
    .restart local v16    # "nOffset":I
    .restart local v17    # "numAdnRecs":I
    .restart local v20    # "record$iterator":Ljava/util/Iterator;
    .restart local v21    # "size":[I
    :catch_2
    move-exception v8

    .line 486
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v22, "UsimPhoneBookManager"

    const-string/jumbo v23, "Interrupted Exception in readEmailFileAndWait"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 7
    .param p1, "recNum"    # I

    .prologue
    const/4 v6, 0x0

    .line 933
    const/4 v2, 0x0

    .line 934
    .local v2, "emailRec":[B
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 935
    return-object v6

    .line 939
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "emailRec":[B
    check-cast v2, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    .local v2, "emailRec":[B
    array-length v3, v2

    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 945
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager readEmailRecord: emailRec.length is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 946
    array-length v5, v2

    .line 945
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 948
    .local v1, "email":Ljava/lang/String;
    return-object v1

    .line 940
    .end local v1    # "email":Ljava/lang/String;
    .end local v2    # "emailRec":[B
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager readEmailRecord: recNum is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    return-object v6
.end method

.method private readExt1FileAndWait(I)V
    .locals 8
    .param p1, "recNum"    # I

    .prologue
    const/16 v7, 0xc2

    .line 4487
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readExt1FileAndWait "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4488
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 4489
    :cond_0
    return-void

    .line 4491
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4492
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4496
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4497
    .local v1, "efid":I
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readExt1FileAndWait-get EXT1 EFID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4498
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    if-eqz v4, :cond_3

    .line 4499
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EXT1 has been loaded for Pbr number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4501
    return-void

    .line 4493
    .end local v1    # "efid":I
    :cond_2
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "readExt1FileAndWait-PBR have no Ext1 record"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    return-void

    .line 4517
    .restart local v1    # "efid":I
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v4, :cond_4

    .line 4518
    const/16 v4, 0x3e9

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4519
    .local v3, "msg":Landroid/os/Message;
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 4520
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v4, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 4522
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4486
    :goto_0
    return-void

    .line 4523
    :catch_0
    move-exception v0

    .line 4524
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in readExt1FileAndWait"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4527
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_4
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "readExt1FileAndWait-IccFileHandler is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4528
    return-void
.end method

.method private readGasListAndWait()V
    .locals 6

    .prologue
    .line 1776
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "UsimPhoneBookManager readGasListAndWait begin"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1778
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    if-gtz v1, :cond_0

    .line 1779
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "UsimPhoneBookManager readGasListAndWait no need to read. return"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1780
    return-void

    .line 1782
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v5, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->readUPBGasList(IILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1784
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v2

    .line 1775
    return-void

    .line 1785
    :catch_0
    move-exception v0

    .line 1786
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in readGasListAndWait"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1777
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private readGrpIdsAndWait()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 767
    const-string/jumbo v7, "UsimPhoneBookManager"

    const-string/jumbo v8, "UsimPhoneBookManager readGrpIdsAndWait begin"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 771
    .local v5, "numAdnRecs":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 774
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 781
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 782
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v0

    .line 783
    .local v0, "adnIndex":I
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 784
    .local v1, "data":[I
    aput v4, v1, v10

    .line 785
    aput v0, v1, v11

    .line 786
    const-string/jumbo v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UsimPhoneBookManager readGrpIdsAndWait: read grp for  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 787
    const-string/jumbo v9, " adn "

    .line 786
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 787
    const-string/jumbo v9, "( "

    .line 786
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 787
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v9

    .line 786
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 787
    const-string/jumbo v9, ", "

    .line 786
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 787
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v9

    .line 786
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 788
    const-string/jumbo v9, " )  mReadingGrpNum is "

    .line 786
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 788
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    .line 786
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xf

    invoke-virtual {p0, v8, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Lcom/android/internal/telephony/CommandsInterface;->readUPBGrpEntry(ILandroid/os/Message;)V

    .line 771
    .end local v0    # "adnIndex":I
    .end local v1    # "data":[I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 775
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v2

    .line 776
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UsimPhoneBookManager readGrpIdsAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 777
    const-string/jumbo v9, "index is "

    .line 776
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-nez v7, :cond_3

    .line 794
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 795
    return-void

    .line 797
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 799
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readGrpIdsAndWait before mLock.wait "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 801
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 805
    :goto_1
    const-string/jumbo v7, "readGrpIdsAndWait after mLock.wait"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 765
    return-void

    .line 802
    :catch_1
    move-exception v3

    .line 803
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v7, "UsimPhoneBookManager"

    const-string/jumbo v8, "Interrupted Exception in readAnrFileAndWait"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readIapFileAndWait(IIZ)V
    .locals 21
    .param p1, "pbrIndex"    # I
    .param p2, "efid"    # I
    .param p3, "forceRefresh"    # Z

    .prologue
    .line 495
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "readIapFileAndWait pbrIndex :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ",efid:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ",forceRefresh:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 503
    if-gtz p2, :cond_0

    return-void

    .line 504
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 505
    const-string/jumbo v17, "readIapFileAndWait IapFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 506
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 508
    :cond_1
    const/4 v14, 0x0

    .line 509
    .local v14, "size":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "size":[I
    check-cast v14, [I

    .line 514
    .local v14, "size":[I
    :goto_0
    if-eqz v14, :cond_2

    array-length v0, v14

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 515
    :cond_2
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "UsimPhoneBookManager readIapFileAndWait: read record size error."

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v9, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 522
    :cond_3
    return-void

    .line 512
    .end local v9    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v14, "size":[I
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v14

    .local v14, "size":[I
    goto :goto_0

    .line 524
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p1

    if-gt v0, v1, :cond_c

    .line 525
    const-string/jumbo v17, "Create IAP first!"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 526
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .restart local v9    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v16, 0x0

    .line 528
    .local v16, "value":[B
    const/4 v8, 0x0

    .end local v16    # "value":[B
    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_7

    .line 529
    const/16 v17, 0x0

    aget v17, v14, v17

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 530
    .local v16, "value":[B
    const/16 v17, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    aget-byte v15, v16, v17

    .line 531
    .local v15, "tem":B
    const/4 v15, -0x1

    .line 530
    .local v15, "tem":B
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 533
    .end local v15    # "tem":B
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 535
    .end local v16    # "value":[B
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 552
    .end local v8    # "i":I
    .end local v9    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 553
    .local v12, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    mul-int v11, p1, v17

    .line 554
    .local v11, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    add-int v10, v11, v17

    .line 555
    .local v10, "nMax":I
    if-ge v12, v10, :cond_9

    .line 556
    move v10, v12

    .line 559
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "readIapFileAndWait nOffset "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", nMax "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 560
    move v8, v11

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v10, :cond_d

    .line 563
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .local v13, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_a

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_b

    .line 571
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 572
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [I

    .line 573
    .local v5, "data":[I
    const/16 v17, 0x0

    aput p1, v5, v17

    .line 574
    sub-int v17, v8, v11

    const/16 v18, 0x1

    aput v17, v5, v18

    .line 575
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "UsimPhoneBookManager readIapFileAndWait: read iap for  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 576
    const-string/jumbo v19, " adn "

    .line 575
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 576
    const-string/jumbo v19, "( "

    .line 575
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 576
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    .line 575
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 576
    const-string/jumbo v19, ", "

    .line 575
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 576
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    .line 575
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 577
    const-string/jumbo v19, " )  mReadingIapNum is "

    .line 575
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v19

    .line 575
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    sub-int v18, v18, v11

    const/16 v19, 0x0

    aget v19, v14, v19

    .line 579
    const/16 v20, 0x1a

    .line 578
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 560
    .end local v5    # "data":[I
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 537
    .end local v8    # "i":I
    .end local v10    # "nMax":I
    .end local v11    # "nOffset":I
    .end local v12    # "numAdnRecs":I
    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_c
    const-string/jumbo v17, "This IAP has been loaded!"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 538
    if-nez p3, :cond_8

    .line 539
    return-void

    .line 564
    .restart local v8    # "i":I
    .restart local v10    # "nMax":I
    .restart local v11    # "nOffset":I
    .restart local v12    # "numAdnRecs":I
    :catch_0
    move-exception v6

    .line 565
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "UsimPhoneBookManager readIapFileAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 566
    const-string/jumbo v19, "index is "

    .line 565
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    if-nez v17, :cond_e

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 585
    return-void

    .line 587
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 589
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "readIapFileAndWait before mLock.wait "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 591
    :try_start_1
    const-string/jumbo v17, "readIapFileAndWait excute mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    monitor-exit v18

    .line 598
    const-string/jumbo v17, "readIapFileAndWait after mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 494
    return-void

    .line 594
    :catch_1
    move-exception v7

    .line 595
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v19, "Interrupted Exception in readIapFileAndWait"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 590
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17
.end method

.method private readPbrFileAndWait(Z)V
    .locals 4
    .param p1, "is7FFF"    # Z

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x4f30

    invoke-virtual {v1, v3, v2, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;Z)V

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "Interrupted Exception in readPbrFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readSneFileAndWait(I)V
    .locals 7
    .param p1, "recNum"    # I

    .prologue
    const/16 v6, 0xc3

    .line 648
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readSneFileAndWait "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 649
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 650
    :cond_0
    return-void

    .line 652
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 653
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 657
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 658
    .local v0, "efid":I
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readSneFileAndWait: EFSNE id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "record$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 660
    .local v2, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v4, v0, :cond_2

    iget v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v4, p1, :cond_2

    .line 661
    iget v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-ne v4, v5, :cond_4

    .line 662
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType2Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 663
    return-void

    .line 654
    .end local v0    # "efid":I
    .end local v2    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readSneFileAndWait: No SNE tag in pbr record "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void

    .line 664
    .restart local v0    # "efid":I
    .restart local v2    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .restart local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_4
    iget v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_5

    .line 665
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType1Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 666
    return-void

    .line 647
    .end local v2    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_5
    return-void
.end method

.method private readType1Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 21
    .param p1, "record"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .prologue
    .line 3023
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "readType1Ef:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3024
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v18, v0

    const/16 v19, 0xa8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 3025
    return-void

    .line 3027
    :cond_0
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    .line 3028
    .local v13, "pbrIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 3029
    .local v12, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    mul-int v11, v13, v18

    .line 3030
    .local v11, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    add-int v10, v11, v18

    .line 3031
    .local v10, "nMax":I
    if-ge v12, v10, :cond_1

    .line 3032
    move v10, v12

    .line 3034
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3035
    .local v7, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/16 v17, 0x0

    .line 3036
    .local v17, "what":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 3058
    const/16 v17, 0x16

    .line 3059
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 3060
    .local v16, "result":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3061
    if-eqz v7, :cond_3

    .line 3062
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 3066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3068
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v16    # "result":Landroid/os/Message;
    :goto_0
    monitor-exit v19

    .line 3076
    :goto_1
    const/4 v15, 0x0

    .line 3077
    .local v15, "recordSize":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_1

    .line 3088
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "readType1Ef unsupport tag "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    :goto_2
    if-nez v15, :cond_4

    .line 3092
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v19, "UsimPhoneBookManager readType1Ef: recordSize is 0. "

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    return-void

    .line 3038
    .end local v15    # "recordSize":I
    :sswitch_0
    const/16 v17, 0xe

    .line 3039
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 3040
    .local v9, "msg":Landroid/os/Message;
    if-eqz v7, :cond_2

    .line 3041
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v7, v0, v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 3045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3047
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3048
    :catch_0
    move-exception v5

    .line 3049
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v20, "Interrupted Exception in readType1Ef"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3045
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 3043
    :cond_2
    return-void

    .line 3054
    .end local v9    # "msg":Landroid/os/Message;
    :sswitch_1
    const/16 v17, 0x12

    .line 3055
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readRecordSize(I)V

    goto :goto_1

    .line 3064
    .restart local v16    # "result":Landroid/os/Message;
    :cond_3
    return-void

    .line 3069
    :catch_1
    move-exception v5

    .line 3070
    .restart local v5    # "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v20, "Interrupted Exception in readType1Ef"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 3066
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v18

    monitor-exit v19

    throw v18

    .line 3079
    .end local v16    # "result":Landroid/os/Message;
    .restart local v15    # "recordSize":I
    :sswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    goto :goto_2

    .line 3082
    :sswitch_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    goto :goto_2

    .line 3085
    :sswitch_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    goto :goto_2

    .line 3096
    :cond_4
    move v6, v11

    .local v6, "i":I
    :goto_3
    if-ge v6, v10, :cond_7

    .line 3099
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3106
    .local v14, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_5

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_6

    .line 3107
    :cond_5
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v3, v0, [I

    .line 3108
    .local v3, "data":[I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v18, v0

    const/16 v19, 0x0

    aput v18, v3, v19

    .line 3109
    const/16 v18, 0x1

    aput v6, v3, v18

    .line 3110
    const/4 v8, 0x0

    .line 3111
    .local v8, "loadWhat":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_2

    .line 3136
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "not support tag "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v18, v0

    add-int/lit8 v19, v6, 0x1

    sub-int v19, v19, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v7, v0, v1, v15, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 3096
    .end local v3    # "data":[I
    .end local v8    # "loadWhat":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3100
    .end local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_2
    move-exception v4

    .line 3101
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v18, "UsimPhoneBookManager"

    .line 3102
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readType1Ef: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3103
    const-string/jumbo v20, "index is "

    .line 3102
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3101
    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_3

    .line 3171
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "not support tag "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    :goto_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "readType1Ef before mLock.wait "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3177
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_6
    monitor-exit v19

    .line 3022
    return-void

    .line 3113
    .restart local v3    # "data":[I
    .restart local v8    # "loadWhat":I
    .restart local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :sswitch_5
    const/16 v8, 0xd

    .line 3114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 3115
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " UsimPhoneBookManager readType1Ef: read for  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3116
    const-string/jumbo v20, " adn "

    .line 3115
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3116
    const-string/jumbo v20, "( "

    .line 3115
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3116
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v20

    .line 3115
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3116
    const-string/jumbo v20, ", "

    .line 3115
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3116
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v20

    .line 3115
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3117
    const-string/jumbo v20, " )  mReadingAnrNum is "

    .line 3115
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    .line 3115
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3121
    :sswitch_6
    add-int/lit8 v18, v6, 0x1

    sub-int v18, v18, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v19, v0

    mul-int v19, v19, v11

    add-int v18, v18, v19

    const/16 v19, 0x0

    aput v18, v3, v19

    .line 3122
    const/16 v8, 0x13

    .line 3123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3124
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " UsimPhoneBookManager readType1Ef: read for  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3125
    const-string/jumbo v20, " adn "

    .line 3124
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3125
    const-string/jumbo v20, "( "

    .line 3124
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3125
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v20

    .line 3124
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3125
    const-string/jumbo v20, ", "

    .line 3124
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3125
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v20

    .line 3124
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3126
    const-string/jumbo v20, " )  mReadingEmailNum is "

    .line 3124
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    .line 3124
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3129
    :sswitch_7
    const/16 v8, 0x17

    .line 3130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3131
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " UsimPhoneBookManager readType1Ef: read for  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3132
    const-string/jumbo v20, " adn "

    .line 3131
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3132
    const-string/jumbo v20, "( "

    .line 3131
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3132
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v20

    .line 3131
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3132
    const-string/jumbo v20, ", "

    .line 3131
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3132
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v20

    .line 3131
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3133
    const-string/jumbo v20, " )  mReadingSneNum is "

    .line 3131
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    .line 3131
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3147
    .end local v3    # "data":[I
    .end local v8    # "loadWhat":I
    .end local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    if-nez v18, :cond_8

    .line 3148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3149
    return-void

    .line 3151
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_5

    .line 3155
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    if-nez v18, :cond_9

    .line 3156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3157
    return-void

    .line 3159
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_5

    .line 3163
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    if-nez v18, :cond_a

    .line 3164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3165
    return-void

    .line 3167
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_5

    .line 3178
    :catch_3
    move-exception v5

    .line 3179
    .restart local v5    # "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v20, "Interrupted Exception in readType1Ef"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_6

    .line 3175
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v18

    monitor-exit v19

    throw v18

    .line 3036
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch

    .line 3077
    :sswitch_data_1
    .sparse-switch
        0xc3 -> :sswitch_4
        0xc4 -> :sswitch_2
        0xca -> :sswitch_3
    .end sparse-switch

    .line 3111
    :sswitch_data_2
    .sparse-switch
        0xc3 -> :sswitch_7
        0xc4 -> :sswitch_5
        0xca -> :sswitch_6
    .end sparse-switch

    .line 3145
    :sswitch_data_3
    .sparse-switch
        0xc3 -> :sswitch_a
        0xc4 -> :sswitch_8
        0xca -> :sswitch_9
    .end sparse-switch
.end method

.method private readType2Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 8
    .param p1, "record"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .prologue
    const/16 v7, 0xc1

    const/4 v6, 0x0

    .line 3185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readType2Ef:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3186
    iget v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-eq v4, v5, :cond_0

    .line 3187
    return-void

    .line 3190
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 3191
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 3192
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "Error: no fileIds"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    return-void

    .line 3196
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3197
    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v5, v4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(IIZ)V

    .line 3204
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-gt v4, v5, :cond_4

    .line 3205
    :cond_2
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "Error: IAP file is empty"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    return-void

    .line 3200
    :cond_3
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "readType2Ef Error: No IAP file!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    return-void

    .line 3204
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 3208
    const/4 v3, 0x0

    .line 3209
    .local v3, "what":I
    iget v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v4, :sswitch_data_0

    .line 3221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no implement type2 EF "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3222
    return-void

    .line 3211
    :sswitch_0
    const/4 v3, 0x5

    .line 3224
    :goto_0
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3225
    .local v2, "msg":Landroid/os/Message;
    iget v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 3226
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3227
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3229
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v5

    .line 3184
    return-void

    .line 3214
    .end local v2    # "msg":Landroid/os/Message;
    :sswitch_1
    const/4 v3, 0x4

    .line 3215
    goto :goto_0

    .line 3217
    :sswitch_2
    const/16 v3, 0x18

    .line 3218
    goto :goto_0

    .line 3230
    .restart local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 3231
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v6, "Interrupted Exception in readType2Ef"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3227
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 3209
    nop

    :sswitch_data_0
    .sparse-switch
        0xc3 -> :sswitch_2
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_0

    .line 330
    return-void

    .line 332
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 334
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 335
    .local v1, "numRecs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 336
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_1
    return-void
.end method

.method private resetEmailRecTable(I[BI)V
    .locals 5
    .param p1, "pbrRecNum"    # I
    .param p2, "iapRec"    # [B
    .param p3, "value"    # I

    .prologue
    .line 2590
    if-nez p1, :cond_0

    .line 2591
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    aput p3, v1, v2

    .line 2592
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v3

    aput p3, v1, v2

    .line 2593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v3, p2, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v3, p2, v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2589
    :goto_0
    return-void

    .line 2596
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v1, p2, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    rem-int v0, v1, v2

    .line 2597
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aput p3, v1, v0

    .line 2598
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v0

    aput p3, v1, v2

    .line 2599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2601
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v3, v0

    aget v2, v2, v3

    .line 2600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePhoneAdnRecord()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 809
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 810
    return-void

    .line 812
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 813
    .local v5, "numAdnRecs":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    .line 822
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 823
    const/4 v8, 0x0

    .line 825
    .local v8, "record":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "record":[B
    check-cast v8, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    .local v8, "record":[B
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v8, v9

    .line 832
    .local v7, "recNum":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_1

    .line 833
    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    .line 835
    .local v2, "emails":[Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v12

    .line 839
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 846
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v6, :cond_4

    .line 847
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 852
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 822
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 826
    .end local v7    # "recNum":I
    .end local v8    # "record":[B
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "i":I
    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 864
    .local v4, "len":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    if-nez v9, :cond_3

    .line 865
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(I)V

    .line 867
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v5, :cond_6

    .line 868
    const/4 v1, 0x0

    .line 870
    .local v1, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    .line 874
    .local v1, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_5

    .line 867
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 840
    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "len":I
    .restart local v2    # "emails":[Ljava/lang/String;
    .restart local v7    # "recNum":I
    .restart local v8    # "record":[B
    :catch_1
    move-exception v0

    .line 841
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "UsimPhoneBookManager updatePhoneAdnRecord: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 842
    const-string/jumbo v11, "index is "

    .line 841
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 850
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    invoke-direct {v6, v9, v10, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    goto :goto_1

    .line 880
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v7    # "recNum":I
    .end local v8    # "record":[B
    .restart local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "len":I
    :cond_5
    :try_start_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 887
    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 888
    .restart local v2    # "emails":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v12, v2, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 889
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 890
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 881
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_2
    move-exception v0

    .line 882
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "UsimPhoneBookManager updatePhoneAdnRecord: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 883
    const-string/jumbo v11, "index is "

    .line 882
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :goto_5
    return-void

    .line 871
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_5
.end method

.method private updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 20
    .param p2, "efrecord"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3237
    .local p1, "fileRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updatePhoneAdnRecord "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3238
    if-nez p2, :cond_0

    .line 3239
    return-void

    .line 3241
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3242
    .local v10, "numAdnRecs":I
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    .line 3243
    .local v11, "pbrIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    mul-int v9, v11, v17

    .line 3244
    .local v9, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    add-int v8, v9, v17

    .line 3245
    .local v8, "nMax":I
    if-ge v10, v8, :cond_1

    .line 3246
    move v8, v10

    .line 3249
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updatePhoneAdnRecord offset:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ",nMax:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", mAdnFileSize:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 3250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    .line 3249
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3252
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v17, v0

    const/16 v18, 0xa9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 3253
    move v6, v9

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_4

    .line 3256
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3263
    .local v12, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    .line 3264
    :cond_2
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    .line 3253
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3257
    .end local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v5

    .line 3258
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "UsimPhoneBookManager updatePhoneAdnRecord: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3259
    const-string/jumbo v19, "index is "

    .line 3258
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "i":I
    :cond_4
    return-void

    .line 3267
    .restart local v6    # "i":I
    .restart local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_5
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "th "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3268
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    .line 3267
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    const/4 v14, 0x0

    .line 3271
    .local v14, "record":[B
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 3272
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "updatePhoneAdnRecord mIapFileList = null"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    return-void

    .line 3275
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 3276
    .local v7, "iaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez v7, :cond_7

    .line 3277
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "updatePhoneAdnRecord iaplist = null"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    return-void

    .line 3280
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_8

    .line 3281
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "Warning: IAP size is 0"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    return-void

    .line 3284
    :cond_8
    sub-int v17, v6, v9

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "record":[B
    check-cast v14, [B
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3289
    .local v14, "record":[B
    if-nez v14, :cond_9

    .line 3290
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error, No Iap for ADN "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3285
    .end local v7    # "iaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v14    # "record":[B
    :catch_1
    move-exception v5

    .line 3286
    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3293
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v7    # "iaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v14    # "record":[B
    :cond_9
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    move/from16 v17, v0

    aget-byte v17, v14, v17

    move/from16 v0, v17

    and-int/lit16 v13, v0, 0xff

    .line 3295
    .local v13, "recNum":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updatePhoneAdnRecord recNum["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "]="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3296
    if-lez v13, :cond_3

    const/16 v17, 0xff

    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    .line 3298
    const/4 v4, 0x0

    .line 3300
    .local v4, "data":[B
    add-int/lit8 v17, v13, -0x1

    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "data":[B
    check-cast v4, [B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3305
    .local v4, "data":[B
    if-nez v4, :cond_a

    .line 3306
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error record,data is null;"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3301
    .end local v4    # "data":[B
    :catch_2
    move-exception v5

    .line 3302
    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "updatePhoneAdnRecord mIapFileList = null"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3309
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "data":[B
    :cond_a
    if-eqz v12, :cond_3

    .line 3310
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 3339
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "not supported tag "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3312
    :sswitch_0
    const/16 v17, 0x1

    aget-byte v3, v4, v17

    .line 3313
    .local v3, "anrRecLength":I
    if-lez v3, :cond_3

    const/16 v17, 0xb

    move/from16 v0, v17

    if-gt v3, v0, :cond_3

    .line 3315
    const/16 v17, 0x1

    aget-byte v17, v4, v17

    .line 3314
    const/16 v18, 0x2

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v1}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 3316
    .local v2, "anr":Ljava/lang/String;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3317
    const-string/jumbo v19, " th anr is "

    .line 3316
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    if-eqz v2, :cond_3

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 3319
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 3325
    .end local v2    # "anr":Ljava/lang/String;
    .end local v3    # "anrRecLength":I
    :sswitch_1
    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v16

    .line 3326
    .local v16, "val":Ljava/lang/String;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3327
    const-string/jumbo v19, " th email is "

    .line 3326
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 3329
    const/16 v18, 0x0

    aput-object v16, v17, v18

    .line 3328
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3333
    .end local v16    # "val":Ljava/lang/String;
    :sswitch_2
    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v15

    .line 3334
    .local v15, "sne":Ljava/lang/String;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3335
    const-string/jumbo v19, " th sne is "

    .line 3334
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    invoke-virtual {v12, v15}, Lcom/android/internal/telephony/uicc/AdnRecord;->setSne(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3310
    nop

    :sswitch_data_0
    .sparse-switch
        0xc3 -> :sswitch_2
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method

.method private updatePhoneAdnRecordByEmailFile(I)V
    .locals 16
    .param p1, "nPbrRecNum"    # I

    .prologue
    .line 2915
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v13, :cond_0

    .line 2916
    return-void

    .line 2918
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v8, p1, v13

    .line 2920
    .local v8, "nOffset":I
    move v4, v8

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v13, v8

    if-ge v4, v13, :cond_1

    .line 2922
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    const/4 v14, 0x0

    aput v14, v13, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2920
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2923
    :catch_0
    move-exception v1

    .line 2924
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v13, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "UsimPhoneBookManager updatePhoneAdnRecordByEmailFile: mEmailRecTable ArrayIndexOutOfBoundsException, nPbrRecNum is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-nez v13, :cond_2

    .line 2930
    return-void

    .line 2936
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2942
    .local v5, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v5, :cond_7

    .line 2943
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_3

    .line 2944
    const-string/jumbo v13, "UsimPhoneBookManager"

    const-string/jumbo v14, "Warning: IAP size is 0"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    return-void

    .line 2937
    .end local v5    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_1
    move-exception v2

    .line 2938
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v13, "Index out of bounds."

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2939
    return-void

    .line 2955
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v5    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2956
    .local v9, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    mul-int v6, p1, v13

    .line 2957
    .local v6, "nAdnOffset":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    add-int v7, v8, v13

    .line 2958
    .local v7, "nMax":I
    if-ge v9, v7, :cond_4

    .line 2959
    move v7, v9

    .line 2961
    :cond_4
    const-string/jumbo v13, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "UsimPhoneBookManager updatePhoneAdnRecordByEmailFile:  nAdnOffset is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2962
    const-string/jumbo v15, "nMax is "

    .line 2961
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    move v4, v6

    :goto_1
    if-ge v4, v7, :cond_7

    .line 2966
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2972
    .local v10, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_5

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_6

    .line 2974
    :cond_5
    const/4 v12, 0x0

    .line 2976
    .local v12, "record":[B
    sub-int v13, v4, v6

    :try_start_3
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "record":[B
    check-cast v12, [B
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2982
    .local v12, "record":[B
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v13, v12, v13

    and-int/lit16 v11, v13, 0xff

    .line 2983
    .local v11, "recNum":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updatePhoneAdnRecordByEmailFile "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ",recNum["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2984
    const-string/jumbo v14, "]="

    .line 2983
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2985
    const/4 v13, -0x1

    if-eq v11, v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-gt v11, v13, :cond_6

    .line 2986
    const/4 v13, 0x1

    new-array v3, v13, [Ljava/lang/String;

    .line 2988
    .local v3, "emails":[Ljava/lang/String;
    add-int/lit8 v13, v11, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v3, v14

    .line 2990
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v14, v14, p1

    add-int/2addr v14, v11

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v15, v4, 0x1

    aput v15, v13, v14
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2998
    invoke-virtual {v10, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 2999
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v4, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2963
    .end local v3    # "emails":[Ljava/lang/String;
    .end local v11    # "recNum":I
    .end local v12    # "record":[B
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2967
    .end local v10    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_2
    move-exception v2

    .line 2968
    .restart local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v13, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "UsimPhoneBookManager updatePhoneAdnRecordByEmailFile: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2969
    const-string/jumbo v15, "index is "

    .line 2968
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    return-void

    .line 2977
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v10    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_3
    move-exception v2

    .line 2978
    .restart local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v13, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error: updatePhoneAdnRecord : No IAP record for ADN "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2979
    const-string/jumbo v15, " , continuing"

    .line 2978
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "nAdnOffset":I
    .end local v7    # "nMax":I
    .end local v9    # "numAdnRecs":I
    .end local v10    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_7
    return-void

    .line 2991
    .restart local v3    # "emails":[Ljava/lang/String;
    .restart local v6    # "nAdnOffset":I
    .restart local v7    # "nMax":I
    .restart local v9    # "numAdnRecs":I
    .restart local v10    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v11    # "recNum":I
    .restart local v12    # "record":[B
    :catch_4
    move-exception v2

    .line 2992
    .restart local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v13, "UsimPhoneBookManager"

    .line 2993
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error: updatePhoneAdnRecord : Email record index out of table storage "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2994
    const-string/jumbo v15, " , continuing"

    .line 2993
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2992
    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updatePhoneAdnRecordWithAnrByIndex(III[B)V
    .locals 10
    .param p1, "recNum"    # I
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I
    .param p4, "anrRecData"    # [B

    .prologue
    .line 1792
    const-string/jumbo v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updatePhoneAdnRecordWithAnrByIndex the "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "th anr record is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1793
    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    .line 1792
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const/4 v7, 0x1

    aget-byte v4, p4, v7

    .line 1798
    .local v4, "anrRecLength":I
    const/4 v7, 0x0

    aget-byte v3, p4, v7

    .line 1799
    .local v3, "anrAas":I
    if-lez v4, :cond_0

    const/16 v7, 0xb

    if-gt v4, v7, :cond_0

    .line 1800
    const/4 v7, 0x1

    aget-byte v7, p4, v7

    const/4 v8, 0x2

    invoke-static {p4, v8, v7}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1805
    .local v2, "anr":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1791
    .end local v2    # "anr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1806
    .restart local v2    # "anr":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 1807
    .local v0, "aas":Ljava/lang/String;
    if-lez v3, :cond_2

    const/16 v7, 0xff

    if-eq v3, v7, :cond_2

    .line 1808
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    .line 1809
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1810
    .local v1, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v3, v7, :cond_2

    .line 1811
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "aas":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1815
    .end local v1    # "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " updatePhoneAdnRecordWithAnrByIndex "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1816
    const-string/jumbo v9, " th anr is "

    .line 1815
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1816
    const-string/jumbo v9, " the anrIndex is "

    .line 1815
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1827
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v6, v2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 1828
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1829
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAasIndex(I)V

    .line 1831
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1821
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v5

    .line 1822
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UsimPhoneBookManager updatePhoneAdnRecordWithAnrByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1823
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1822
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1823
    const-string/jumbo v9, "index is "

    .line 1822
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    return-void
.end method

.method private updatePhoneAdnRecordWithEmailByIndex(II[B)V
    .locals 10
    .param p1, "emailIndex"    # I
    .param p2, "index"    # I
    .param p3, "emailRecData"    # [B

    .prologue
    const/4 v9, 0x0

    .line 3371
    if-nez p3, :cond_0

    .line 3372
    return-void

    .line 3375
    :cond_0
    array-length v3, p3

    .line 3376
    .local v3, "length":I
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v6, :cond_1

    array-length v6, p3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 3377
    array-length v6, p3

    add-int/lit8 v3, v6, -0x2

    .line 3380
    :cond_1
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePhoneAdnRecordWithEmailByIndex length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    new-array v5, v3, [B

    .line 3383
    .local v5, "validEMailData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 3384
    const/4 v6, -0x1

    aput-byte v6, v5, v2

    .line 3383
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3386
    :cond_2
    invoke-static {p3, v9, v5, v9, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3388
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validEMailData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", validEmailLen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 3392
    .local v1, "email":Ljava/lang/String;
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePhoneAdnRecordWithEmailByIndex index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3393
    const-string/jumbo v8, " emailRecData record is "

    .line 3392
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    if-eqz v1, :cond_3

    const-string/jumbo v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3400
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    add-int/lit8 v7, p1, -0x1

    add-int/lit8 v8, p2, 0x1

    aput v8, v6, v7

    .line 3370
    .end local v1    # "email":Ljava/lang/String;
    :goto_2
    return-void

    .line 3395
    .restart local v1    # "email":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 3396
    .local v4, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 3397
    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 3396
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3401
    .end local v1    # "email":Ljava/lang/String;
    .end local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v0

    .line 3402
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[JE]updatePhoneAdnRecordWithEmailByIndex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updatePhoneAdnRecordWithGrpByIndex(II[I)V
    .locals 8
    .param p1, "recIndex"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIds"    # [I

    .prologue
    .line 2879
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePhoneAdnRecordWithGrpByIndex the "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "th grp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le p1, v5, :cond_0

    .line 2881
    return-void

    .line 2883
    :cond_0
    array-length v2, p3

    .line 2885
    .local v2, "grpSize":I
    if-lez v2, :cond_2

    .line 2888
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2895
    .local v4, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePhoneAdnRecordWithGrpByIndex the adnIndex is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2896
    const-string/jumbo v7, "; the original index is "

    .line 2895
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2896
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v7

    .line 2895
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2899
    .local v1, "grpIdsSb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_1

    .line 2900
    aget v5, p3, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2901
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2899
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2889
    .end local v1    # "grpIdsSb":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v0

    .line 2890
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UsimPhoneBookManager updatePhoneAdnRecordWithGrpByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2891
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2890
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2891
    const-string/jumbo v7, "index is "

    .line 2890
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    return-void

    .line 2903
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "grpIdsSb":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    add-int/lit8 v5, v2, -0x1

    aget v5, p3, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2905
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 2907
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePhoneAdnRecordWithGrpByIndex grpIds is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2909
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePhoneAdnRecordWithGrpByIndex the rec:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    .end local v1    # "grpIdsSb":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    return-void
.end method

.method private updatePhoneAdnRecordWithSneByIndex(II[B)V
    .locals 6
    .param p1, "recNum"    # I
    .param p2, "index"    # I
    .param p3, "recData"    # [B

    .prologue
    .line 4102
    if-nez p3, :cond_0

    .line 4103
    return-void

    .line 4105
    :cond_0
    array-length v3, p3

    const/4 v4, 0x0

    invoke-static {p3, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 4106
    .local v2, "sne":Ljava/lang/String;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePhoneAdnRecordWithSneByIndex index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4107
    const-string/jumbo v5, " recData record is "

    .line 4106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4108
    if-eqz v2, :cond_1

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4101
    :cond_1
    :goto_0
    return-void

    .line 4111
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4118
    .local v1, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setSne(Ljava/lang/String;)V

    goto :goto_0

    .line 4112
    .end local v1    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v0

    .line 4113
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager updatePhoneAdnRecordWithSneByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4114
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4114
    const-string/jumbo v5, "index is "

    .line 4113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4115
    return-void
.end method

.method private updateType2Anr(Ljava/lang/String;ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 37
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "record"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .prologue
    .line 3407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType2Anr anr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",adnIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",record:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3408
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v26, v3, v4

    .line 3409
    .local v26, "pbrRecNum":I
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v22, v3, v4

    .line 3410
    .local v22, "iapRecNum":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType2Anr pbrRecNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",iapRecNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 3413
    return-void

    .line 3415
    :cond_0
    if-nez p3, :cond_1

    .line 3416
    return-void

    .line 3419
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_2

    .line 3420
    return-void

    .line 3422
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    .line 3423
    .local v20, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v20, :cond_3

    .line 3424
    return-void

    .line 3430
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3436
    .local v25, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez v25, :cond_4

    .line 3437
    return-void

    .line 3431
    .end local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_0
    move-exception v19

    .line 3432
    .local v19, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "Index out of bounds."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3433
    return-void

    .line 3439
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_4
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 3440
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "Warning: IAP size is 0"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    return-void

    .line 3443
    :cond_5
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 3444
    .local v6, "iap":[B
    if-nez v6, :cond_6

    .line 3445
    return-void

    .line 3447
    :cond_6
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v3, v6, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v23, v0

    .line 3448
    .local v23, "index":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType2Anr orignal index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3449
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 3450
    :cond_7
    if-lez v23, :cond_8

    .line 3451
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    const/4 v4, -0x1

    aput-byte v4, v6, v3

    .line 3452
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3454
    add-int/lit8 v5, v22, 0x1

    const/16 v7, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const/4 v7, 0x0

    .line 3453
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3461
    :cond_8
    return-void

    .line 3457
    :cond_9
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "updateType2Anr Error: No IAP file!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    return-void

    .line 3465
    :cond_a
    const/16 v18, 0x0

    .line 3466
    .local v18, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_0

    .line 3485
    .end local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :goto_0
    const/4 v9, 0x0

    .line 3486
    .local v9, "recNum":I
    if-nez v18, :cond_d

    .line 3487
    return-void

    .line 3468
    .end local v9    # "recNum":I
    .restart local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    if-nez v3, :cond_b

    .line 3469
    const-string/jumbo v3, "updateType2Anr mAnrFileList null"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3470
    return-void

    .line 3472
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v18, Ljava/util/ArrayList;

    .local v18, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    goto :goto_0

    .line 3475
    .local v18, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    if-nez v3, :cond_c

    .line 3476
    const-string/jumbo v3, "updateType2Anr mEmailFileList null"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3477
    return-void

    .line 3479
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v18, Ljava/util/ArrayList;

    .local v18, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    goto :goto_0

    .line 3489
    .end local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v9    # "recNum":I
    :cond_d
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 3490
    .local v33, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType2Anr size :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3491
    if-lez v23, :cond_f

    move/from16 v0, v23

    move/from16 v1, v33

    if-gt v0, v1, :cond_f

    .line 3492
    move/from16 v9, v23

    .line 3550
    :cond_e
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType2Anr final index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3551
    if-nez v9, :cond_19

    .line 3552
    return-void

    .line 3495
    :cond_f
    add-int/lit8 v3, v33, 0x1

    new-array v0, v3, [I

    move-object/from16 v24, v0

    .line 3496
    .local v24, "indexArray":[I
    const/16 v21, 0x1

    .local v21, "i":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v33

    if-gt v0, v1, :cond_10

    .line 3497
    const/4 v3, 0x0

    aput v3, v24, v21

    .line 3496
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 3499
    :cond_10
    const/16 v21, 0x0

    :goto_3
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_12

    .line 3500
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [B

    .line 3501
    .local v35, "value":[B
    if-eqz v35, :cond_11

    .line 3502
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v3, v35, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v34, v0

    .line 3503
    .local v34, "tem":I
    if-lez v34, :cond_11

    const/16 v3, 0xff

    move/from16 v0, v34

    if-ge v0, v3, :cond_11

    move/from16 v0, v34

    move/from16 v1, v33

    if-gt v0, v1, :cond_11

    .line 3504
    const/4 v3, 0x1

    aput v3, v24, v34

    .line 3499
    .end local v34    # "tem":I
    :cond_11
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 3509
    .end local v35    # "value":[B
    :cond_12
    const/16 v32, 0x0

    .line 3510
    .local v32, "sharedAnr":Z
    const/16 v29, 0x0

    .line 3511
    .local v29, "re":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "r$iterator":Ljava/util/Iterator;
    :cond_13
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 3512
    .local v27, "r":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-eq v3, v4, :cond_13

    .line 3513
    move-object/from16 v29, v27

    .line 3517
    .end local v27    # "r":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v29    # "re":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_14
    if-eqz v29, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v3, v4, :cond_15

    .line 3518
    const/16 v32, 0x1

    .line 3520
    :cond_15
    if-eqz v32, :cond_17

    .line 3524
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    .line 3526
    .local v31, "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v31, :cond_17

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 3527
    const/16 v21, 0x0

    :goto_4
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_17

    .line 3528
    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [B

    .line 3529
    .restart local v35    # "value":[B
    if-eqz v35, :cond_16

    .line 3530
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v3, v35, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v34, v0

    .line 3531
    .restart local v34    # "tem":I
    if-lez v34, :cond_16

    const/16 v3, 0xff

    move/from16 v0, v34

    if-ge v0, v3, :cond_16

    move/from16 v0, v34

    move/from16 v1, v33

    if-gt v0, v1, :cond_16

    .line 3532
    const/4 v3, 0x1

    aput v3, v24, v34
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3527
    .end local v34    # "tem":I
    :cond_16
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 3537
    .end local v31    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v35    # "value":[B
    :catch_1
    move-exception v19

    .line 3538
    .restart local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "Index out of bounds."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3539
    return-void

    .line 3543
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_17
    const/16 v21, 0x1

    :goto_5
    move/from16 v0, v21

    move/from16 v1, v33

    if-gt v0, v1, :cond_e

    .line 3544
    aget v3, v24, v21

    if-nez v3, :cond_18

    .line 3545
    move/from16 v9, v21

    goto/16 :goto_1

    .line 3543
    :cond_18
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 3554
    .end local v21    # "i":I
    .end local v24    # "indexArray":[I
    .end local v28    # "r$iterator":Ljava/util/Iterator;
    .end local v32    # "sharedAnr":Z
    :cond_19
    const/4 v10, 0x0

    .line 3555
    .local v10, "data":[B
    const/16 v36, 0x0

    .line 3556
    .local v36, "what":I
    const/4 v8, 0x0

    .line 3557
    .local v8, "fileId":I
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_1

    .line 3579
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3582
    .end local v10    # "data":[B
    :goto_6
    if-eqz v10, :cond_1a

    .line 3583
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3584
    move/from16 v0, v23

    if-eq v9, v0, :cond_1a

    .line 3585
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    int-to-byte v4, v9

    aput-byte v4, v6, v3

    .line 3586
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3587
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 3588
    add-int/lit8 v13, v22, 0x1

    const/16 v3, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    const/4 v15, 0x0

    move-object v14, v6

    .line 3587
    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3406
    :cond_1a
    return-void

    .line 3561
    .restart local v10    # "data":[B
    :sswitch_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3568
    .local v30, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAasIndex()I

    move-result v17

    .line 3569
    .local v17, "aas":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;II)[B

    move-result-object v10

    .line 3570
    .local v10, "data":[B
    const/16 v36, 0x9

    .line 3571
    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    goto :goto_6

    .line 3562
    .end local v17    # "aas":I
    .end local v30    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .local v10, "data":[B
    :catch_2
    move-exception v19

    .line 3563
    .restart local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager updateType2Anr: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3564
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3563
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3564
    const-string/jumbo v5, "index is "

    .line 3563
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3564
    add-int/lit8 v5, p2, -0x1

    .line 3563
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3574
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    :sswitch_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v10

    .line 3575
    .local v10, "data":[B
    const/16 v36, 0xb

    .line 3576
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto/16 :goto_6

    .line 3591
    .end local v10    # "data":[B
    :cond_1b
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "updateType2Anr Error: No IAP file!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    return-void

    .line 3466
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch

    .line 3557
    :sswitch_data_1
    .sparse-switch
        0xc4 -> :sswitch_2
        0xca -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public addContactToGroup(II)Z
    .locals 18
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    .line 2018
    const/4 v13, 0x0

    .line 2019
    .local v13, "ret":Z
    const-string/jumbo v14, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "UsimPhoneBookManager addContactToGroup adnIndex is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2020
    const-string/jumbo v16, " to grp "

    .line 2019
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v14, :cond_0

    if-gtz p1, :cond_1

    .line 2022
    :cond_0
    const-string/jumbo v14, "UsimPhoneBookManager"

    const-string/jumbo v15, "UsimPhoneBookManager addContactToGroup no records or invalid index."

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    const/4 v14, 0x0

    return v14

    .line 2021
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v0, p1

    if-gt v0, v14, :cond_0

    .line 2025
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2028
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v16, p1, -0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2035
    .local v12, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v12, :cond_5

    .line 2036
    :try_start_1
    const-string/jumbo v14, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " addContactToGroup the adn index is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2037
    const-string/jumbo v17, " old grpList is "

    .line 2036
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2037
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v17

    .line 2036
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v8

    .line 2039
    .local v8, "grpList":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2040
    .local v2, "bExist":Z
    const/4 v11, -0x1

    .line 2043
    .local v11, "nOrder":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v16, 0x7

    aget v5, v14, v16

    .line 2044
    .local v5, "grpCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v16, 0x7

    aget v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    move-object/from16 v16, v0

    const/16 v17, 0x5

    aget v16, v16, v17

    move/from16 v0, v16

    if-le v14, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v16, 0x5

    aget v9, v14, v16

    .line 2045
    .local v9, "grpMaxCount":I
    :goto_0
    new-array v6, v5, [I

    .line 2046
    .local v6, "grpIdArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v5, :cond_3

    .line 2047
    const/4 v14, 0x0

    aput v14, v6, v10

    .line 2046
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2029
    .end local v2    # "bExist":Z
    .end local v5    # "grpCount":I
    .end local v6    # "grpIdArray":[I
    .end local v8    # "grpList":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    .end local v11    # "nOrder":I
    .end local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v3

    .line 2030
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v14, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "UsimPhoneBookManager addContactToGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 2030
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2031
    const-string/jumbo v17, "index is "

    .line 2030
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2031
    add-int/lit8 v17, p1, -0x1

    .line 2030
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2032
    const/4 v14, 0x0

    monitor-exit v15

    return v14

    .line 2044
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "bExist":Z
    .restart local v5    # "grpCount":I
    .restart local v8    # "grpList":Ljava/lang/String;
    .restart local v11    # "nOrder":I
    .restart local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v16, 0x7

    aget v9, v14, v16

    .restart local v9    # "grpMaxCount":I
    goto :goto_0

    .line 2049
    .restart local v6    # "grpIdArray":[I
    .restart local v10    # "i":I
    :cond_3
    if-eqz v8, :cond_9

    .line 2050
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2051
    .local v7, "grpIds":[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    .line 2052
    aget-object v14, v7, v10

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    aput v14, v6, v10

    .line 2053
    aget v14, v6, v10

    move/from16 v0, p2

    if-ne v0, v14, :cond_6

    .line 2054
    const/4 v2, 0x1

    .line 2055
    const-string/jumbo v14, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " addContactToGroup the adn is already in the group. i is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    .end local v7    # "grpIds":[Ljava/lang/String;
    :cond_4
    :goto_3
    if-nez v2, :cond_5

    if-ltz v11, :cond_5

    .line 2071
    aput p2, v6, v11

    .line 2072
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2073
    const/16 v16, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 2072
    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2075
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2079
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v14, :cond_5

    .line 2080
    const/4 v13, 0x1

    .line 2081
    add-int/lit8 v14, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v1, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2082
    const-string/jumbo v14, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " addContactToGroup the adn index is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2083
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v17

    .line 2082
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "bExist":Z
    .end local v5    # "grpCount":I
    .end local v6    # "grpIdArray":[I
    .end local v8    # "grpList":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    .end local v11    # "nOrder":I
    :cond_5
    monitor-exit v15

    .line 2089
    return v13

    .line 2059
    .restart local v2    # "bExist":Z
    .restart local v5    # "grpCount":I
    .restart local v6    # "grpIdArray":[I
    .restart local v7    # "grpIds":[Ljava/lang/String;
    .restart local v8    # "grpList":Ljava/lang/String;
    .restart local v9    # "grpMaxCount":I
    .restart local v10    # "i":I
    .restart local v11    # "nOrder":I
    :cond_6
    if-gez v11, :cond_8

    :try_start_5
    aget v14, v6, v10

    if-eqz v14, :cond_7

    aget v14, v6, v10

    const/16 v16, 0xff

    move/from16 v0, v16

    if-ne v14, v0, :cond_8

    .line 2060
    :cond_7
    move v11, v10

    .line 2061
    const-string/jumbo v14, "UsimPhoneBookManager"

    .line 2062
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " addContactToGroup found an unsed position in the group list. i is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2061
    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 2067
    .end local v7    # "grpIds":[Ljava/lang/String;
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 2076
    :catch_1
    move-exception v4

    .line 2077
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v14, "UsimPhoneBookManager"

    const-string/jumbo v16, "Interrupted Exception in addContactToGroup"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 2025
    .end local v2    # "bExist":Z
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "grpCount":I
    .end local v6    # "grpIdArray":[I
    .end local v8    # "grpList":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    .end local v11    # "nOrder":I
    .end local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14
.end method

.method public checkEmailCapacityFree(I[Ljava/lang/String;)Z
    .locals 8
    .param p1, "adnIndex"    # I
    .param p2, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2624
    add-int/lit8 v4, p1, -0x1

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v3, v4, v5

    .line 2625
    .local v3, "pbrRecNum":I
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v2, v3, v4

    .line 2626
    .local v2, "nOffset":I
    const/4 v0, 0x0

    .line 2627
    .local v0, "hasEmail":Z
    if-nez p2, :cond_0

    .line 2628
    return v6

    .line 2630
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_3

    .line 2631
    aget-object v4, p2, v1

    if-eqz v4, :cond_1

    aget-object v4, p2, v1

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2630
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2632
    :cond_2
    const/4 v0, 0x1

    .line 2636
    :cond_3
    if-nez v0, :cond_4

    .line 2637
    return v6

    .line 2640
    :cond_4
    move v1, v2

    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v4, v2

    if-ge v1, v4, :cond_6

    .line 2641
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v4, v4, v1

    if-nez v4, :cond_5

    .line 2642
    return v6

    .line 2640
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2645
    :cond_6
    return v7
.end method

.method public checkEmailLength([Ljava/lang/String;)Z
    .locals 7
    .param p1, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 2649
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-eq v2, v6, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    add-int/lit8 v1, v2, -0x2

    .line 2651
    .local v1, "maxDataLength":I
    :goto_0
    if-eqz p1, :cond_1

    aget-object v2, p1, v5

    if-eqz v2, :cond_1

    .line 2652
    aget-object v2, p1, v5

    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 2653
    .local v0, "eMailData":[B
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkEmailLength eMailData.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", maxDataLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    if-eq v1, v6, :cond_1

    array-length v2, v0

    if-le v2, v1, :cond_1

    .line 2655
    return v5

    .line 2649
    .end local v0    # "eMailData":[B
    .end local v1    # "maxDataLength":I
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .restart local v1    # "maxDataLength":I
    goto :goto_0

    .line 2658
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public getAdnListFromUsim()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4670
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAnrCount()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4007
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "UsimPhoneBookManager getAnrCount begin"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4009
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4010
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-gtz v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4011
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4013
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 4020
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    if-nez v2, :cond_1

    return v1

    .line 4014
    :catch_0
    move-exception v0

    .line 4015
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "Interrupted Exception in getAnrCount"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4009
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 4022
    :cond_1
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UsimPhoneBookManager getAnrCount done: N_ANR is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4025
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v2, v2, v1

    if-lez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getEmailCount()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4029
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager getEmailCount begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4032
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4033
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4036
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    .line 4043
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v3, :cond_1

    return v2

    .line 4037
    :catch_0
    move-exception v0

    .line 4038
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in getEmailCount"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4031
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 4045
    :cond_1
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager getEmailCount done: N_EMAIL is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v3, v3, v1

    if-lez v3, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    .locals 22

    .prologue
    .line 4197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/4 v8, 0x1

    .line 4198
    .local v8, "is3G":Z
    :goto_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getPhonebookMemStorageExt isUsim "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4199
    if-nez v8, :cond_1

    .line 4200
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPhonebookMemStorageExt2G()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-result-object v19

    return-object v19

    .line 4197
    .end local v8    # "is3G":Z
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "is3G":Z
    goto :goto_0

    .line 4202
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 4203
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 4206
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 4207
    const/16 v19, 0x0

    return-object v19

    .line 4209
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getPhonebookMemStorageExt slice "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-object/from16 v16, v0

    .line 4211
    .local v16, "response":[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_4

    .line 4212
    new-instance v19, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    invoke-direct/range {v19 .. v19}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;-><init>()V

    aput-object v19, v16, v7

    .line 4211
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4215
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 4216
    const-string/jumbo v19, "mPhoneBookRecords has not been loaded."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4217
    return-object v16

    .line 4219
    :cond_5
    const/16 v17, 0x0

    .line 4220
    .local v17, "size":[I
    const/16 v18, 0x0

    .line 4223
    .local v18, "used":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v17    # "size":[I
    .local v15, "record$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4224
    .local v14, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4225
    .local v17, "size":[I
    if-eqz v17, :cond_6

    .line 4226
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnLength(I)V

    .line 4230
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnTotal(I)V

    .line 4233
    :cond_6
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnType(I)V

    .line 4234
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSliceIndex(I)V

    .line 4236
    const/16 v18, 0x0

    .line 4237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4238
    .local v12, "numAdnRecs":I
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v20, v0

    mul-int v11, v19, v20

    .line 4239
    .local v11, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v19, v0

    add-int v10, v11, v19

    .line 4240
    .local v10, "nMax":I
    if-ge v12, v10, :cond_7

    move v10, v12

    .line 4241
    :cond_7
    const/4 v13, 0x0

    .line 4242
    .local v13, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    move v7, v11

    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_3
    if-ge v7, v10, :cond_a

    .line 4244
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4249
    :goto_4
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_9

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_9

    .line 4250
    :goto_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Adn: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4251
    add-int/lit8 v18, v18, 0x1

    .line 4252
    const/4 v13, 0x0

    .line 4242
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 4245
    :catch_0
    move-exception v5

    .line 4246
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v19, "UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "getPhonebookMemStorageExt: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 4247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 4246
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 4247
    const-string/jumbo v21, "index is "

    .line 4246
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4249
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_9
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_8

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_8

    goto :goto_5

    .line 4256
    :cond_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "adn used "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4257
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnUsed(I)V

    goto/16 :goto_2

    .line 4261
    .end local v10    # "nMax":I
    .end local v11    # "nOffset":I
    .end local v12    # "numAdnRecs":I
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4262
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4263
    .restart local v17    # "size":[I
    if-eqz v17, :cond_c

    .line 4264
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrLength(I)V

    .line 4265
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrTotal(I)V

    .line 4267
    :cond_c
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrType(I)V

    .line 4268
    const/16 v18, 0x0

    .line 4269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4270
    .restart local v12    # "numAdnRecs":I
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v20, v0

    mul-int v11, v19, v20

    .line 4271
    .restart local v11    # "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v19, v0

    add-int v10, v11, v19

    .line 4272
    .restart local v10    # "nMax":I
    if-ge v12, v10, :cond_d

    .line 4273
    move v10, v12

    .line 4275
    :cond_d
    const/4 v13, 0x0

    .line 4276
    .restart local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v2, 0x0

    .line 4277
    .local v2, "anrStr":Ljava/lang/String;
    move v7, v11

    .end local v2    # "anrStr":Ljava/lang/String;
    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int v19, v19, v11

    move/from16 v0, v19

    if-ge v7, v0, :cond_10

    .line 4279
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v13, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4284
    :goto_8
    if-nez v13, :cond_f

    .line 4285
    const-string/jumbo v19, "null anr rec "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4277
    :cond_e
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 4280
    :catch_1
    move-exception v5

    .line 4281
    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v19, "UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "getPhonebookMemStorageExt: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 4282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 4281
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 4282
    const-string/jumbo v21, "index is "

    .line 4281
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4288
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_f
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v2

    .line 4289
    .local v2, "anrStr":Ljava/lang/String;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_e

    .line 4290
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "anrStr: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4291
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 4294
    .end local v2    # "anrStr":Ljava/lang/String;
    :cond_10
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "anr used: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4295
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrUsed(I)V

    goto/16 :goto_6

    .line 4298
    .end local v10    # "nMax":I
    .end local v11    # "nOffset":I
    .end local v12    # "numAdnRecs":I
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_16

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4299
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4300
    .restart local v17    # "size":[I
    if-eqz v17, :cond_12

    .line 4301
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailLength(I)V

    .line 4302
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailTotal(I)V

    .line 4304
    :cond_12
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailType(I)V

    .line 4305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4306
    .restart local v12    # "numAdnRecs":I
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v20, v0

    mul-int v11, v19, v20

    .line 4307
    .restart local v11    # "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v19, v0

    add-int v10, v11, v19

    .line 4308
    .restart local v10    # "nMax":I
    if-ge v12, v10, :cond_13

    .line 4309
    move v10, v12

    .line 4311
    :cond_13
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "numAdnRecs:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4312
    const/16 v18, 0x0

    .line 4313
    move v7, v11

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v19, v0

    add-int v19, v19, v11

    move/from16 v0, v19

    if-ge v7, v0, :cond_15

    .line 4315
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    move-object/from16 v19, v0

    aget v19, v19, v7
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    if-lez v19, :cond_14

    .line 4316
    add-int/lit8 v18, v18, 0x1

    .line 4313
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 4318
    :catch_2
    move-exception v4

    .line 4319
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "get mEmailRecTable error "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4323
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_15
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "emailList used:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4324
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailUsed(I)V

    goto/16 :goto_a

    .line 4327
    .end local v10    # "nMax":I
    .end local v11    # "nOffset":I
    .end local v12    # "numAdnRecs":I
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mExt1Fileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4328
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4329
    .restart local v17    # "size":[I
    if-eqz v17, :cond_17

    .line 4330
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Length(I)V

    .line 4331
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Total(I)V

    .line 4333
    :cond_17
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Type(I)V

    .line 4334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4335
    :try_start_3
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readExt1FileAndWait(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v20

    .line 4337
    const/16 v18, 0x0

    .line 4338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 4339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 4340
    .local v6, "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v6, :cond_1a

    .line 4341
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4342
    .local v9, "len":I
    const/4 v7, 0x0

    :goto_d
    if-ge v7, v9, :cond_1a

    .line 4343
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 4344
    .local v3, "arr":[B
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "ext1["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4345
    if-eqz v3, :cond_19

    array-length v0, v3

    move/from16 v19, v0

    if-lez v19, :cond_19

    .line 4346
    const/16 v19, 0x0

    aget-byte v19, v3, v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    const/16 v19, 0x0

    aget-byte v19, v3, v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 4347
    :cond_18
    add-int/lit8 v18, v18, 0x1

    .line 4342
    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 4334
    .end local v3    # "arr":[B
    .end local v6    # "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v9    # "len":I
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 4353
    :cond_1a
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Used(I)V

    goto/16 :goto_c

    .line 4356
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mGasFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4357
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4358
    .restart local v17    # "size":[I
    if-eqz v17, :cond_1c

    .line 4359
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setGasLength(I)V

    .line 4360
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setGasTotal(I)V

    .line 4362
    :cond_1c
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setGasType(I)V

    goto :goto_e

    .line 4365
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAasFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4366
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4367
    .restart local v17    # "size":[I
    if-eqz v17, :cond_1e

    .line 4368
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAasLength(I)V

    .line 4369
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAasTotal(I)V

    .line 4371
    :cond_1e
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAasType(I)V

    goto :goto_f

    .line 4375
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_10
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_21

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4376
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4377
    .restart local v17    # "size":[I
    if-eqz v17, :cond_20

    .line 4378
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSneLength(I)V

    .line 4379
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSneTotal(I)V

    .line 4381
    :cond_20
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSneType(I)V

    goto :goto_10

    .line 4384
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCcpFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_11
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_23

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4385
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4386
    .restart local v17    # "size":[I
    if-eqz v17, :cond_22

    .line 4387
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setCcpLength(I)V

    .line 4388
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setCcpTotal(I)V

    .line 4390
    :cond_22
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setCcpType(I)V

    goto :goto_11

    .line 4393
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_23
    const/4 v7, 0x0

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_24

    .line 4394
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getPhonebookMemStorageExt["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v16, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4393
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 4396
    :cond_24
    return-object v16
.end method

.method public getPhonebookMemStorageExt2G()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    .locals 15

    .prologue
    const/16 v11, 0x6f4a

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 4400
    new-array v6, v13, [Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    .line 4401
    .local v6, "response":[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    new-instance v9, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    invoke-direct {v9}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;-><init>()V

    aput-object v9, v6, v12

    .line 4402
    const/4 v7, 0x0

    .line 4403
    .local v7, "size":[I
    const/16 v9, 0x6f3a

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v7

    .line 4404
    .local v7, "size":[I
    if-eqz v7, :cond_0

    .line 4405
    aget-object v9, v6, v12

    aget v10, v7, v12

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnLength(I)V

    .line 4406
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAdnAccessible()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4407
    aget-object v9, v6, v12

    aget v10, v7, v14

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnTotal(I)V

    .line 4412
    :cond_0
    :goto_0
    aget-object v9, v6, v12

    const/16 v10, 0xa8

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnType(I)V

    .line 4413
    aget-object v9, v6, v12

    invoke-virtual {v9, v13}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSliceIndex(I)V

    .line 4415
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v7

    .line 4416
    if-eqz v7, :cond_1

    .line 4417
    aget-object v9, v6, v12

    aget v10, v7, v12

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Length(I)V

    .line 4418
    aget-object v9, v6, v12

    aget v10, v7, v14

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Total(I)V

    .line 4420
    :cond_1
    aget-object v9, v6, v12

    const/16 v10, 0xaa

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Type(I)V

    .line 4421
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 4422
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v9, :cond_5

    .line 4423
    const/16 v9, 0x3e9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 4424
    .local v5, "msg":Landroid/os/Message;
    const/4 v9, 0x0

    iput v9, v5, Landroid/os/Message;->arg1:I

    .line 4425
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v11, 0x6f4a

    invoke-virtual {v9, v11, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4427
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v10

    .line 4436
    const/4 v8, 0x0

    .line 4437
    .local v8, "used":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    if-eqz v9, :cond_6

    .line 4438
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4439
    .local v2, "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v2, :cond_6

    .line 4440
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4441
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_6

    .line 4442
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 4443
    .local v0, "arr":[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ext1["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4444
    if-eqz v0, :cond_3

    array-length v9, v0

    if-lez v9, :cond_3

    .line 4445
    aget-byte v9, v0, v12

    if-eq v9, v13, :cond_2

    aget-byte v9, v0, v12

    if-ne v9, v14, :cond_3

    .line 4446
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 4441
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4409
    .end local v0    # "arr":[B
    .end local v2    # "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "used":I
    :cond_4
    aget-object v9, v6, v12

    invoke-virtual {v9, v12}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnTotal(I)V

    goto/16 :goto_0

    .line 4428
    .restart local v5    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 4429
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v11, "Interrupted Exception in readExt1FileAndWait"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 4421
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 4432
    :cond_5
    :try_start_3
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v11, "readExt1FileAndWait-IccFileHandler is null"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v10

    .line 4433
    return-object v6

    .line 4452
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v8    # "used":I
    :cond_6
    aget-object v9, v6, v12

    invoke-virtual {v9, v8}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Used(I)V

    .line 4453
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPhonebookMemStorageExt2G:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v6, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4454
    return-object v6
.end method

.method public getSneRecordLen()I
    .locals 12

    .prologue
    const/16 v11, 0xc3

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 4069
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasSne()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4070
    return v9

    .line 4072
    :cond_0
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSneRecordLen: mSneRecordSize is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4073
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    if-lez v6, :cond_1

    .line 4074
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    return v6

    .line 4076
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4077
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_2

    .line 4078
    return v9

    .line 4080
    :cond_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4081
    .local v1, "efid":I
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSneRecordLen: EFSNE id is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    const/16 v5, 0x16

    .line 4083
    .local v5, "what":I
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4084
    .local v4, "result":Landroid/os/Message;
    iput v11, v4, Landroid/os/Message;->arg1:I

    .line 4085
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 4086
    .local v3, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v3, :cond_3

    .line 4087
    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 4091
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4093
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v7

    .line 4098
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    return v6

    .line 4089
    :cond_3
    return v9

    .line 4094
    :catch_0
    move-exception v0

    .line 4095
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v6, "UsimPhoneBookManager"

    const-string/jumbo v8, "Interrupted Exception in readType1Ef"

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4091
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public getUsimAasById(II)Ljava/lang/String;
    .locals 6
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 3669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsimAasById by id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",pbrIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3670
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v3, :cond_3

    .line 3671
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3672
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "No PBR files"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    return-object v5

    .line 3675
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3676
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3677
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    monitor-exit v4

    .line 3678
    return-object v5

    .line 3680
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 3682
    .local v2, "numRecs":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 3685
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v4

    .line 3689
    .end local v0    # "i":I
    .end local v2    # "numRecs":I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3690
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3691
    .local v1, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    .line 3692
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 3675
    .end local v1    # "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3695
    :cond_4
    return-object v5
.end method

.method public getUsimAasList()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/AlphaTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3629
    const-string/jumbo v10, "getUsimAasList start"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3630
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3631
    .local v6, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/uicc/AlphaTag;>;"
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-nez v10, :cond_5

    .line 3632
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_1

    .line 3633
    const-string/jumbo v10, "UsimPhoneBookManager"

    const-string/jumbo v11, "No PBR files"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    return-object v6

    .line 3636
    :cond_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 3637
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3638
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_2

    monitor-exit v11

    .line 3639
    return-object v6

    .line 3641
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 3642
    .local v4, "numRecs":I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v10, :cond_3

    .line 3643
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3645
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 3646
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 3647
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3646
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v11

    .line 3652
    .end local v2    # "i":I
    .end local v4    # "numRecs":I
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3653
    .local v1, "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 3654
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3655
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3656
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3657
    .local v5, "pbrIndex":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3658
    .local v7, "size":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v7, :cond_6

    .line 3659
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3660
    .local v9, "value":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "aasIndex:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",pbrIndex:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",value:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3661
    new-instance v8, Lcom/mediatek/internal/telephony/uicc/AlphaTag;

    add-int/lit8 v10, v2, 0x1

    invoke-direct {v8, v10, v9, v5}, Lcom/mediatek/internal/telephony/uicc/AlphaTag;-><init>(ILjava/lang/String;I)V

    .line 3662
    .local v8, "tag":Lcom/mediatek/internal/telephony/uicc/AlphaTag;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3658
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3636
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v1    # "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "pbrIndex":I
    .end local v7    # "size":I
    .end local v8    # "tag":Lcom/mediatek/internal/telephony/uicc/AlphaTag;
    .end local v9    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 3665
    .restart local v1    # "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_7
    return-object v6
.end method

.method public getUsimAasMaxCount()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 3972
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "UsimPhoneBookManager getUsimAasMaxCount begin"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3974
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x3

    aget v1, v1, v3

    if-gtz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3975
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3977
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 3984
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UsimPhoneBookManager getUsimAasMaxCount done: N_AAS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3986
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v4

    return v1

    .line 3978
    :catch_0
    move-exception v0

    .line 3979
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in getUsimAasMaxCount"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3973
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUsimAasMaxNameLen()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 3954
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "UsimPhoneBookManager getUsimAasMaxNameLen begin"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3956
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    if-gtz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3957
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3959
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 3966
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UsimPhoneBookManager getUsimAasMaxNameLen done: L_AAS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3968
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v4

    return v1

    .line 3960
    :catch_0
    move-exception v0

    .line 3961
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in getUsimAasMaxNameLen"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3955
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUsimGroupById(I)Ljava/lang/String;
    .locals 5
    .param p1, "nGasId"    # I

    .prologue
    .line 1851
    const/4 v0, 0x0

    .line 1852
    .local v0, "grpName":Ljava/lang/String;
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UsimPhoneBookManager getUsimGroupById nGasId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 1854
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 1855
    .local v1, "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v1, :cond_0

    .line 1856
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 1857
    .local v0, "grpName":Ljava/lang/String;
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsimGroupById index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1858
    const-string/jumbo v4, ", name is "

    .line 1857
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    .end local v0    # "grpName":Ljava/lang/String;
    .end local v1    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_0
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UsimPhoneBookManager getUsimGroupById grpName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    return-object v0
.end method

.method public getUsimGroups()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/UsimGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1837
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager getUsimGroups "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1839
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1840
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    .line 1844
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->queryUpbCapablityAndWait()V

    .line 1845
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readGasListAndWait()V

    .line 1847
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    return-object v0

    .line 1838
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUsimGrpMaxCount()I
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 2414
    const/4 v2, -0x1

    .line 2416
    .local v2, "ret":I
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager getUsimGrpMaxCount begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2418
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 2419
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x0

    aput v5, v3, v1

    .line 2418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2422
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2423
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2425
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v4

    .line 2432
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v2, v3, v6

    .line 2433
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager getUsimGrpMaxCount done: N_Gas is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    return v2

    .line 2426
    :catch_0
    move-exception v0

    .line 2427
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in getUsimGrpMaxCount"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2417
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getUsimGrpMaxNameLen()I
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 2389
    const/4 v2, -0x1

    .line 2391
    .local v2, "ret":I
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager getUsimGrpMaxNameLen begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2393
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 2394
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x0

    aput v5, v3, v1

    .line 2393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2397
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2398
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2400
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v4

    .line 2406
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v2, v3, v6

    .line 2407
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager getUsimGrpMaxNameLen done: L_Gas is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2408
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v6

    .line 2407
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    return v2

    .line 2401
    :catch_0
    move-exception v0

    .line 2402
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in getUsimGrpMaxNameLen"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2392
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 44
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1007
    const/16 v39, 0x0

    .line 1008
    .local v39, "userData":[I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v40, v0

    sparse-switch v40, :sswitch_data_0

    .line 1005
    .end local v39    # "userData":[I
    :cond_0
    :goto_0
    return-void

    .line 1010
    .restart local v39    # "userData":[I
    :sswitch_0
    const-string/jumbo v40, "UsimPhoneBookManager"

    const-string/jumbo v41, "EVENT_QUERY_PHB_ADN_INFO"

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1012
    .local v8, "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_1

    .line 1013
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [I

    .line 1014
    .local v21, "info":[I
    if-eqz v21, :cond_2

    .line 1015
    const/16 v40, 0x4

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget v41, v21, v41

    const/16 v42, 0x0

    aput v41, v40, v42

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x1

    aget v41, v21, v41

    const/16 v42, 0x1

    aput v41, v40, v42

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x2

    aget v41, v21, v41

    const/16 v42, 0x2

    aput v41, v40, v42

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x3

    aget v41, v21, v41

    const/16 v42, 0x3

    aput v41, v40, v42

    .line 1020
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "recordSize[0]="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aget v42, v42, v43

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ",recordSize[1]="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v42, v0

    const/16 v43, 0x1

    aget v42, v42, v43

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1021
    const-string/jumbo v42, "recordSize[2]="

    .line 1020
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v42, v0

    const/16 v43, 0x2

    aget v42, v42, v43

    .line 1020
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1021
    const-string/jumbo v42, ",recordSize[3]="

    .line 1020
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v42, v0

    const/16 v43, 0x3

    aget v42, v42, v43

    .line 1020
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    .end local v21    # "info":[I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1032
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "ar":Landroid/os/AsyncResult;
    :goto_2
    monitor-exit v41

    goto/16 :goto_0

    .line 1024
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    .restart local v21    # "info":[I
    :cond_2
    const/16 v40, 0x4

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    aput v41, v40, v42

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x1

    aput v41, v40, v42

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x2

    aput v41, v40, v42

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x3

    aput v41, v40, v42

    goto :goto_1

    .line 1031
    .end local v21    # "info":[I
    :catchall_0
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1036
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    const-string/jumbo v40, "UsimPhoneBookManager"

    const-string/jumbo v41, "UsimPhoneBookManager handleMessage: EVENT_PBR_LOAD_DONE"

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1038
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_3

    .line 1039
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 1041
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1042
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 1041
    :catchall_1
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1046
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    const-string/jumbo v40, "Loading USIM ADN records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1047
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1048
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_7

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    move/from16 v40, v0

    if-eqz v40, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    if-lez v40, :cond_4

    .line 1050
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    if-eqz v40, :cond_4

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v41

    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    .line 1051
    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->changeAdnRecordNumber(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1053
    .local v7, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1055
    invoke-static {v7}, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->checkPhbStorage(Ljava/util/ArrayList;)V

    .line 1074
    .end local v7    # "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1075
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_2

    .line 1074
    :catchall_2
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1058
    :cond_4
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    if-eqz v40, :cond_6

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    move/from16 v40, v0

    if-eqz v40, :cond_5

    .line 1063
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    .line 1062
    check-cast v40, Ljava/util/ArrayList;

    invoke-static/range {v40 .. v40}, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->checkPhbStorage(Ljava/util/ArrayList;)V

    .line 1066
    :cond_5
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM ADN records "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1068
    :cond_6
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM ADN records ar.result:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1072
    :cond_7
    const-string/jumbo v40, "Loading USIM ADN records fail."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1079
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1080
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 1081
    .local v14, "fileId":I
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_a

    .line 1082
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [I

    .line 1088
    .local v32, "recordSize":[I
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v40, v0

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_9

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    move-object/from16 v40, v0

    if-nez v40, :cond_8

    .line 1090
    const-string/jumbo v40, "mAnrFileSize is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1091
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    .line 1094
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    const/16 v42, 0x2

    aget v42, v32, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "mAnrFileSize mEfTag: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, " mAnrFileSize: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    move-object/from16 v41, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .line 1095
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1100
    :goto_4
    const/16 v40, 0x0

    aget v40, v32, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 1101
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM ANR records size done mAnrRecordSize:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1108
    .end local v32    # "recordSize":[I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1109
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_2

    .line 1108
    :catchall_3
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1097
    .restart local v32    # "recordSize":[I
    :catch_0
    move-exception v10

    .line 1098
    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v40, "mAnrFileSize Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 1103
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_9
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get wrong EF record size format"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1106
    .end local v32    # "recordSize":[I
    :cond_a
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get EF record size failed"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1113
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "fileId":I
    :sswitch_4
    const-string/jumbo v40, "Loading USIM ANR records done "

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1114
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1115
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_c

    .line 1116
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecords:Ljava/util/ArrayList;

    .line 1117
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 1118
    .local v30, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    move-object/from16 v40, v0

    if-nez v40, :cond_b

    .line 1120
    const-string/jumbo v40, "mAnrFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1121
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    .line 1124
    :cond_b
    :try_start_5
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "mAnrFileList mEfTag: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    move-object/from16 v40, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecords:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1131
    .end local v30    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1132
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/16 :goto_2

    .line 1131
    :catchall_4
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1126
    .restart local v30    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :catch_1
    move-exception v10

    .line 1127
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v40, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 1137
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v30    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :sswitch_5
    const-string/jumbo v40, "Loading USIM ANR record done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1138
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1139
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    .end local v39    # "userData":[I
    check-cast v39, [I

    .line 1140
    .local v39, "userData":[I
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1142
    .local v34, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v34, :cond_d

    .line 1143
    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v20

    .line 1145
    .local v20, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v20, :cond_d

    .line 1146
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM ANR record done result is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1147
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    .line 1146
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1148
    const/16 v40, 0x0

    aget v40, v39, v40

    const/16 v41, 0x1

    aget v41, v39, v41

    const/16 v42, 0x2

    aget v42, v39, v42

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithAnrByIndex(III[B)V

    .line 1152
    .end local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1153
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "haman, mReadingAnrNum when load done after minus: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ", mNeedNotify:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v40

    if-nez v40, :cond_e

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v40

    if-eqz v40, :cond_e

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1158
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    monitor-exit v41

    .line 1162
    :cond_e
    const-string/jumbo v40, "Loading USIM ANR record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1157
    :catchall_5
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1165
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v34    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v39, "userData":[I
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1166
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 1167
    .local v25, "pbrIndex":I
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM IAP records done "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1168
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_10

    .line 1169
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-nez v40, :cond_f

    .line 1171
    const-string/jumbo v40, "IapFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1172
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 1175
    :cond_f
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move/from16 v1, v25

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1181
    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1182
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto/16 :goto_2

    .line 1181
    :catchall_6
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1176
    :catch_2
    move-exception v10

    .line 1177
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v40, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 1187
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v25    # "pbrIndex":I
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 1188
    .local v24, "pbr":I
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM Email records done "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1189
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1190
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_11

    .line 1191
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 1192
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 1193
    .restart local v30    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 1195
    .end local v30    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-nez v40, :cond_12

    .line 1196
    const-string/jumbo v40, "mEmailFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1197
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    .line 1200
    :cond_12
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move/from16 v1, v24

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3

    .line 1204
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1205
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto/16 :goto_2

    .line 1204
    :catchall_7
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1201
    :catch_3
    move-exception v10

    .line 1202
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v40, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 1209
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v24    # "pbr":I
    :sswitch_8
    const-string/jumbo v40, "Loading USIM Email length done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1210
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1211
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_14

    .line 1212
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [I

    .line 1213
    .restart local v32    # "recordSize":[I
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v40, v0

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_13

    .line 1214
    const/16 v40, 0x2

    aget v40, v32, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    .line 1215
    const/16 v40, 0x0

    aget v40, v32, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 1216
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Email filesize="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "recordSize="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    .end local v32    # "recordSize":[I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1225
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto/16 :goto_2

    .line 1224
    :catchall_8
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1218
    .restart local v32    # "recordSize":[I
    :cond_13
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get wrong EFEMAIL record size format"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1221
    .end local v32    # "recordSize":[I
    :cond_14
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get EF record size failed"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1229
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1230
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    .end local v39    # "userData":[I
    check-cast v39, [I

    .line 1231
    .local v39, "userData":[I
    iget-object v12, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1232
    .local v12, "em":Lcom/android/internal/telephony/uicc/IccIoResult;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM email record done email index:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x0

    aget v41, v39, v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ", adn i:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x1

    aget v41, v39, v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1233
    if-eqz v12, :cond_15

    .line 1234
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v20

    .line 1236
    .restart local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v20, :cond_15

    .line 1237
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM Email record done result is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1238
    iget-object v0, v12, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    .line 1237
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1239
    const/16 v40, 0x0

    aget v40, v39, v40

    const/16 v41, 0x1

    aget v41, v39, v41

    iget-object v0, v12, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move-object/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithEmailByIndex(II[B)V

    .line 1243
    .end local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1244
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "haman, mReadingEmailNum when load done after minus: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ", mNeedNotify:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v40

    if-nez v40, :cond_16

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v40

    if-eqz v40, :cond_16

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1249
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    monitor-exit v41

    .line 1253
    :cond_16
    const-string/jumbo v40, "Loading USIM Email record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1248
    :catchall_9
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1256
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "em":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v39, "userData":[I
    :sswitch_a
    const-string/jumbo v40, "Updating USIM Email records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1257
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1258
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_0

    .line 1259
    const-string/jumbo v40, "Updating USIM Email records successfully!"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1263
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_b
    const-string/jumbo v40, "Updating USIM IAP records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1264
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1265
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_0

    .line 1266
    const-string/jumbo v40, "Updating USIM IAP records successfully!"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1270
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    const-string/jumbo v40, "Updating USIM ANR records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1271
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1272
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1274
    .local v33, "res":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v33, :cond_0

    .line 1275
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v13

    .line 1277
    .local v13, "exception":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v13, :cond_0

    .line 1278
    const-string/jumbo v40, "Updating USIM ANR records successfully!"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1283
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "exception":Lcom/android/internal/telephony/uicc/IccException;
    .end local v33    # "res":Lcom/android/internal/telephony/uicc/IccIoResult;
    :sswitch_d
    const-string/jumbo v40, "Load USIM GRP record done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1284
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1285
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    .end local v39    # "userData":[I
    check-cast v39, [I

    .line 1287
    .local v39, "userData":[I
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    if-eqz v40, :cond_18

    .line 1288
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    .line 1290
    .local v17, "grpIds":[I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v40, v0

    if-lez v40, :cond_18

    .line 1291
    const-string/jumbo v40, "Load USIM GRP record done result is "

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1292
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_a
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v18

    move/from16 v1, v40

    if-ge v0, v1, :cond_17

    .line 1293
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    aget v41, v17, v18

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ","

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1292
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 1295
    :cond_17
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Load USIM GRP record done result is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1296
    const/16 v40, 0x0

    aget v40, v39, v40

    const/16 v41, 0x1

    aget v41, v39, v41

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 1300
    .end local v17    # "grpIds":[I
    .end local v18    # "i":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1301
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "haman, mReadingGrpNum when load done after minus: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ",mNeedNotify:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v40

    if-nez v40, :cond_19

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v40

    if-eqz v40, :cond_19

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1306
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    monitor-exit v41

    .line 1310
    :cond_19
    const-string/jumbo v40, "Loading USIM Grp record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1305
    :catchall_a
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1313
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .local v39, "userData":[I
    :sswitch_e
    const-string/jumbo v40, "Query UPB capability done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1314
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1315
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_1a

    .line 1316
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, [I

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    .line 1319
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1320
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    goto/16 :goto_2

    .line 1319
    :catchall_b
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1324
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    const-string/jumbo v40, "Load UPB GAS done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1325
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1326
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_1b

    .line 1327
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [Ljava/lang/String;

    .line 1328
    .local v16, "gasList":[Ljava/lang/String;
    if-eqz v16, :cond_1b

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v40, v0

    if-lez v40, :cond_1b

    .line 1329
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 1330
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_b
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v18

    move/from16 v1, v40

    if-ge v0, v1, :cond_1b

    .line 1332
    aget-object v40, v16, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->decodeGas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1333
    .local v15, "gas":Ljava/lang/String;
    new-instance v38, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    add-int/lit8 v40, v18, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-direct {v0, v1, v15}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;-><init>(ILjava/lang/String;)V

    .line 1334
    .local v38, "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Load UPB GAS done i is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ", gas is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1330
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 1339
    .end local v15    # "gas":Ljava/lang/String;
    .end local v16    # "gasList":[Ljava/lang/String;
    .end local v18    # "i":I
    .end local v38    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1340
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    goto/16 :goto_2

    .line 1339
    :catchall_c
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1344
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    const-string/jumbo v40, "update UPB GAS done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1345
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1346
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_1c

    .line 1347
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 1359
    :goto_c
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "update UPB GAS done mResult is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1361
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    goto/16 :goto_2

    .line 1360
    :catchall_d
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1349
    :cond_1c
    iget-object v9, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/android/internal/telephony/CommandException;

    .line 1351
    .local v9, "e":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v40

    sget-object v41, Lcom/android/internal/telephony/CommandException$Error;->TEXT_STRING_TOO_LONG:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_1d

    .line 1352
    const/16 v40, -0xa

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_c

    .line 1353
    :cond_1d
    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v40

    sget-object v41, Lcom/android/internal/telephony/CommandException$Error;->SIM_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_1e

    .line 1354
    const/16 v40, -0x14

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_c

    .line 1356
    :cond_1e
    const/16 v40, -0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_c

    .line 1365
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "e":Lcom/android/internal/telephony/CommandException;
    :sswitch_11
    const-string/jumbo v40, "update UPB GRP done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1366
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1367
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_1f

    .line 1368
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 1372
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1373
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    goto/16 :goto_2

    .line 1372
    :catchall_e
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1370
    :cond_1f
    const/16 v40, -0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_d

    .line 1377
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1378
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    .line 1379
    .local v26, "pbrIndexAAS":I
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "EVENT_AAS_LOAD_DONE done pbr "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1380
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_20

    .line 1381
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    .line 1383
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_23

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v35

    .line 1385
    .local v35, "size":I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1386
    .local v22, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_e
    move/from16 v0, v18

    move/from16 v1, v35

    if-ge v0, v1, :cond_22

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1388
    .local v5, "aas":[B
    if-nez v5, :cond_21

    .line 1389
    const/16 v40, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1386
    :goto_f
    add-int/lit8 v18, v18, 0x1

    goto :goto_e

    .line 1392
    :cond_21
    array-length v0, v5

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v41

    move/from16 v1, v40

    invoke-static {v5, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    .line 1393
    .local v6, "aasAlphaTag":Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "AAS["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, "]="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ",byte="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1394
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    .line 1393
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1395
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1397
    .end local v5    # "aas":[B
    .end local v6    # "aasAlphaTag":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    .end local v18    # "i":I
    .end local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v35    # "size":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1401
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    goto/16 :goto_2

    .line 1400
    :catchall_f
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1405
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "pbrIndexAAS":I
    :sswitch_13
    const-string/jumbo v40, "EVENT_AAS_UPDATE_DONE done."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1407
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    goto/16 :goto_2

    .line 1406
    :catchall_10
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1411
    :sswitch_14
    const-string/jumbo v40, "Loading record length done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1412
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1413
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1414
    .local v11, "efTag":I
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_26

    .line 1415
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [I

    .line 1416
    .restart local v32    # "recordSize":[I
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v40, v0

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_25

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v40, v0

    if-nez v40, :cond_24

    .line 1418
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    .line 1420
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    .end local v32    # "recordSize":[I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1429
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_11

    monitor-exit v41

    .line 1431
    const-string/jumbo v40, "EVENT_GET_RECORDS_SIZE_DON end mLock.notify"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1422
    .restart local v32    # "recordSize":[I
    :cond_25
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get wrong record size format"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1425
    .end local v32    # "recordSize":[I
    :cond_26
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get EF record size failed"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1428
    :catchall_11
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1434
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "efTag":I
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1435
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 1436
    .local v27, "pbrIndexExt1":I
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "EVENT_EXT1_LOAD_DONE done pbr "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1437
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_28

    .line 1438
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/util/ArrayList;

    .line 1440
    .local v31, "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v31, :cond_28

    .line 1441
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "EVENT_EXT1_LOAD_DONE done size "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v40, v0

    if-nez v40, :cond_27

    .line 1443
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    .line 1445
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    .end local v31    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1449
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_12

    goto/16 :goto_2

    .line 1448
    :catchall_12
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1453
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "pbrIndexExt1":I
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1454
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v37, v0

    .line 1455
    .local v37, "tag":I
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_2a

    .line 1456
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [I

    .line 1462
    .restart local v32    # "recordSize":[I
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v40, v0

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_29

    .line 1463
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM records size done tag:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, "file size "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1464
    const/16 v41, 0x2

    aget v41, v32, v41

    .line 1463
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1464
    const-string/jumbo v41, ", record size "

    .line 1463
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1464
    const/16 v41, 0x0

    aget v41, v32, v41

    .line 1463
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1465
    packed-switch v37, :pswitch_data_0

    .line 1471
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "unsupported tag when loading record size "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    .end local v32    # "recordSize":[I
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1485
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_13

    goto/16 :goto_2

    .line 1484
    :catchall_13
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1467
    .restart local v32    # "recordSize":[I
    :pswitch_0
    const/16 v40, 0x2

    aget v40, v32, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileSize:I

    .line 1468
    const/16 v40, 0x0

    aget v40, v32, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    goto :goto_11

    .line 1476
    :cond_29
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get wrong EF record size format tag:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ",exception"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1477
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    .line 1476
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1481
    .end local v32    # "recordSize":[I
    :cond_2a
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get EF record size failed"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1489
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v37    # "tag":I
    :sswitch_17
    const-string/jumbo v40, "Loading USIM SNE record done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1490
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1491
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    .end local v39    # "userData":[I
    check-cast v39, [I

    .line 1492
    .local v39, "userData":[I
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1494
    .local v28, "r":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v28, :cond_2b

    .line 1495
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v20

    .line 1497
    .restart local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v20, :cond_2b

    .line 1498
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM SNE record done result is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1499
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    .line 1498
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1500
    const/16 v40, 0x0

    aget v40, v39, v40

    const/16 v41, 0x1

    aget v41, v39, v41

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move-object/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithSneByIndex(II[B)V

    .line 1504
    .end local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1505
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "haman, mReadingSneNum when load done after minus: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ",mNeedNotify:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v40

    if-nez v40, :cond_2c

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v40

    if-eqz v40, :cond_2c

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1510
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_14

    monitor-exit v41

    .line 1514
    :cond_2c
    const-string/jumbo v40, "Loading USIM SNE record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1509
    :catchall_14
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1517
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v28    # "r":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v39, "userData":[I
    :sswitch_18
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v36, v0

    .line 1518
    .local v36, "snePbr":I
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM SNE records done "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1519
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1520
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    const/16 v23, 0x0

    .line 1521
    .local v23, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_2d

    .line 1522
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v23, Ljava/util/ArrayList;

    .line 1523
    .local v23, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 1524
    .restart local v30    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 1526
    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v30    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-nez v40, :cond_2e

    .line 1527
    const-string/jumbo v40, "mSneFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1528
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    .line 1531
    :cond_2e
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v36

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_19} :catch_4

    .line 1535
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1536
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_15

    goto/16 :goto_2

    .line 1535
    :catchall_15
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1532
    :catch_4
    move-exception v10

    .line 1533
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v40, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_12

    .line 1540
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v36    # "snePbr":I
    :sswitch_19
    const-string/jumbo v40, "update UPB SNE done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1541
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1542
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-eqz v40, :cond_2f

    .line 1543
    const-string/jumbo v40, "UsimPhoneBookManager"

    const-string/jumbo v41, "EVENT_SNE_UPDATE_DONE exception"

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-static/range {v40 .. v42}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1545
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1546
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_16

    goto/16 :goto_2

    .line 1545
    :catchall_16
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1553
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1554
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    .end local v39    # "userData":[I
    check-cast v39, [I

    .line 1555
    .local v39, "userData":[I
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1556
    .local v29, "re":Lcom/android/internal/telephony/uicc/IccIoResult;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM Iap record done pbr:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x0

    aget v41, v39, v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ", i:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x1

    aget v41, v39, v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1557
    if-eqz v29, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_30

    .line 1558
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v20

    .line 1560
    .restart local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v20, :cond_30

    .line 1561
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM Iap record done result is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1562
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    .line 1561
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1567
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget v41, v39, v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 1569
    .local v19, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v40

    if-lez v40, :cond_32

    .line 1570
    const/16 v40, 0x1

    aget v40, v39, v40

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v41, v0

    move-object/from16 v0, v19

    move/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1c} :catch_5

    .line 1580
    .end local v19    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_30
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1581
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "haman, mReadingIapNum when load done after minus: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ",mNeedNotify "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v40

    if-nez v40, :cond_0

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v40

    if-eqz v40, :cond_31

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1585
    const-string/jumbo v40, "EVENT_IAP_RECORD_LOAD_DONE before mLock.notify"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1587
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_17

    monitor-exit v41

    .line 1590
    :cond_31
    const-string/jumbo v40, "EVENT_IAP_RECORD_LOAD_DONE end mLock.notify"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1572
    .restart local v19    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_32
    :try_start_1e
    const-string/jumbo v40, "UsimPhoneBookManager"

    const-string/jumbo v41, "Warning: IAP size is 0"

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_1e} :catch_5

    goto/16 :goto_13

    .line 1574
    .end local v19    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_5
    move-exception v10

    .line 1575
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v40, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1586
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :catchall_17
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1594
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v29    # "re":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v39, "userData":[I
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1596
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_33

    .line 1597
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/internal/telephony/EFResponseData;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    .line 1602
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1603
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_18

    goto/16 :goto_2

    .line 1602
    :catchall_18
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1599
    :cond_33
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Select EF file fail"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1008
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_4
        0x7 -> :sswitch_f
        0x8 -> :sswitch_12
        0x9 -> :sswitch_c
        0xa -> :sswitch_11
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_5
        0xe -> :sswitch_3
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_10
        0x12 -> :sswitch_8
        0x13 -> :sswitch_9
        0x15 -> :sswitch_13
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_0
        0x3e8 -> :sswitch_14
        0x3e9 -> :sswitch_15
    .end sparse-switch

    .line 1465
    :pswitch_data_0
    .packed-switch 0xc3
        :pswitch_0
    .end packed-switch
.end method

.method public hasExistGroup(Ljava/lang/String;)I
    .locals 6
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    .line 2367
    const/4 v0, -0x1

    .line 2368
    .local v0, "grpId":I
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager hasExistGroup grpName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    if-nez p1, :cond_0

    .line 2370
    return v0

    .line 2372
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2373
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2374
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 2375
    .local v2, "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2376
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUsimGroupById index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2377
    const-string/jumbo v5, ", name is "

    .line 2376
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v0

    .line 2384
    .end local v1    # "i":I
    .end local v2    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_1
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager hasExistGroup grpId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    return v0

    .line 2373
    .restart local v1    # "i":I
    .restart local v2    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hasSne()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4051
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4052
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 4053
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 4054
    :cond_0
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "hasSne No PBR files"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 4055
    return v4

    :cond_1
    monitor-exit v2

    .line 4058
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4059
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4060
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "hasSne:  true"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    const/4 v1, 0x1

    return v1

    .line 4051
    .end local v0    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 4063
    .restart local v0    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "hasSne:  false"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4064
    return v4
.end method

.method public insertUsimAas(Ljava/lang/String;)I
    .locals 25
    .param p1, "aasName"    # Ljava/lang/String;

    .prologue
    .line 3764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertUsimAas "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3765
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 3766
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 3768
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v17

    .line 3769
    .local v17, "limit":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    .line 3770
    .local v16, "len":I
    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 3771
    const/4 v2, 0x0

    return v2

    .line 3773
    :cond_2
    const/4 v15, -0x1

    .line 3774
    .local v15, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 3775
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v2, :cond_5

    .line 3776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3777
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "insertUsimAas No PBR "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3778
    const/4 v2, -0x1

    monitor-exit v24

    return v2

    .line 3780
    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_4

    .line 3782
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "insertUsimAas No PBR files"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3783
    const/4 v2, -0x1

    monitor-exit v24

    return v2

    .line 3785
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v20

    .line 3786
    .local v20, "numRecs":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3787
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 3788
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 3787
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3792
    .end local v14    # "i":I
    .end local v20    # "numRecs":I
    :cond_5
    const/16 v21, -0x1

    .line 3793
    .local v21, "pbrIndex":I
    const/4 v5, 0x0

    .line 3794
    .local v5, "aasIndex":I
    const/4 v13, 0x0

    .line 3795
    .local v13, "found":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 3797
    .local v12, "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_6
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v13, :cond_8

    .line 3812
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertUsimAas pbrIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",aasIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3813
    if-nez v13, :cond_b

    .line 3815
    const/4 v2, -0x2

    monitor-exit v24

    return v2

    .line 3798
    :cond_8
    :try_start_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 3799
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 3800
    .local v19, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 3802
    .local v22, "size":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_2
    move/from16 v0, v22

    if-ge v14, v0, :cond_6

    .line 3803
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 3804
    .local v23, "value":Ljava/lang/String;
    if-eqz v23, :cond_9

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 3805
    :cond_9
    const/4 v13, 0x1

    .line 3806
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 3807
    add-int/lit8 v5, v14, 0x1

    .line 3808
    goto :goto_1

    .line 3802
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 3817
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v14    # "i":I
    .end local v19    # "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "size":I
    .end local v23    # "value":Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3818
    .local v6, "temp":Ljava/lang/String;
    const/16 v2, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 3819
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3821
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3825
    :goto_3
    :try_start_5
    iget-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 3826
    .local v9, "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertUsimAas UPB_EF_AAS: ar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3827
    if-eqz v9, :cond_c

    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    .line 3828
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 3829
    .local v18, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v18, :cond_d

    .line 3830
    add-int/lit8 v2, v5, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3831
    const-string/jumbo v2, "insertUsimAas update mAasForAnrRec done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_d
    monitor-exit v24

    .line 3833
    return v5

    .line 3822
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 3823
    .local v10, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in insertUsimAas"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 3774
    .end local v5    # "aasIndex":I
    .end local v6    # "temp":Ljava/lang/String;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v13    # "found":Z
    .end local v21    # "pbrIndex":I
    :catchall_0
    move-exception v2

    monitor-exit v24

    throw v2

    .line 3835
    .restart local v5    # "aasIndex":I
    .restart local v6    # "temp":Ljava/lang/String;
    .restart local v8    # "msg":Landroid/os/Message;
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    .restart local v12    # "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .restart local v13    # "found":Z
    .restart local v21    # "pbrIndex":I
    :cond_e
    :try_start_7
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertUsimAas exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3836
    const/4 v2, -0x1

    monitor-exit v24

    return v2
.end method

.method public declared-synchronized insertUsimGroup(Ljava/lang/String;)I
    .locals 11
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1938
    const/4 v3, -0x1

    .line 1939
    .local v3, "index":I
    :try_start_0
    const-string/jumbo v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UsimPhoneBookManager insertUsimGroup grpName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1941
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1942
    :cond_0
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager insertUsimGroup fail "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 1978
    return v3

    .line 1944
    :cond_1
    const/4 v8, 0x0

    .line 1945
    .local v8, "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    const/4 v9, 0x0

    .line 1946
    .local v9, "i":I
    const/4 v9, 0x0

    .end local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 1947
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 1948
    .local v8, "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1949
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v3

    .line 1950
    const-string/jumbo v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UsimPhoneBookManager insertUsimGroup index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    .end local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_2
    if-gez v3, :cond_4

    .line 1955
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager insertUsimGroup fail: gas file is full."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1956
    const/16 v0, -0x14

    monitor-exit p0

    .line 1957
    return v0

    .line 1946
    .restart local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1959
    .end local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_4
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1960
    .local v4, "temp":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1961
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1960
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1963
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1968
    :goto_2
    :try_start_7
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-gez v0, :cond_5

    .line 1969
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "result is negative. insertUsimGroup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return v0

    .line 1964
    :catch_0
    move-exception v7

    .line 1965
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_9
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "Interrupted Exception in insertUsimGroup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 1940
    .end local v4    # "temp":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "i":I
    :catchall_0
    move-exception v0

    :try_start_a
    monitor-exit v10

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1972
    .restart local v4    # "temp":Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_5
    :try_start_b
    invoke-virtual {v8, p1}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 1973
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 340
    return-void
.end method

.method public isAdnAccessible()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4571
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_1

    .line 4572
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4573
    const/16 v3, 0x1b

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4575
    .local v2, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v5, 0x6f3a

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->selectEFFile(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4578
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 4584
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    if-eqz v3, :cond_1

    .line 4585
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    invoke-virtual {v3}, Lcom/android/internal/telephony/EFResponseData;->getFileStatus()I

    move-result v1

    .line 4594
    .local v1, "fs":I
    and-int/lit8 v3, v1, 0x5

    if-lez v3, :cond_0

    .line 4595
    return v7

    .line 4579
    .end local v1    # "fs":I
    :catch_0
    move-exception v0

    .line 4580
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in readType1Ef"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4572
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4597
    .restart local v1    # "fs":I
    .restart local v2    # "response":Landroid/os/Message;
    :cond_0
    return v6

    .line 4601
    .end local v1    # "fs":I
    .end local v2    # "response":Landroid/os/Message;
    :cond_1
    return v7
.end method

.method public isAnrCapacityFree(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I

    .prologue
    const/4 v8, 0x0

    .line 2446
    add-int/lit8 v5, p2, -0x1

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v3, v5, v6

    .line 2447
    .local v3, "pbrRecNum":I
    add-int/lit8 v5, p2, -0x1

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v0, v5, v6

    .line 2450
    .local v0, "anrRecNum":I
    if-eqz p1, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2473
    :cond_0
    const/4 v5, 0x1

    return v5

    .line 2450
    :cond_1
    if-lez p3, :cond_0

    .line 2452
    :try_start_0
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAnrCapacityFree anr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2454
    :cond_2
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "isAnrCapacityFree: mAnrFileSize is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    return v8

    .line 2458
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    mul-int/lit8 v6, v3, 0x3

    add-int/2addr v6, p3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2459
    .local v4, "size":I
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAnrCapacityFree size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    add-int/lit8 v5, v0, 0x1

    if-ge v4, v5, :cond_0

    .line 2462
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAnrCapacityFree: anrRecNum out of size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2463
    return v8

    .line 2468
    .end local v4    # "size":I
    :catch_0
    move-exception v2

    .line 2469
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAnrCapacityFree exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    return v8

    .line 2465
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 2466
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "isAnrCapacityFree Index out of bounds."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    return v8
.end method

.method public isUsimPhbEfAndNeedReset(I)Z
    .locals 8
    .param p1, "fileId"    # I

    .prologue
    const/16 v7, 0xcb

    const/4 v6, 0x0

    .line 4609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsimPhbEfAndNeedReset, fileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4611
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 4612
    :cond_0
    const-string/jumbo v4, "isUsimPhbEfAndNeedReset, No PBR files"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4613
    return v6

    .line 4611
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 4616
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 4617
    .local v3, "numRecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_6

    .line 4618
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4619
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v2, 0xc0

    .local v2, "j":I
    :goto_1
    if-gt v2, v7, :cond_5

    .line 4620
    const/16 v4, 0xc5

    if-eq v2, v4, :cond_2

    const/16 v4, 0xc9

    if-ne v2, v4, :cond_4

    .line 4622
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsimPhbEfAndNeedReset, not reset EF: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4619
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4620
    :cond_4
    if-eq v2, v7, :cond_2

    .line 4624
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 4625
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsimPhbEfAndNeedReset, return true with EF: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4626
    const/4 v4, 0x1

    return v4

    .line 4617
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4631
    .end local v0    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "j":I
    :cond_6
    const-string/jumbo v4, "isUsimPhbEfAndNeedReset, return false."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4632
    return v6
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 253
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 254
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 255
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPhoneBookRecords.size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 256
    const-string/jumbo v7, ",mRefreshCache "

    .line 255
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 256
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 255
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v4, :cond_0

    .line 258
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 259
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    .line 261
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    .line 264
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v5

    .line 265
    return-object v7

    .line 269
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_3

    .line 270
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V

    .line 273
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_4

    .line 274
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V

    .line 277
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_5

    .line 278
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 279
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/16 v6, 0x6f3a

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 281
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/16 v6, 0xca

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 282
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/16 v6, 0xca

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readRecordSize(I)V

    .line 285
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_7

    monitor-exit v5

    return-object v7

    .line 286
    :cond_7
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/16 v6, 0xc0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 287
    .local v0, "adnEf":I
    if-lez v0, :cond_8

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v3

    .line 289
    .local v3, "size":[I
    if-eqz v3, :cond_8

    array-length v4, v3

    const/4 v6, 0x3

    if-ne v4, v6, :cond_8

    .line 290
    const/4 v4, 0x2

    aget v4, v3, v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    .line 293
    .end local v3    # "size":[I
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecordSize()V

    .line 295
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_9

    monitor-exit v5

    return-object v7

    .line 296
    :cond_9
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 299
    .local v2, "numRecs":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v4, v4, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v4, :cond_a

    .line 301
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_b

    .line 302
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readAdnFileAndWaitForUicc: numRecs = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWaitForUICC(I)V

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "i":I
    :cond_a
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 309
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 310
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v5

    return-object v4

    .line 312
    :cond_c
    :try_start_6
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v4, :cond_d

    .line 313
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 315
    :cond_d
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 316
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_e

    .line 317
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 318
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readSneFileAndWait(I)V

    .line 319
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 320
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 322
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readGrpIdsAndWait()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    .line 325
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v4

    .line 253
    .end local v0    # "adnEf":I
    .end local v1    # "i":I
    .end local v2    # "numRecs":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public loadPBRFiles()V
    .locals 2

    .prologue
    .line 3990
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3991
    return-void

    .line 3993
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3996
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v0, :cond_1

    .line 3997
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V

    .line 4000
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v0, :cond_2

    .line 4001
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 3989
    return-void

    .line 3993
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public moveContactFromGroupsToGroups(I[I[I)Z
    .locals 19
    .param p1, "adnIndex"    # I
    .param p2, "fromGrpIdList"    # [I
    .param p3, "toGrpIdList"    # [I

    .prologue
    .line 2200
    const/4 v14, 0x0

    .line 2202
    .local v14, "ret":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v15, :cond_0

    if-gtz p1, :cond_1

    .line 2203
    :cond_0
    const-string/jumbo v15, "UsimPhoneBookManager"

    const-string/jumbo v16, "moveContactFromGroupsToGroups no records or invalid index."

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    const/4 v15, 0x0

    return v15

    .line 2202
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move/from16 v0, p1

    if-gt v0, v15, :cond_0

    .line 2207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2208
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v17, p1, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2209
    .local v13, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v13, :cond_12

    .line 2212
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x7

    aget v5, v15, v17

    .line 2213
    .local v5, "grpCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x7

    aget v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    move-object/from16 v17, v0

    const/16 v18, 0x5

    aget v17, v17, v18

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x5

    aget v9, v15, v17

    .line 2214
    .local v9, "grpMaxCount":I
    :goto_0
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v8

    .line 2216
    .local v8, "grpIds":Ljava/lang/String;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " moveContactFromGroupsToGroups the adn index is "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2217
    const-string/jumbo v18, " original grpIds is "

    .line 2216
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2218
    const-string/jumbo v18, ", fromGrpIdList: "

    .line 2216
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2218
    if-nez p2, :cond_3

    const-string/jumbo v15, "null"

    .line 2216
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2219
    const-string/jumbo v18, ", toGrpIdList: "

    .line 2216
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2219
    if-nez p3, :cond_4

    const-string/jumbo v15, "null"

    .line 2216
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    new-array v6, v5, [I

    .line 2223
    .local v6, "grpIdIntArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v5, :cond_5

    .line 2224
    const/4 v15, 0x0

    aput v15, v6, v10

    .line 2223
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2213
    .end local v6    # "grpIdIntArray":[I
    .end local v8    # "grpIds":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x7

    aget v9, v15, v17

    .restart local v9    # "grpMaxCount":I
    goto :goto_0

    .restart local v8    # "grpIds":Ljava/lang/String;
    :cond_3
    move-object/from16 v15, p2

    .line 2218
    goto :goto_1

    :cond_4
    move-object/from16 v15, p3

    .line 2219
    goto :goto_2

    .line 2228
    .restart local v6    # "grpIdIntArray":[I
    .restart local v10    # "i":I
    :cond_5
    if-eqz v8, :cond_6

    .line 2229
    const-string/jumbo v15, ","

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2230
    .local v7, "grpIdStrArray":[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_6

    .line 2231
    aget-object v15, v7, v10

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    aput v15, v6, v10

    .line 2230
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 2236
    .end local v7    # "grpIdStrArray":[Ljava/lang/String;
    :cond_6
    if-eqz p2, :cond_9

    .line 2237
    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p2

    array-length v15, v0

    if-ge v10, v15, :cond_9

    .line 2238
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_6
    if-ge v11, v9, :cond_8

    .line 2239
    aget v15, v6, v11

    aget v17, p2, v10

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    .line 2240
    const/4 v15, 0x0

    aput v15, v6, v11

    .line 2238
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 2237
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2247
    .end local v11    # "j":I
    :cond_9
    if-eqz p3, :cond_11

    .line 2248
    const/4 v10, 0x0

    :goto_7
    move-object/from16 v0, p3

    array-length v15, v0

    if-ge v10, v15, :cond_11

    .line 2249
    const/4 v2, 0x0

    .line 2250
    .local v2, "bEmpty":Z
    const/4 v3, 0x0

    .line 2253
    .local v3, "bExist":Z
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_8
    if-ge v12, v9, :cond_a

    .line 2254
    aget v15, v6, v12

    aget v17, p3, v10

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    .line 2255
    const/4 v3, 0x1

    .line 2260
    :cond_a
    if-eqz v3, :cond_d

    .line 2261
    const-string/jumbo v15, "UsimPhoneBookManager"

    const-string/jumbo v17, "moveContactFromGroupsToGroups the adn is already in the group."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 2253
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 2266
    :cond_d
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_9
    if-ge v11, v9, :cond_f

    .line 2267
    aget v15, v6, v11

    if-eqz v15, :cond_e

    aget v15, v6, v11

    const/16 v17, 0xff

    move/from16 v0, v17

    if-ne v15, v0, :cond_10

    .line 2268
    :cond_e
    const/4 v2, 0x1

    .line 2269
    aget v15, p3, v10

    aput v15, v6, v11

    .line 2274
    :cond_f
    if-nez v2, :cond_b

    .line 2275
    const-string/jumbo v15, "UsimPhoneBookManager"

    const-string/jumbo v17, "moveContactFromGroupsToGroups no empty to add."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2276
    const/4 v15, 0x0

    monitor-exit v16

    return v15

    .line 2266
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 2281
    .end local v2    # "bEmpty":Z
    .end local v3    # "bExist":Z
    .end local v11    # "j":I
    .end local v12    # "k":I
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2282
    const/16 v17, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 2281
    move/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v15, v0, v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2284
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2289
    :goto_a
    :try_start_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v15, :cond_12

    .line 2290
    const/4 v14, 0x1

    .line 2291
    add-int/lit8 v15, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v15, v1, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2292
    const-string/jumbo v15, "UsimPhoneBookManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " updateContactToGroups the adn index is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 2293
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v18

    .line 2292
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v5    # "grpCount":I
    .end local v6    # "grpIdIntArray":[I
    .end local v8    # "grpIds":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    :cond_12
    monitor-exit v16

    .line 2299
    return v14

    .line 2285
    .restart local v5    # "grpCount":I
    .restart local v6    # "grpIdIntArray":[I
    .restart local v8    # "grpIds":Ljava/lang/String;
    .restart local v9    # "grpMaxCount":I
    .restart local v10    # "i":I
    :catch_0
    move-exception v4

    .line 2286
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v15, "UsimPhoneBookManager"

    const-string/jumbo v17, "Interrupted Exception in updateContactToGroups"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    .line 2207
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "grpCount":I
    .end local v6    # "grpIdIntArray":[I
    .end local v8    # "grpIds":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15
.end method

.method parseType1EmailFile(I)V
    .locals 8
    .param p1, "numRecs"    # I

    .prologue
    .line 895
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 896
    const/4 v3, 0x0

    .line 898
    .local v3, "emailRec":[B
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 899
    return-void

    .line 902
    :cond_0
    const/4 v4, 0x0

    .end local v3    # "emailRec":[B
    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_2

    .line 904
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    .local v3, "emailRec":[B
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-byte v0, v3, v6

    .line 911
    .local v0, "adnRecNum":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    .line 902
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 905
    .end local v0    # "adnRecNum":I
    .end local v3    # "emailRec":[B
    :catch_0
    move-exception v1

    .line 906
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v6, "UsimPhoneBookManager"

    const-string/jumbo v7, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    return-void

    .line 915
    .restart local v0    # "adnRecNum":I
    .restart local v3    # "emailRec":[B
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .line 917
    .local v2, "email":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 922
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 923
    .local v5, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_4

    .line 924
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 926
    .restart local v5    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public readEFLinearRecordSize(I)[I
    .locals 6
    .param p1, "fileId"    # I

    .prologue
    .line 4466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readEFLinearRecordSize fileid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4467
    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4468
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 4469
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4470
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4472
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4476
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 4477
    :goto_1
    if-eqz v2, :cond_0

    .line 4478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readEFLinearRecordSize fileid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ",len:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ",total:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4479
    const/4 v5, 0x1

    aget v5, v2, v5

    .line 4478
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4479
    const-string/jumbo v5, ",count:"

    .line 4478
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4479
    const/4 v5, 0x2

    aget v5, v2, v5

    .line 4478
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v4

    .line 4482
    return-object v2

    .line 4473
    :catch_0
    move-exception v0

    .line 4474
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in readRecordSize"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4469
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4476
    :cond_1
    const/4 v2, 0x0

    .local v2, "recordSize":[I
    goto :goto_1
.end method

.method readRecordSize(I)V
    .locals 4
    .param p1, "fileId"    # I

    .prologue
    .line 952
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 953
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    .line 951
    return-void

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in readRecordSize"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 952
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public declared-synchronized removeContactFromGroup(II)Z
    .locals 15
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    monitor-enter p0

    .line 2093
    const/4 v10, 0x0

    .line 2094
    .local v10, "ret":Z
    :try_start_0
    const-string/jumbo v11, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "UsimPhoneBookManager removeContactFromGroup adnIndex is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2095
    const-string/jumbo v13, " to grp "

    .line 2094
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    if-gtz p1, :cond_1

    .line 2097
    :cond_0
    const-string/jumbo v11, "UsimPhoneBookManager"

    const-string/jumbo v12, "UsimPhoneBookManager removeContactFromGroup no records or invalid index."

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2098
    const/4 v11, 0x0

    monitor-exit p0

    return v11

    .line 2096
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v0, p1

    if-gt v0, v11, :cond_0

    .line 2100
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2103
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v13, p1, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2110
    .local v9, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v9, :cond_5

    .line 2111
    :try_start_3
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v6

    .line 2112
    .local v6, "grpList":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 2113
    const-string/jumbo v11, "UsimPhoneBookManager"

    const-string/jumbo v13, " the adn is not in any group. "

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2114
    const/4 v11, 0x0

    monitor-exit p0

    return v11

    .line 2104
    .end local v6    # "grpList":Ljava/lang/String;
    .end local v9    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v2

    .line 2105
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_5
    const-string/jumbo v11, "UsimPhoneBookManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "UsimPhoneBookManager removeContactFromGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2106
    iget-object v14, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2105
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2106
    const-string/jumbo v14, "index is "

    .line 2105
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2106
    add-int/lit8 v14, p1, -0x1

    .line 2105
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2107
    const/4 v11, 0x0

    monitor-exit p0

    return v11

    .line 2116
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v6    # "grpList":Ljava/lang/String;
    .restart local v9    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    :try_start_7
    const-string/jumbo v11, ","

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2117
    .local v5, "grpIds":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2118
    .local v1, "bExist":Z
    const/4 v8, -0x1

    .line 2119
    .local v8, "nOrder":I
    array-length v11, v5

    new-array v4, v11, [I

    .line 2120
    .local v4, "grpIdArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v11, v5

    if-ge v7, v11, :cond_4

    .line 2121
    aget-object v11, v5, v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v4, v7

    .line 2122
    aget v11, v4, v7

    move/from16 v0, p2

    if-ne v0, v11, :cond_3

    .line 2123
    const/4 v1, 0x1

    .line 2124
    move v8, v7

    .line 2125
    const-string/jumbo v11, "UsimPhoneBookManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " removeContactFromGroup the adn is in the group. i is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2129
    :cond_4
    if-eqz v1, :cond_6

    if-ltz v8, :cond_6

    .line 2130
    const/4 v11, 0x0

    aput v11, v4, v8

    .line 2131
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2132
    const/16 v13, 0xa

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 2131
    move/from16 v0, p1

    invoke-interface {v11, v0, v4, v13}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2134
    :try_start_8
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2138
    :goto_1
    :try_start_9
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v11, :cond_5

    .line 2139
    const/4 v10, 0x1

    .line 2140
    add-int/lit8 v11, p1, -0x1

    move/from16 v0, p1

    invoke-direct {p0, v11, v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2141
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v1    # "bExist":Z
    .end local v4    # "grpIdArray":[I
    .end local v5    # "grpIds":[Ljava/lang/String;
    .end local v6    # "grpList":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "nOrder":I
    :cond_5
    :goto_2
    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit p0

    .line 2148
    return v10

    .line 2135
    .restart local v1    # "bExist":Z
    .restart local v4    # "grpIdArray":[I
    .restart local v5    # "grpIds":[Ljava/lang/String;
    .restart local v6    # "grpList":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "nOrder":I
    :catch_1
    move-exception v3

    .line 2136
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_b
    const-string/jumbo v11, "UsimPhoneBookManager"

    const-string/jumbo v13, "Interrupted Exception in removeContactFromGroup"

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 2100
    .end local v1    # "bExist":Z
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "grpIdArray":[I
    .end local v5    # "grpIds":[Ljava/lang/String;
    .end local v6    # "grpList":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "nOrder":I
    .end local v9    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v11

    :try_start_c
    monitor-exit v12

    throw v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v11

    monitor-exit p0

    throw v11

    .line 2144
    .restart local v1    # "bExist":Z
    .restart local v4    # "grpIdArray":[I
    .restart local v5    # "grpIds":[Ljava/lang/String;
    .restart local v6    # "grpList":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "nOrder":I
    .restart local v9    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_6
    :try_start_d
    const-string/jumbo v11, "UsimPhoneBookManager"

    const-string/jumbo v13, " removeContactFromGroup the adn is not in the group. "

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2
.end method

.method public removeContactGroup(I)Z
    .locals 14
    .param p1, "adnIndex"    # I

    .prologue
    .line 2308
    const/4 v8, 0x0

    .line 2309
    .local v8, "ret":Z
    const-string/jumbo v10, "UsimPhoneBookManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "UsimPhoneBookManager removeContactsGroup adnIndex is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2311
    :cond_0
    return v8

    .line 2313
    :cond_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2316
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v12, p1, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2323
    .local v7, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-nez v7, :cond_2

    .line 2308
    const/4 v10, 0x0

    monitor-exit v11

    .line 2324
    return v10

    .line 2317
    .end local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v0

    .line 2318
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1
    const-string/jumbo v10, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "UsimPhoneBookManager removeContactGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2319
    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2318
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2319
    const-string/jumbo v13, "index is "

    .line 2318
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2319
    add-int/lit8 v13, p1, -0x1

    .line 2318
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2320
    const/4 v10, 0x0

    monitor-exit v11

    return v10

    .line 2326
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    :try_start_2
    const-string/jumbo v10, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "UsimPhoneBookManager removeContactsGroup rec is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 2328
    .local v4, "grpList":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 2308
    const/4 v10, 0x0

    monitor-exit v11

    .line 2329
    return v10

    .line 2331
    :cond_3
    :try_start_3
    const-string/jumbo v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2332
    .local v3, "grpIds":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2333
    .local v5, "hasGroup":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v10, v3

    if-ge v6, v10, :cond_4

    .line 2334
    aget-object v10, v3, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2335
    .local v9, "value":I
    if-lez v9, :cond_5

    const/16 v10, 0xff

    if-ge v9, v10, :cond_5

    .line 2336
    const/4 v5, 0x1

    .line 2340
    .end local v9    # "value":I
    :cond_4
    if-eqz v5, :cond_7

    .line 2341
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v12, 0x0

    new-array v12, v12, [I

    .line 2342
    const/16 v13, 0xa

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 2341
    invoke-interface {v10, p1, v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2345
    :try_start_4
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2350
    :goto_1
    :try_start_5
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v10, :cond_7

    .line 2351
    const/4 v8, 0x1

    .line 2352
    array-length v10, v3

    new-array v2, v10, [I

    .line 2353
    .local v2, "grpIdArray":[I
    const/4 v6, 0x0

    :goto_2
    array-length v10, v3

    if-ge v6, v10, :cond_6

    .line 2354
    const/4 v10, 0x0

    aput v10, v2, v6

    .line 2353
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2333
    .end local v2    # "grpIdArray":[I
    .restart local v9    # "value":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2346
    .end local v9    # "value":I
    :catch_1
    move-exception v1

    .line 2347
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v10, "UsimPhoneBookManager"

    const-string/jumbo v12, "Interrupted Exception in removeContactGroup"

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2313
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "grpIds":[Ljava/lang/String;
    .end local v4    # "grpList":Ljava/lang/String;
    .end local v5    # "hasGroup":Z
    .end local v6    # "i":I
    .end local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 2356
    .restart local v2    # "grpIdArray":[I
    .restart local v3    # "grpIds":[Ljava/lang/String;
    .restart local v4    # "grpList":Ljava/lang/String;
    .restart local v5    # "hasGroup":Z
    .restart local v6    # "i":I
    .restart local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_6
    add-int/lit8 v10, p1, -0x1

    :try_start_6
    invoke-direct {p0, v10, p1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2357
    const-string/jumbo v10, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " removeContactGroup the adn index is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2358
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v13

    .line 2357
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v2    # "grpIdArray":[I
    :cond_7
    monitor-exit v11

    .line 2362
    return v8
.end method

.method public removeUsimAasById(II)Z
    .locals 16
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    .line 3699
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removeUsimAasById by id "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v14, ",pbrIndex "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3700
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v5, :cond_3

    .line 3701
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3702
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v14, "No PBR files"

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    const/4 v5, 0x1

    return v5

    .line 3705
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 3706
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3707
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 3708
    const/4 v5, 0x1

    monitor-exit v14

    return v5

    .line 3710
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v13

    .line 3712
    .local v13, "numRecs":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3713
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v13, :cond_2

    .line 3714
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3713
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v14

    .line 3718
    .end local v10    # "i":I
    .end local v13    # "numRecs":I
    :cond_3
    move/from16 v3, p1

    .line 3719
    .local v3, "aasIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 3720
    .local v9, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v9, :cond_4

    const/16 v5, 0xc7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3724
    const/16 v5, 0xc7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3725
    .local v2, "efid":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removeUsimAasById result,efid:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3727
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3728
    .local v1, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_9

    .line 3730
    const/16 v5, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 3731
    .local v6, "msg":Landroid/os/Message;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v11

    .line 3732
    .local v11, "len":I
    new-array v4, v11, [B

    .line 3733
    .local v4, "aasString":[B
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    if-ge v10, v11, :cond_5

    .line 3734
    const/4 v5, -0x1

    aput-byte v5, v4, v10

    .line 3733
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3705
    .end local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v2    # "efid":I
    .end local v3    # "aasIndex":I
    .end local v4    # "aasString":[B
    .end local v6    # "msg":Landroid/os/Message;
    .end local v9    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v11    # "len":I
    :catchall_0
    move-exception v5

    monitor-exit v14

    throw v5

    .line 3721
    .restart local v3    # "aasIndex":I
    .restart local v9    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v14, "removeUsimAasById-PBR have no AAS EF record"

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    const/4 v5, 0x0

    return v5

    .line 3736
    .restart local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v2    # "efid":I
    .restart local v4    # "aasString":[B
    .restart local v6    # "msg":Landroid/os/Message;
    .restart local v10    # "i":I
    .restart local v11    # "len":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 3737
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3740
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit v14

    .line 3745
    iget-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 3746
    .local v7, "ar":Landroid/os/AsyncResult;
    if-eqz v7, :cond_6

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_8

    .line 3747
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 3748
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_7

    .line 3749
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "remove aas done "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3750
    add-int/lit8 v5, v3, -0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v5, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3752
    :cond_7
    const/4 v5, 0x1

    return v5

    .line 3741
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 3742
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v15, "Interrupted Exception in removesimAasById"

    invoke-static {v5, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 3736
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v5

    monitor-exit v14

    throw v5

    .line 3754
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    :cond_8
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removeUsimAasById exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    const/4 v5, 0x0

    return v5

    .line 3758
    .end local v4    # "aasString":[B
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "i":I
    .end local v11    # "len":I
    :cond_9
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v14, "removeUsimAasById-IccFileHandler is null"

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    const/4 v5, 0x0

    return v5
.end method

.method public declared-synchronized removeUsimGroupById(I)Z
    .locals 8
    .param p1, "nGasId"    # I

    .prologue
    monitor-enter p0

    .line 1866
    const/4 v1, 0x0

    .line 1867
    .local v1, "ret":Z
    :try_start_0
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager removeUsimGroupById nGasId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1870
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le p1, v3, :cond_2

    .line 1871
    :cond_0
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "UsimPhoneBookManager removeUsimGroupById fail "

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 1894
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager removeUsimGroupById result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 1895
    return v1

    .line 1873
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 1874
    .local v2, "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " removeUsimGroupById index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1876
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1877
    const/16 v5, 0x11

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1876
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1879
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1887
    :goto_1
    :try_start_5
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v3, :cond_1

    .line 1888
    const/4 v1, 0x1

    .line 1889
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 1890
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1868
    .end local v2    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v4

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1880
    .restart local v2    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :catch_0
    move-exception v0

    .line 1881
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in removeUsimGroupById"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1884
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "UsimPhoneBookManager removeUsimGroupById fail: this gas doesn\'t exist "

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 241
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    .line 242
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 243
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 244
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 245
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 247
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFileRecords:Ljava/util/ArrayList;

    .line 248
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager reset finished. "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public updateAdnAas(II)Z
    .locals 9
    .param p1, "adnIndex"    # I
    .param p2, "aasIndex"    # I

    .prologue
    .line 3931
    add-int/lit8 v6, p1, -0x1

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v4, v6, v7

    .line 3932
    .local v4, "pbrRecNum":I
    add-int/lit8 v6, p1, -0x1

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v3, v6, v7

    .line 3936
    .local v3, "index":I
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3943
    .local v5, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAasIndex(I)V

    .line 3945
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v2, v6, :cond_0

    .line 3946
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 3947
    .local v0, "anr":Ljava/lang/String;
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;II)V

    .line 3945
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3937
    .end local v0    # "anr":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v1

    .line 3938
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UsimPhoneBookManager updateADNAAS: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3939
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 3938
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3939
    const-string/jumbo v8, "index is "

    .line 3938
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3939
    add-int/lit8 v8, p1, -0x1

    .line 3938
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    const/4 v6, 0x0

    return v6

    .line 3950
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "i":I
    .restart local v5    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_0
    const/4 v6, 0x1

    return v6
.end method

.method public updateAnrByAdnIndex(Ljava/lang/String;II)V
    .locals 18
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I

    .prologue
    .line 2479
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v14, v3, v5

    .line 2480
    .local v14, "pbrRecNum":I
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v10, v3, v5

    .line 2481
    .local v10, "anrRecNum":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 2482
    return-void

    .line 2484
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 2486
    .local v13, "fileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2487
    :cond_1
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "UsimPhoneBookManager updateAnrByAdnIndex: No anr tag in pbr record 0"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    return-void

    .line 2490
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2491
    :cond_3
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "UsimPhoneBookManager updateAnrByAdnIndex: mPhoneBookRecords is empty"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    return-void

    .line 2494
    :cond_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p3

    if-gt v3, v0, :cond_5

    .line 2495
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAnrByAdnIndex anr file size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    return-void

    .line 2499
    :cond_5
    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2500
    .local v4, "efid":I
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UsimPhoneBookManager updateAnrByAdnIndex recNum: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " EFANR id is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    const/4 v12, 0x0

    .line 2503
    .local v12, "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "record$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 2504
    .local v16, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v3, v4, :cond_6

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v3, v14, :cond_6

    .line 2505
    move-object/from16 v12, v16

    .line 2506
    .local v12, "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move/from16 v0, p3

    iput v0, v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    .line 2507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAnrByAdnIndex anrIndex:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2512
    .end local v12    # "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v16    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_7
    if-nez v12, :cond_8

    .line 2513
    const-string/jumbo v3, "updateAnrByAdnIndex no efrecord "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2514
    return-void

    .line 2517
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAnrByAdnIndex efrecord "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2518
    iget v3, v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-ne v3, v5, :cond_9

    .line 2519
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateType2Anr(Ljava/lang/String;ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 2520
    return-void

    .line 2525
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2532
    .local v15, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v15}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAasIndex()I

    move-result v9

    .line 2533
    .local v9, "aas":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;II)[B

    move-result-object v6

    .line 2534
    .local v6, "data":[B
    if-eqz v6, :cond_a

    .line 2535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v5, v10, 0x1

    .line 2536
    const/16 v7, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 2535
    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 2476
    :cond_a
    return-void

    .line 2526
    .end local v6    # "data":[B
    .end local v9    # "aas":I
    .end local v15    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v11

    .line 2527
    .local v11, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UsimPhoneBookManager updateAnrByAdnIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2528
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2527
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2528
    const-string/jumbo v7, "index is "

    .line 2527
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2528
    add-int/lit8 v7, p2, -0x1

    .line 2527
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    return-void
.end method

.method public updateContactToGroups(I[I)Z
    .locals 11
    .param p1, "adnIndex"    # I
    .param p2, "grpIdList"    # [I

    .prologue
    const/4 v7, 0x0

    .line 2152
    const/4 v5, 0x0

    .line 2154
    .local v5, "ret":Z
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    if-gtz p1, :cond_1

    .line 2155
    :cond_0
    const-string/jumbo v6, "UsimPhoneBookManager"

    const-string/jumbo v8, "UsimPhoneBookManager updateContactToGroups no records or invalid index."

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    return v7

    .line 2154
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt p1, v6, :cond_0

    if-eqz p2, :cond_0

    .line 2159
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UsimPhoneBookManager updateContactToGroups grpIdList is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2160
    const-string/jumbo v9, " to grp list count "

    .line 2159
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2160
    array-length v9, p2

    .line 2159
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2163
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2164
    .local v4, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v4, :cond_5

    .line 2165
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " addContactToGroup the adn index is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2166
    const-string/jumbo v10, " old grpList is "

    .line 2165
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2166
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v10

    .line 2165
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v9, 0x7

    aget v1, v6, v9

    .line 2168
    .local v1, "grpCount":I
    array-length v6, p2

    if-le v6, v1, :cond_2

    .line 2169
    const-string/jumbo v6, "UsimPhoneBookManager"

    const-string/jumbo v9, "updateContactToGroups length of grpIdList > grpCount."

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 2170
    return v7

    .line 2173
    :cond_2
    :try_start_1
    new-array v2, v1, [I

    .line 2174
    .local v2, "grpIdArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 2175
    array-length v6, p2

    if-ge v3, v6, :cond_3

    aget v6, p2, v3

    :goto_1
    aput v6, v2, v3

    .line 2176
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateContactToGroups i:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", grpIdArray["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v2, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v6, v7

    .line 2175
    goto :goto_1

    .line 2179
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2180
    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2179
    invoke-interface {v6, p1, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2182
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2186
    :goto_2
    :try_start_3
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v6, :cond_5

    .line 2187
    const/4 v5, 0x1

    .line 2188
    add-int/lit8 v6, p1, -0x1

    invoke-direct {p0, v6, p1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2189
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " updateContactToGroups the adn index is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2190
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v9

    .line 2189
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "grpCount":I
    .end local v2    # "grpIdArray":[I
    .end local v3    # "i":I
    :cond_5
    monitor-exit v8

    .line 2195
    return v5

    .line 2183
    .restart local v1    # "grpCount":I
    .restart local v2    # "grpIdArray":[I
    .restart local v3    # "i":I
    :catch_0
    move-exception v0

    .line 2184
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v6, "UsimPhoneBookManager"

    const-string/jumbo v7, "Interrupted Exception in updateContactToGroups"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 2162
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "grpCount":I
    .end local v2    # "grpIdArray":[I
    .end local v3    # "i":I
    .end local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6
.end method

.method public updateEmailsByAdnIndex([Ljava/lang/String;I)I
    .locals 28
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "adnIndex"    # I

    .prologue
    .line 2665
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v5, v3, v4

    .line 2666
    .local v5, "pbrRecNum":I
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v24, v3, v4

    .line 2668
    .local v24, "nIapRecNum":I
    const/16 v25, -0x3

    .line 2669
    .local v25, "recNum":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 2670
    const/4 v3, 0x0

    return v3

    .line 2672
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map;

    .line 2673
    .local v22, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v22, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2674
    :cond_1
    const/4 v3, 0x0

    return v3

    .line 2676
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2677
    :cond_3
    const/4 v3, 0x0

    return v3

    .line 2679
    :cond_4
    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2680
    const-string/jumbo v3, "UsimPhoneBookManager"

    .line 2681
    const-string/jumbo v4, "UsimPhoneBookManager updateEmailsByAdnIndex: No email tag in pbr record 0"

    .line 2680
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    const/4 v3, 0x0

    return v3

    .line 2685
    :cond_5
    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2686
    .local v9, "efid":I
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UsimPhoneBookManager updateEmailsByAdnIndex: pbrrecNum is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2687
    const-string/jumbo v6, " EFEMAIL id is "

    .line 2686
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-eqz v3, :cond_c

    .line 2706
    const/4 v7, 0x0

    .line 2708
    .local v7, "iapRec":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 2709
    .local v23, "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 2710
    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "iapRec":[B
    check-cast v7, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2720
    .local v7, "iapRec":[B
    add-int/lit8 v6, v24, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getRecNum([Ljava/lang/String;II[BI)I

    move-result v25

    .line 2722
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UsimPhoneBookManager updateEmailsByAdnIndex: Email recNum is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    const/4 v3, -0x2

    move/from16 v0, v25

    if-ne v3, v0, :cond_7

    .line 2724
    const/4 v3, -0x1

    return v3

    .line 2712
    .local v7, "iapRec":[B
    :cond_6
    :try_start_1
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "Warning: IAP size is 0"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2713
    const/4 v3, 0x0

    return v3

    .line 2715
    .end local v7    # "iapRec":[B
    .end local v23    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_0
    move-exception v18

    .line 2716
    .local v18, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "Index out of bounds."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2717
    const/4 v3, 0x0

    return v3

    .line 2727
    .end local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    .local v7, "iapRec":[B
    .restart local v23    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_7
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEmailsByAdnIndex: found Email recNum is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v0, v25

    int-to-byte v4, v0

    aput-byte v4, v7, v3

    .line 2730
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2731
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2738
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v10, v24, 0x1

    .line 2739
    const/16 v3, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 2738
    const/4 v12, 0x0

    move-object v11, v7

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 2742
    const/16 v3, 0xff

    move/from16 v0, v25

    if-eq v0, v3, :cond_b

    const/4 v3, -0x1

    move/from16 v0, v25

    if-eq v0, v3, :cond_b

    .line 2743
    const/16 v19, 0x0

    .line 2744
    .local v19, "eMailAd":Ljava/lang/String;
    if-eqz p1, :cond_b

    .line 2746
    const/4 v3, 0x0

    :try_start_2
    aget-object v19, p1, v3
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2750
    .end local v19    # "eMailAd":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v3, :cond_9

    .line 2751
    const/4 v3, 0x0

    return v3

    .line 2734
    :cond_8
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "updateEmailsByAdnIndex Error: No IAP file!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    const/4 v3, 0x0

    return v3

    .line 2747
    .restart local v19    # "eMailAd":Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 2748
    .restart local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "Error: updateEmailsByAdnIndex no email address, continuing"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2753
    .end local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v19    # "eMailAd":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v11

    .line 2755
    .local v11, "eMailRecData":[B
    if-nez v11, :cond_a

    .line 2756
    const/4 v3, -0x2

    return v3

    .line 2760
    :cond_a
    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2761
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 2762
    const/16 v3, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    const/4 v12, 0x0

    move/from16 v10, v25

    .line 2761
    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 2795
    .end local v7    # "iapRec":[B
    .end local v11    # "eMailRecData":[B
    .end local v23    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_b
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 2767
    :cond_c
    const/16 v20, 0x0

    .line 2768
    .local v20, "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "record$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 2769
    .local v26, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v3, v9, :cond_d

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v3, v5, :cond_d

    .line 2770
    move-object/from16 v20, v26

    .line 2774
    .end local v20    # "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v26    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateEmailsByAdnIndex record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2775
    if-nez v20, :cond_f

    .line 2776
    const/4 v3, 0x0

    return v3

    .line 2778
    :cond_f
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_10

    .line 2779
    const/4 v3, 0x0

    return v3

    .line 2783
    :cond_10
    if-eqz p1, :cond_11

    move-object/from16 v0, p1

    array-length v3, v0

    if-gtz v3, :cond_12

    :cond_11
    const/16 v21, 0x0

    .line 2784
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v3, :cond_13

    .line 2785
    const/4 v3, 0x0

    return v3

    .line 2783
    :cond_12
    const/4 v3, 0x0

    aget-object v21, p1, v3

    .local v21, "email":Ljava/lang/String;
    goto :goto_2

    .line 2787
    .end local v21    # "email":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v15

    .line 2788
    .local v15, "data":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateEmailsByAdnIndex build type1 email record:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2789
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 2788
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2790
    if-eqz v15, :cond_b

    .line 2791
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v14, v24, 0x1

    .line 2792
    const/16 v3, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 2791
    const/16 v16, 0x0

    move v13, v9

    invoke-virtual/range {v12 .. v17}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1
.end method

.method public updateSneByAdnIndex(Ljava/lang/String;I)V
    .locals 17
    .param p1, "sne"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I

    .prologue
    .line 4125
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UsimPhoneBookManager updateSneByAdnIndex sne is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",adnIndex "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4127
    add-int/lit8 v1, p2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v12, v1, v2

    .line 4128
    .local v12, "pbrRecNum":I
    add-int/lit8 v1, p2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v11, v1, v2

    .line 4129
    .local v11, "nIapRecNum":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 4130
    :cond_0
    return-void

    .line 4132
    :cond_1
    const/16 v1, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4134
    .local v7, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 4135
    .local v10, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v10, :cond_3

    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4140
    :cond_2
    return-void

    .line 4136
    :cond_3
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "updateSneByAdnIndex: No SNE tag in pbr record 0"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    return-void

    .line 4142
    :cond_4
    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 4143
    .local v9, "efid":I
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSneByAdnIndex: EFSNE id is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    const/4 v3, 0x0

    .line 4145
    .local v3, "efIndex":I
    const/4 v15, 0x0

    .line 4146
    .local v15, "sneEf":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "record$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4147
    .local v13, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v1, v13, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v1, v12, :cond_5

    .line 4148
    add-int/lit8 v3, v3, 0x1

    .line 4149
    iget v1, v13, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v1, v9, :cond_5

    .line 4150
    move-object v15, v13

    .line 4155
    .end local v13    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v15    # "sneEf":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_6
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSneByAdnIndex: efIndex is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 4157
    if-eqz p1, :cond_7

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 4159
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    move/from16 v0, p2

    invoke-interface {v1, v2, v3, v0, v7}, Lcom/android/internal/telephony/CommandsInterface;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4166
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4170
    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSneByAdnIndex update IAP? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4171
    if-eqz v15, :cond_8

    iget v1, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v2, 0xa9

    if-ne v1, v2, :cond_8

    .line 4172
    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    monitor-exit v16

    .line 4123
    return-void

    .line 4161
    :cond_9
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4163
    .local v5, "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    const/4 v6, 0x0

    move/from16 v4, p2

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4156
    .end local v5    # "temp":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v16

    throw v1

    .line 4167
    :catch_0
    move-exception v8

    .line 4168
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "Interrupted Exception in updateSneByAdnIndex"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateUsimAas(IILjava/lang/String;)Z
    .locals 20
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "aasName"    # Ljava/lang/String;

    .prologue
    .line 3843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimAas index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",pbrIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",aasName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v2, :cond_3

    .line 3845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3846
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "updateUsimAas No PBR "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    const/4 v2, 0x0

    return v2

    .line 3849
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3850
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 3852
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v4, "updateUsimAas No PBR files"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3853
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    .line 3855
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v17

    .line 3856
    .local v17, "numRecs":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3857
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    .line 3858
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3857
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v3

    .line 3862
    .end local v12    # "i":I
    .end local v17    # "numRecs":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimAas not found pbr index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3864
    const/4 v2, 0x0

    return v2

    .line 3849
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 3866
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 3867
    .local v16, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v16, :cond_5

    .line 3868
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no aas for pbr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    const/4 v2, 0x0

    return v2

    .line 3871
    :cond_5
    if-lez p1, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-le v0, v2, :cond_7

    .line 3872
    :cond_6
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateUsimAas not found aas index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    const/4 v2, 0x0

    return v2

    .line 3875
    :cond_7
    add-int/lit8 v2, p1, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3876
    .local v9, "aas":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimAas old aas "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3880
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 3882
    :cond_8
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeUsimAasById(II)Z

    move-result v2

    return v2

    .line 3885
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v14

    .line 3886
    .local v14, "limit":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    .line 3887
    .local v13, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimAas aas limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3888
    if-le v13, v14, :cond_a

    .line 3889
    const/4 v2, 0x0

    return v2

    .line 3891
    :cond_a
    const/16 v18, 0x0

    .line 3892
    .local v18, "offset":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v12, v0, :cond_c

    .line 3893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 3894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v18, v18, v2

    .line 3892
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 3897
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimAas offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3898
    add-int v5, p1, v18

    .line 3899
    .local v5, "aasIndex":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3900
    .local v6, "temp":Ljava/lang/String;
    const/16 v2, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 3901
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3902
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3904
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit v19

    .line 3909
    iget-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 3910
    .local v10, "ar":Landroid/os/AsyncResult;
    if-eqz v10, :cond_d

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    .line 3911
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 3912
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v15, :cond_e

    .line 3913
    add-int/lit8 v2, p1, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3914
    const-string/jumbo v2, "updateUsimAas update mAasForAnrRec done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3916
    :cond_e
    const/4 v2, 0x1

    return v2

    .line 3905
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    .line 3906
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in updateUsimAas"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 3901
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v19

    throw v2

    .line 3918
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    :cond_f
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateUsimAas exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    const/4 v2, 0x0

    return v2
.end method

.method public declared-synchronized updateUsimGroup(ILjava/lang/String;)I
    .locals 11
    .param p1, "nGasId"    # I
    .param p2, "grpName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1982
    const/4 v8, -0x1

    .line 1983
    .local v8, "ret":I
    :try_start_0
    const-string/jumbo v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UsimPhoneBookManager updateUsimGroup nGasId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1986
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 1988
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 1989
    :cond_0
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager updateUsimGroup fail "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v0, :cond_4

    .line 2001
    move v8, p1

    .line 2002
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 2003
    .local v9, "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v9, :cond_3

    .line 2004
    const-string/jumbo v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUsimGroup index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    invoke-virtual {v9, p2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->setAlphaTag(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v9    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :goto_1
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 2013
    return v8

    .line 1990
    :cond_2
    if-eqz p2, :cond_1

    .line 1991
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1992
    .local v4, "temp":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1993
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1992
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1995
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1996
    :catch_0
    move-exception v7

    .line 1997
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "Interrupted Exception in updateUsimGroup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1985
    .end local v4    # "temp":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v10

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2007
    .restart local v9    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_3
    :try_start_7
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "updateUsimGroup the entry doesn\'t exist "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2010
    .end local v9    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_4
    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public updateUsimPhonebookRecordsList(ILcom/android/internal/telephony/uicc/AdnRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;

    .prologue
    .line 2868
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimPhonebookRecordsList update the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "th record."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 2870
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2871
    .local v0, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2872
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 2874
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2867
    .end local v0    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    return-void
.end method
