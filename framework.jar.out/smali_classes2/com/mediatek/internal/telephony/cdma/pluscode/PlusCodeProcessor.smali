.class public Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;
.super Ljava/lang/Object;
.source "PlusCodeProcessor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PlusCodeProcessor"

.field private static final PLUS_CODE_IMPL_CLASS_NAME:Ljava/lang/String; = "com.mediatek.internal.telephony.cdma.pluscode.CdmaPlusCodeUtils"

.field private static final mLock:Ljava/lang/Object;

.field private static sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->mLock:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    if-nez v0, :cond_1

    .line 62
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->makePlusCodeUtis()Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPlusCodeUtils sPlusCodeUtilsInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->log(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string/jumbo v0, "PlusCodeProcessor"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method private static makePlusCodeUtis()Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;
    .locals 5

    .prologue
    .line 74
    :try_start_0
    const-string/jumbo v4, "com.mediatek.internal.telephony.cdma.pluscode.CdmaPlusCodeUtils"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 75
    .local v3, "policyClass":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "ex":Ljava/lang/InstantiationException;
    const-string/jumbo v4, "makePlusCodeUtis InstantiationException, return default DefaultPlusCodeUtils"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->log(Ljava/lang/String;)V

    .line 84
    new-instance v4, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;-><init>()V

    return-object v4

    .line 79
    .end local v2    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 80
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "makePlusCodeUtis IllegalAccessException, return default DefaultPlusCodeUtils"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->log(Ljava/lang/String;)V

    .line 81
    new-instance v4, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;-><init>()V

    return-object v4

    .line 76
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "makePlusCodeUtis ClassNotFoundException, return default DefaultPlusCodeUtils"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->log(Ljava/lang/String;)V

    .line 78
    new-instance v4, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;-><init>()V

    return-object v4
.end method
