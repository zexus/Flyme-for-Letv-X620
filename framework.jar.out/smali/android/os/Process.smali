.class public Landroid/os/Process;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Process$ZygoteState;,
        Landroid/os/Process$ProcessStartResult;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_UID:I = 0x3ea

.field private static DEBUG_ZYGOTE_ON_DEMAND:Z = false

.field public static final DRM_UID:I = 0x3fb

.field public static final FIRST_APPLICATION_UID:I = 0x2710

.field public static final FIRST_ISOLATED_UID:I = 0x182b8

.field public static final FIRST_SHARED_APPLICATION_GID:I = 0xc350

.field public static final LAST_APPLICATION_UID:I = 0x4e1f

.field public static final LAST_ISOLATED_UID:I = 0x1869f

.field public static final LAST_SHARED_APPLICATION_GID:I = 0xea5f

.field private static final LOG_TAG:Ljava/lang/String; = "Process"

.field public static final LOG_UID:I = 0x3ef

.field public static final MEDIA_RW_GID:I = 0x3ff

.field public static final MEDIA_UID:I = 0x3f5

.field public static final NFC_UID:I = 0x403

.field public static final PACKAGE_INFO_GID:I = 0x408

.field public static final PHONE_UID:I = 0x3e9

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_OUT_STRING:I = 0x1000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_QUOTES:I = 0x400

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TAB_TERM:I = 0x9

.field public static final PROC_TERM_MASK:I = 0xff

.field public static final PROC_ZERO_TERM:I = 0x0

.field private static final PROP_ZYGOTE_ON_DEMAND_CONTROL:Ljava/lang/String; = "sys.mtk_zygote_secondary"

.field private static final PROP_ZYGOTE_ON_DEMAND_DEBUG:Ljava/lang/String; = "persist.sys.mtk_zygote_debug"

.field private static final PROP_ZYGOTE_ON_DEMAND_ENABLE:Ljava/lang/String; = "ro.mtk_gmo_zygote_on_demand"

.field public static final ROOT_UID:I = 0x0

.field public static final SCHED_BATCH:I = 0x3

.field public static final SCHED_FIFO:I = 0x1

.field public static final SCHED_IDLE:I = 0x5

.field public static final SCHED_OTHER:I = 0x0

.field public static final SCHED_RR:I = 0x2

.field public static final SECONDARY_ZYGOTE_SOCKET:Ljava/lang/String; = "zygote_secondary"

.field public static final SHARED_RELRO_UID:I = 0x40d

.field public static final SHARED_USER_GID:I = 0x270d

.field public static final SHELL_UID:I = 0x7d0

.field public static final SIGNAL_KILL:I = 0x9

.field public static final SIGNAL_QUIT:I = 0x3

.field public static final SIGNAL_USR1:I = 0xa

.field public static final SYSTEM_UID:I = 0x3e8

.field public static final THREAD_GROUP_AUDIO_APP:I = 0x3

.field public static final THREAD_GROUP_AUDIO_SYS:I = 0x4

.field public static final THREAD_GROUP_BG_NONINTERACTIVE:I = 0x0

.field public static final THREAD_GROUP_DEFAULT:I = -0x1

.field private static final THREAD_GROUP_FOREGROUND:I = 0x1

.field public static final THREAD_GROUP_SYSTEM:I = 0x2

.field public static final THREAD_PRIORITY_AUDIO:I = -0x10

.field public static final THREAD_PRIORITY_BACKGROUND:I = 0xa

.field public static final THREAD_PRIORITY_DEFAULT:I = 0x0

.field public static final THREAD_PRIORITY_DISPLAY:I = -0x4

.field public static final THREAD_PRIORITY_FOREGROUND:I = -0x2

.field public static final THREAD_PRIORITY_LESS_FAVORABLE:I = 0x1

.field public static final THREAD_PRIORITY_LOWEST:I = 0x13

.field public static final THREAD_PRIORITY_MORE_FAVORABLE:I = -0x1

.field public static final THREAD_PRIORITY_URGENT_AUDIO:I = -0x13

