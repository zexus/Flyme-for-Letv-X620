.class public Lcom/android/server/phonebind/PhoneBindService;
.super Lcom/letv/leui/os/phonebind/IPhoneBind$Stub;
.source "PhoneBindService.java"


# static fields
.field private static AP_CFG_MAG_IMP_LID:I = 0x0

.field private static final BIND_VALUE_MAX_SIZE:I = 0x20

.field private static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "leuiphonebind"

.field private static final TOKEN:Ljava/lang/String; = "leui_phone_bind_key"


# instance fields
.field private AP_CFG_RDCL_FILE_MAG_IMP_LID:Ljava/lang/String;

.field private mBindKey:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mReadLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x4d

    sput v0, Lcom/android/server/phonebind/PhoneBindService;->AP_CFG_MAG_IMP_LID:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/letv/leui/os/phonebind/IPhoneBind$Stub;-><init>()V

    .line 33
    const-string/jumbo v0, "/data/nvram/APCFG/APRDCL/HQ_MAG_IMP_KEY"

    iput-object v0, p0, Lcom/android/server/phonebind/PhoneBindService;->AP_CFG_RDCL_FILE_MAG_IMP_LID:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/phonebind/PhoneBindService;->mReadLock:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcom/android/server/phonebind/PhoneBindService;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/android/server/phonebind/PhoneBindService;->initStatus()V

    .line 40
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "disk"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/phonebind/PhoneBindService;->mBindKey:Ljava/lang/String;

    .line 181
    .local v0, "key":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 182
    const-string/jumbo v1, "PHONEBIND MANAGER (dumpsys leuiphonebind, get Key from NV)\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/android/server/phonebind/PhoneBindService;->getLeTVSNValueInternal()Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    const-string/jumbo v1, "    [mBindKey]: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 179
    return-void

    .line 185
    :cond_0
    const-string/jumbo v1, "PHONEBIND MANAGER (dumpsys leuiphonebind, get Key from mem)\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getLeTVSNValueInternal()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 107
    const/4 v5, 0x0

    .line 109
    .local v5, "letvSN":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v7, "NvRAMAgent"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 110
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 111
    const-string/jumbo v7, "leuiphonebind"

    const-string/jumbo v8, "NvRAMAgent binder is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object v10

    .line 114
    :cond_0
    invoke-static {v1}, Lcom/android/server/phonebind/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/phonebind/NvRAMAgent;

    move-result-object v0

    .line 118
    .local v0, "agent":Lcom/android/server/phonebind/NvRAMAgent;
    iget-object v7, p0, Lcom/android/server/phonebind/PhoneBindService;->AP_CFG_RDCL_FILE_MAG_IMP_LID:Ljava/lang/String;

    invoke-interface {v0, v7}, Lcom/android/server/phonebind/NvRAMAgent;->readFileByName(Ljava/lang/String;)[B

    move-result-object v3

    .line 120
    .local v3, "bytes":[B
    if-eqz v3, :cond_1

    array-length v7, v3

    if-nez v7, :cond_2

    .line 122
    :cond_1
    const-string/jumbo v7, "leuiphonebind"

    const-string/jumbo v8, "getLeTVSNValueInternal bytes is null..."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-object v10

    .line 127
    :cond_2
    array-length v7, v3

    const/16 v8, 0x20

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 129
    .local v2, "byteCount":I
    invoke-direct {p0, v3, v2}, Lcom/android/server/phonebind/PhoneBindService;->isEmpty([BI)Z

    move-result v7

    if-nez v7, :cond_3

    .line 130
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7, v2}, Ljava/lang/String;-><init>([BII)V

    .local v6, "letvSN":Ljava/lang/String;
    move-object v5, v6

    .line 136
    .end local v5    # "letvSN":Ljava/lang/String;
    .end local v6    # "letvSN":Ljava/lang/String;
    :goto_0
    const-string/jumbo v7, "leuiphonebind"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getLeTVSNValueInternal byteCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", letvSN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, "bytes":[B
    const/4 v0, 0x0

    .line 140
    .local v0, "agent":Lcom/android/server/phonebind/NvRAMAgent;
    const/4 v1, 0x0

    .line 145
    .local v1, "binder":Landroid/os/IBinder;
    return-object v5

    .line 133
    .local v0, "agent":Lcom/android/server/phonebind/NvRAMAgent;
    .local v1, "binder":Landroid/os/IBinder;
    .local v3, "bytes":[B
    .restart local v5    # "letvSN":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "leuiphonebind"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getLeTVSNValueInternal bytes is empty,  byteCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v0    # "agent":Lcom/android/server/phonebind/NvRAMAgent;
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "byteCount":I
    .end local v3    # "bytes":[B
    .end local v5    # "letvSN":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 142
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "leuiphonebind"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getLeTVSNValueInternal fail, e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-object v10
.end method

.method private initStatus()V
    .locals 2

    .prologue
    .line 50
    const-string/jumbo v0, "leuiphonebind"

    const-string/jumbo v1, "[PhoneBindService] initStatus..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method private final isEmpty([BI)Z
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "byteCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 97
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_0

    return v2

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v1, p0, Lcom/android/server/phonebind/PhoneBindService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: can\'t dump PhoneBind from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    const-string/jumbo v2, ", uid="

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    return-void

    .line 160
    :cond_0
    if-eqz p3, :cond_2

    .line 161
    array-length v1, p3

    if-lez v1, :cond_2

    aget-object v0, p3, v3

    .line 162
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v1, "disk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/server/phonebind/PhoneBindService;->mBindKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/server/phonebind/PhoneBindService;->dumpInternal(Ljava/io/PrintWriter;Z)V

    .line 164
    return-void

    .line 166
    :cond_1
    invoke-direct {p0, p2, v3}, Lcom/android/server/phonebind/PhoneBindService;->dumpInternal(Ljava/io/PrintWriter;Z)V

    .line 167
    return-void

    .line 171
    .end local v0    # "arg":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p2, v3}, Lcom/android/server/phonebind/PhoneBindService;->dumpInternal(Ljava/io/PrintWriter;Z)V

    .line 151
    return-void
.end method

.method public getLeTVSNValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string/jumbo v0, "leui_phone_bind_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const-string/jumbo v0, "leuiphonebind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLeTVSNValue token error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "token is illegal"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/server/phonebind/PhoneBindService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "leui.android.permission.READ_PHONE_BIND_KEY"

    const-string/jumbo v2, "no permission read key."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/server/phonebind/PhoneBindService;->mReadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/server/phonebind/PhoneBindService;->mBindKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/android/server/phonebind/PhoneBindService;->getLeTVSNValueInternal()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/phonebind/PhoneBindService;->mBindKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 83
    const-string/jumbo v0, "leuiphonebind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLeTVSNValue mBindKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/phonebind/PhoneBindService;->mBindKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/server/phonebind/PhoneBindService;->mBindKey:Ljava/lang/String;

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "leuiphonebind"

    const-string/jumbo v1, "[PhoneBindService] systemReady..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method