.field public static final THREAD_PRIORITY_URGENT_DISPLAY:I = -0x8

.field public static final VPN_UID:I = 0x3f8

.field public static final WIFI_UID:I = 0x3f2

.field static final ZYGOTE_RETRY_MILLIS:I = 0x1f4

.field public static final ZYGOTE_SOCKET:Ljava/lang/String; = "zygote"

.field static primaryZygoteState:Landroid/os/Process$ZygoteState;

.field private static final sZygoteOnDemandEnabled:Z

.field static secondaryZygoteState:Landroid/os/Process$ZygoteState;


# direct methods
.method static synthetic -wrap0(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "inputStream"    # Ljava/io/DataInputStream;

    .prologue
    invoke-static {p0, p1}, Landroid/os/Process;->getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 379
    const-string/jumbo v0, "ro.mtk_gmo_zygote_on_demand"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 378
    sput-boolean v0, Landroid/os/Process;->sZygoteOnDemandEnabled:Z

    .line 381
    const-string/jumbo v0, "persist.sys.mtk_zygote_debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 380
    sput-boolean v0, Landroid/os/Process;->DEBUG_ZYGOTE_ON_DEMAND:Z

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugZygoteOnDemand(Z)V
    .locals 2
    .param p0, "on"    # Z

    .prologue
    .line 725
    sput-boolean p0, Landroid/os/Process;->DEBUG_ZYGOTE_ON_DEMAND:Z

    .line 726
    if-eqz p0, :cond_0

    .line 727
    const-string/jumbo v0, "persist.sys.mtk_zygote_debug"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :goto_0
    return-void

    .line 729
    :cond_0
    const-string/jumbo v0, "persist.sys.mtk_zygote_debug"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static establishZygoteConnectionForAbi(Ljava/lang/String;)V
    .locals 4
    .param p0, "abi"    # Ljava/lang/String;

    .prologue
    .line 918
    :try_start_0
    invoke-static {p0}, Landroid/os/Process;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    return-void

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to connect to zygote for abi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    const-string/jumbo v2, "1"

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 534
    const-string/jumbo v2, "--query-abi-list"

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 536
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    .line 539
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 540
    .local v1, "numBytes":I
    new-array v0, v1, [B

    .line 541
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 543
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method public static final native getElapsedCpuTime()J
.end method

.method public static final native getFreeMemory()J
.end method

.method public static final native getGidForName(Ljava/lang/String;)I
.end method

.method public static final native getLruAnonMemory()J
.end method

.method public static final getParentPid(I)I
    .locals 5
    .param p0, "pid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1063
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v2, "PPid:"

    aput-object v2, v0, v4

    .line 1064
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    .line 1065
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 1066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1067
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getPids(Ljava/lang/String;[I)[I
.end method

.method public static final native getPidsForCommands([Ljava/lang/String;)[I
.end method

.method public static final native getProcessGroup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native getPss(I)J
.end method

.method public static final native getRswapRssSum(I)J
.end method

.method public static final getThreadGroupLeader(I)I
    .locals 5
    .param p0, "tid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1078
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v2, "Tgid:"

    aput-object v2, v0, v4

    .line 1079
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    .line 1080
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1082
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getThreadPriority(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native getTotalMemory()J
.end method

.method public static final native getUidForName(Ljava/lang/String;)I
.end method

.method public static final getUidForPid(I)I
    .locals 5
    .param p0, "pid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1049
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v2, "Uid:"

    aput-object v2, v0, v4

    .line 1050
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    .line 1051
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1053
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final getZramCompressRatio()F
    .locals 6

    .prologue
    .line 1304
    invoke-static {}, Landroid/os/Debug;->getCompZram()J

    move-result-wide v0

    .line 1305
    .local v0, "compZram":J
    invoke-static {}, Landroid/os/Debug;->getOrigZram()J

    move-result-wide v2

    .line 1308
    .local v2, "origZram":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    .line 1309
    const/high16 v4, 0x3f800000    # 1.0f

    return v4

    .line 1310
    :cond_0
    const-wide/32 v4, 0x300000

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 1311
    invoke-static {}, Landroid/os/Debug;->getZramCompressMethod()S

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_1

    .line 1312
    const v4, 0x404ccccd    # 3.2f

    return v4

    .line 1314
    :cond_1
    const v4, 0x402851ec    # 2.63f

    return v4

    .line 1316
    :cond_2
    long-to-float v4, v2

    long-to-float v5, v0

    div-float/2addr v4, v5

    return v4
.end method

.method public static final getZramExtraAvailableSize()J
    .locals 15

    .prologue
    const/high16 v14, 0x3f800000    # 1.0f

    const-wide/16 v12, 0x0

    .line 1347
    invoke-static {}, Landroid/os/Debug;->getTotalZram()J

    move-result-wide v6

    .line 1348
    .local v6, "totalZram":J
    cmp-long v8, v6, v12

    if-nez v8, :cond_0

    .line 1349
    return-wide v12

    .line 1351
    :cond_0
    const-string/jumbo v8, "ro.default_cache_free"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1353
    const-wide/32 v0, 0xf00000

    .line 1354
    .local v0, "anonReserve":J
    invoke-static {}, Landroid/os/Process;->getLruAnonMemory()J

    move-result-wide v8

    const-wide/32 v10, 0xf00000

    sub-long v2, v8, v10

    .line 1355
    .local v2, "anonToCompress":J
    cmp-long v8, v2, v12

    if-gez v8, :cond_1

    .line 1356
    const-wide/16 v2, 0x0

    .line 1358
    :cond_1
    long-to-float v8, v2

    invoke-static {}, Landroid/os/Process;->getZramCompressRatio()F

    move-result v9

    div-float v9, v14, v9

    sub-float v9, v14, v9

    mul-float/2addr v8, v9

    float-to-long v4, v8

    .line 1359
    .local v4, "savableMemory":J
    return-wide v4

    .line 1361
    .end local v0    # "anonReserve":J
    .end local v2    # "anonToCompress":J
    .end local v4    # "savableMemory":J
    :cond_2
    return-wide v12
.end method

.method public static final getZramExtraTotalSize()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 1328
    invoke-static {}, Landroid/os/Debug;->getTotalZram()J

    move-result-wide v4

    .line 1329
    .local v4, "totalZram":J
    cmp-long v6, v4, v8

    if-nez v6, :cond_0

    .line 1330
    return-wide v8

    .line 1334
    :cond_0
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    div-long v0, v6, v8

    .line 1335
    .local v0, "compTotalSize":J
    long-to-float v6, v0

    invoke-static {}, Landroid/os/Process;->getZramCompressRatio()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-long v2, v6

    .line 1337
    .local v2, "origTotalSize":J
    sub-long v6, v2, v0

    return-wide v6
.end method

.method public static final is64Bit()Z
    .locals 1

    .prologue
    .line 967
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    return v0
.end method

.method public static final isIsolated()Z
    .locals 1

    .prologue
    .line 1019
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    return v0
.end method

.method public static final isIsolated(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1024
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 1025
    const v1, 0x182b8

    if-lt p0, v1, :cond_0

    const v1, 0x1869f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSecondaryZygoteRunning()Z
    .locals 4

    .prologue
    .line 818
    const-string/jumbo v1, "sys.mtk_zygote_secondary"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 819
    .local v0, "isRunning":Z
    sget-boolean v1, Landroid/os/Process;->DEBUG_ZYGOTE_ON_DEMAND:Z

    if-eqz v1, :cond_0

    .line 820
    const-string/jumbo v1, "Process"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ZygoteOnDemand: isSecondaryZygoteRunning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_0
    return v0
.end method

.method public static final killProcess(I)V
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 1255
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 1254
    return-void
.end method

.method public static final native killProcessGroup(II)I
.end method

.method public static final killProcessQuiet(I)V
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 1279
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalQuiet(II)V

    .line 1278
    return-void
.end method

.method public static final myPid()I
    .locals 1

    .prologue
    .line 975
    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v0

    return v0
.end method

.method public static final myPpid()I
    .locals 1

    .prologue
    .line 983
    invoke-static {}, Landroid/system/Os;->getppid()I

    move-result v0

    return v0
.end method

.method public static final myTid()I
    .locals 1

    .prologue
    .line 991
    invoke-static {}, Landroid/system/Os;->gettid()I

    move-result v0

    return v0
.end method

.method public static final myUid()I
    .locals 1

    .prologue
    .line 1001
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v0

    return v0
.end method

.method public static final myUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 1011
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method private static openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    .locals 4
    .param p0, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 929
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1}, Landroid/os/Process$ZygoteState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 931
    :cond_0
    :try_start_0
    const-string/jumbo v1, "zygote"

    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v1

    sput-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    :cond_1
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 938
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    return-object v1

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string/jumbo v2, "Error connecting to primary zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 942
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1}, Landroid/os/Process$ZygoteState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 944
    :cond_3
    :try_start_1
    const-string/jumbo v1, "zygote_secondary"

    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v1

    sput-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 950
    :cond_4
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 951
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    return-object v1

    .line 945
    :catch_1
    move-exception v0

    .line 946
    .restart local v0    # "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string/jumbo v2, "Error connecting to secondary zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 954
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_5
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported zygote ABI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final native parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
.end method

.method public static final native removeAllProcessGroups()V
.end method

.method public static final native sendSignal(II)V
.end method

.method public static final native sendSignalQuiet(II)V
.end method

.method public static final native setArgV0(Ljava/lang/String;)V
.end method

.method public static final native setCanSelfBackground(Z)V
.end method

.method public static final native setGid(I)I
.end method

.method public static final native setProcessGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setSwappiness(IZ)Z
.end method

.method public static final native setThreadGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadScheduler(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native setUid(I)I
.end method

.method public static final start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 3
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "debugFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "abi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "appDataDir"    # Ljava/lang/String;
    .param p12, "zygoteArgs"    # [Ljava/lang/String;

    .prologue
    .line 508
    :try_start_0
    invoke-static/range {p0 .. p12}, Landroid/os/Process;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    const-string/jumbo v1, "Process"

    .line 513
    const-string/jumbo v2, "Starting VM process through Zygote failed"

    .line 512
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v1, Ljava/lang/RuntimeException;

    .line 515
    const-string/jumbo v2, "Starting VM process through Zygote failed"

    .line 514
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static startSecondaryZygote(Ljava/lang/String;)V
    .locals 5
    .param p0, "abi"    # Ljava/lang/String;

    .prologue
    .line 741
    sget-boolean v1, Landroid/os/Process;->sZygoteOnDemandEnabled:Z

    if-nez v1, :cond_0

    .line 742
    return-void

    .line 745
    :cond_0
    sget-boolean v1, Landroid/os/Process;->DEBUG_ZYGOTE_ON_DEMAND:Z

    if-eqz v1, :cond_1

    .line 746
    const-string/jumbo v1, "Process"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ZygoteOnDemand: startSecondaryZygote for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_1
    const-class v2, Landroid/os/Process;

    monitor-enter v2

    .line 750
    :try_start_0
    const-string/jumbo v1, "stopped"

    invoke-static {v1}, Landroid/os/Process;->waitSecondaryZygoteChangedLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 751
    const-string/jumbo v1, "Process"

    const-string/jumbo v3, "ZygoteOnDemand: service is not stopped"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 752
    return-void

    .line 754
    :cond_2
    :try_start_1
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1}, Landroid/os/Process$ZygoteState;->isClosed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    .line 756
    :cond_3
    :try_start_2
    const-string/jumbo v1, "zygote"

    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v1

    sput-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 762
    :cond_4
    :goto_0
    :try_start_3
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 763
    const-string/jumbo v1, "Process"

    const-string/jumbo v3, "ZygoteOnDemand: startSecondaryZygote match primary Zygote"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v2

    .line 740
    return-void

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v1, "Process"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ZygoteOnDemand: Error connecting to primary zygote: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 749
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 766
    :cond_6
    :try_start_5
    const-string/jumbo v1, "sys.mtk_zygote_secondary"

    const-string/jumbo v3, "1"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string/jumbo v1, "running"

    invoke-static {v1}, Landroid/os/Process;->waitSecondaryZygoteChangedLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 768
    const-string/jumbo v1, "Process"

    const-string/jumbo v3, "ZygoteOnDemand: service is not running"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v2

    .line 769
    return-void

    .line 771
    :cond_7
    :try_start_6
    sget-boolean v1, Landroid/os/Process;->DEBUG_ZYGOTE_ON_DEMAND:Z

    if-eqz v1, :cond_5

    .line 772
    const-string/jumbo v1, "Process"

    const-string/jumbo v3, "ZygoteOnDemand: startSecondaryZygote done"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private static startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 9
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "debugFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "abi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "appDataDir"    # Ljava/lang/String;
    .param p12, "extraArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 631
    const-class v7, Landroid/os/Process;

    monitor-enter v7

    .line 632
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v2, "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, "--runtime-args"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--setuid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--setgid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    and-int/lit8 v6, p5, 0x10

    if-eqz v6, :cond_0

    .line 640
    const-string/jumbo v6, "--enable-jni-logging"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_0
    and-int/lit8 v6, p5, 0x8

    if-eqz v6, :cond_1

    .line 643
    const-string/jumbo v6, "--enable-safemode"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_1
    and-int/lit8 v6, p5, 0x1

    if-eqz v6, :cond_2

    .line 646
    const-string/jumbo v6, "--enable-debugger"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_2
    and-int/lit8 v6, p5, 0x2

    if-eqz v6, :cond_3

    .line 649
    const-string/jumbo v6, "--enable-checkjni"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_3
    and-int/lit8 v6, p5, 0x20

    if-eqz v6, :cond_4

    .line 652
    const-string/jumbo v6, "--enable-jit"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_4
    and-int/lit8 v6, p5, 0x40

    if-eqz v6, :cond_5

    .line 655
    const-string/jumbo v6, "--generate-debug-info"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_5
    and-int/lit8 v6, p5, 0x4

    if-eqz v6, :cond_6

    .line 658
    const-string/jumbo v6, "--enable-assert"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_6
    const/4 v6, 0x1

    if-ne p6, v6, :cond_9

    .line 661
    const-string/jumbo v6, "--mount-external-default"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_7
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--target-sdk-version="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    if-eqz p4, :cond_c

    array-length v6, p4

    if-lez v6, :cond_c

    .line 674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 675
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "--setgroups="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    array-length v5, p4

    .line 678
    .local v5, "sz":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_b

    .line 679
    if-eqz v3, :cond_8

    .line 680
    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 682
    :cond_8
    aget v6, p4, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 678
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 662
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sz":I
    :cond_9
    const/4 v6, 0x2

    if-ne p6, v6, :cond_a

    .line 663
    const-string/jumbo v6, "--mount-external-read"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 631
    .end local v2    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 664
    .restart local v2    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    const/4 v6, 0x3

    if-ne p6, v6, :cond_7

    .line 665
    :try_start_1
    const-string/jumbo v6, "--mount-external-write"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 685
    .restart local v3    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "sz":I
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sz":I
    :cond_c
    if-eqz p1, :cond_d

    .line 689
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--nice-name="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_d
    if-eqz p8, :cond_e

    .line 693
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--seinfo="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    :cond_e
    if-eqz p10, :cond_f

    .line 697
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--instruction-set="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_f
    if-eqz p11, :cond_10

    .line 701
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--app-data-dir="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_10
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    if-eqz p12, :cond_11

    .line 707
    const/4 v6, 0x0

    move-object/from16 v0, p12

    array-length v8, v0

    :goto_2
    if-ge v6, v8, :cond_11

    aget-object v1, p12, v6

    .line 708
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 712
    .end local v1    # "arg":Ljava/lang/String;
    :cond_11
    invoke-static/range {p9 .. p9}, Landroid/os/Process;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/os/Process;->zygoteSendArgsAndGetResult(Landroid/os/Process$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    monitor-exit v7

    return-object v6
.end method

.method public static stopSecondaryZygote()V
    .locals 3

    .prologue
    .line 784
    sget-boolean v0, Landroid/os/Process;->sZygoteOnDemandEnabled:Z

    if-nez v0, :cond_0

    .line 785
    return-void

    .line 788
    :cond_0
    sget-boolean v0, Landroid/os/Process;->DEBUG_ZYGOTE_ON_DEMAND:Z

    if-eqz v0, :cond_1

    .line 789
    const-string/jumbo v0, "Process"

    const-string/jumbo v1, "ZygoteOnDemand: stopSecondaryZygote"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_1
    const-class v1, Landroid/os/Process;

    monitor-enter v1

    .line 793
    :try_start_0
    const-string/jumbo v0, "running"

    invoke-static {v0}, Landroid/os/Process;->waitSecondaryZygoteChangedLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 794
    const-string/jumbo v0, "Process"

    const-string/jumbo v2, "ZygoteOnDemand: service is not running"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 795
    return-void

    .line 799
    :cond_2
    :try_start_1
    const-string/jumbo v0, "sys.mtk_zygote_secondary"

    const-string/jumbo v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string/jumbo v0, "stopped"

    invoke-static {v0}, Landroid/os/Process;->waitSecondaryZygoteChangedLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 801
    const-string/jumbo v0, "Process"

    const-string/jumbo v2, "ZygoteOnDemand: service is not stopped"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 802
    return-void

    .line 804
    :cond_3
    :try_start_2
    sget-boolean v0, Landroid/os/Process;->DEBUG_ZYGOTE_ON_DEMAND:Z

    if-eqz v0, :cond_4

    .line 805
    const-string/jumbo v0, "Process"

    const-string/jumbo v2, "ZygoteOnDemand: stopSecondaryZygote done"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit v1

    .line 783
    return-void

    .line 792
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final supportsProcesses()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1217
    const/4 v0, 0x1

    return v0
.end method

.method public static waitForSecondaryZygote(Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 10
    .param p0, "abi"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 835
    sget-boolean v5, Landroid/os/Process;->sZygoteOnDemandEnabled:Z

    if-nez v5, :cond_0

    .line 836
    return-object v8

    .line 839
    :cond_0
    sget-boolean v5, Landroid/os/Process;->DEBUG_ZYGOTE_ON_DEMAND:Z

    if-eqz v5, :cond_1

    .line 840
    const-string/jumbo v5, "Process"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ZygoteOnDemand: waitForSecondaryZygote for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_1
    const-class v6, Landroid/os/Process;

    monitor-enter v6

    .line 844
    const/4 v4, 0x0

    .line 846
    .local v4, "result":Landroid/os/Process$ProcessStartResult;
    :try_start_0
    const-string/jumbo v5, "running"

    invoke-static {v5}, Landroid/os/Process;->waitSecondaryZygoteChangedLocked(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 847
    const-string/jumbo v5, "Process"

    const-string/jumbo v7, "ZygoteOnDemand: service is not running"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 848
    return-object v8

    .line 851
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v0, "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v5, "--try-secondary-zygote"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    const/4 v2, 0x0

    .end local v4    # "result":Landroid/os/Process$ProcessStartResult;
    .local v2, "i":I
    :goto_0
    const/16 v5, 0x19

    if-ge v2, v5, :cond_4

    .line 854
    if-eqz v2, :cond_3

    .line 856
    const-wide/16 v8, 0x64

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 861
    :try_start_3
    sget-boolean v5, Landroid/os/Process;->DEBUG_ZYGOTE_ON_DEMAND:Z

    if-eqz v5, :cond_3

    .line 862
    const-string/jumbo v5, "Process"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ZygoteOnDemand: waitForSecondaryZygote retry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 867
    :cond_3
    :try_start_4
    invoke-static {p0}, Landroid/os/Process;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/os/Process;->zygoteSendArgsAndGetResult(Landroid/os/Process$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;

    move-result-object v4

    .line 869
    .local v4, "result":Landroid/os/Process$ProcessStartResult;
    iget-boolean v5, v4, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z
    :try_end_4
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_5

    .end local v4    # "result":Landroid/os/Process$ProcessStartResult;
    :cond_4
    :goto_1
    monitor-exit v6

    .line 876
    return-object v4

    .line 857
    :catch_0
    move-exception v3

    .line 858
    .local v3, "ie":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v5, "Process"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ZygoteOnDemand: waitForSecondaryZygote: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 843
    .end local v0    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 872
    .restart local v0    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    :catch_1
    move-exception v1

    .line 873
    .local v1, "ex":Landroid/os/ZygoteStartFailedEx;
    :try_start_6
    const-string/jumbo v5, "Process"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ZygoteOnDemand: waitForSecondaryZygote exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 853
    .end local v1    # "ex":Landroid/os/ZygoteStartFailedEx;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static waitSecondaryZygoteChangedLocked(Ljava/lang/String;)Z
    .locals 8
    .param p0, "to"    # Ljava/lang/String;

    .prologue
    .line 881
    sget-boolean v3, Landroid/os/Process;->DEBUG_ZYGOTE_ON_DEMAND:Z

    if-eqz v3, :cond_0

    .line 882
    const-string/jumbo v3, "Process"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ZygoteOnDemand: waitSecondaryZygoteChangedLocked to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 883
    const-string/jumbo v5, ", start time: "

    .line 882
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 883
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 882
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    const/4 v2, 0x0

    .line 886
    .local v2, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x19

    if-ge v0, v3, :cond_2

    .line 887
    if-eqz v0, :cond_1

    .line 889
    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :cond_1
    const-string/jumbo v3, "init.svc.zygote_secondary"

    const-string/jumbo v4, "stopped"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 898
    const/4 v2, 0x1

    .line 902
    :cond_2
    :goto_1
    sget-boolean v3, Landroid/os/Process;->DEBUG_ZYGOTE_ON_DEMAND:Z

    if-eqz v3, :cond_3

    .line 903
    const-string/jumbo v3, "Process"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ZygoteOnDemand: waitSecondaryZygoteChangedLocked result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 904
    const-string/jumbo v5, ", end time: "

    .line 903
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 904
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 903
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_3
    return v2

    .line 890
    :catch_0
    move-exception v1

    .line 891
    .local v1, "ie":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "Process"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ZygoteOnDemand: waitSecondaryZygoteChangedLocked exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 886
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static zygoteSendArgsAndGetResult(Landroid/os/Process$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    .locals 9
    .param p0, "zygoteState"    # Landroid/os/Process$ZygoteState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Process$ZygoteState;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 567
    .local p1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v6, p0, Landroid/os/Process$ZygoteState;->writer:Ljava/io/BufferedWriter;

    .line 568
    .local v6, "writer":Ljava/io/BufferedWriter;
    iget-object v3, p0, Landroid/os/Process$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    .line 570
    .local v3, "inputStream":Ljava/io/DataInputStream;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 573
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 574
    .local v5, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 575
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 576
    .local v0, "arg":Ljava/lang/String;
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_0

    .line 577
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    .line 578
    const-string/jumbo v8, "embedded newlines not allowed"

    .line 577
    invoke-direct {v7, v8}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v0    # "arg":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "inputStream":Ljava/io/DataInputStream;
    .end local v5    # "sz":I
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 595
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Landroid/os/Process$ZygoteState;->close()V

    .line 596
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    invoke-direct {v7, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 580
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "inputStream":Ljava/io/DataInputStream;
    .restart local v5    # "sz":I
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 574
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 587
    new-instance v4, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v4}, Landroid/os/Process$ProcessStartResult;-><init>()V

    .line 588
    .local v4, "result":Landroid/os/Process$ProcessStartResult;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 589
    iget v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    if-gez v7, :cond_2

    .line 590
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    const-string/jumbo v8, "fork() failed"

    invoke-direct {v7, v8}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v7

    .line 592
    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    iput-boolean v7, v4, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 593
    return-object v4
.end method
