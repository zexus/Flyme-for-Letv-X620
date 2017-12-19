.class public Lcom/android/server/PersistentDataBlockService;
.super Lcom/android/server/SystemService;
.source "PersistentDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PersistentDataBlockService$1;
    }
.end annotation


# static fields
.field public static final DIGEST_SIZE_BYTES:I = 0x20

.field private static final HEADER_SIZE:I = 0x8

.field private static final LEUI_OEM_UNLOCK_ENABLE_PROP:Ljava/lang/String; = "ro.leui_oem_unlock_enable"

.field private static final MAX_DATA_BLOCK_SIZE:I = 0x19000

.field private static final OEM_UNLOCK_PROP:Ljava/lang/String; = "sys.oem_unlock_allowed"

.field private static final PARTITION_TYPE_MARKER:I = 0x19901873

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowedUid:I

.field private mBlockDeviceSize:J

.field private final mContext:Landroid/content/Context;

.field private final mDataBlockFile:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/PersistentDataBlockService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/PersistentDataBlockService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/PersistentDataBlockService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    .locals 1
    .param p1, "inputStream"    # Ljava/io/DataInputStream;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/PersistentDataBlockService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap5(Lcom/android/server/PersistentDataBlockService;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceIsOwner()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockPermission()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/PersistentDataBlockService;I)V
    .locals 0
    .param p1, "callingUid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/PersistentDataBlockService;Z)V
    .locals 0
    .param p1, "setOemUnlockEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    .line 366
    new-instance v0, Lcom/android/server/PersistentDataBlockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$1;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    .line 87
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PersistentDataBlockService init"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 89
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->getAllowedUid(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    .line 92
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PersistentDataBlockService, mDataBlockFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    const-string/jumbo v2, ", mAllowedUid="

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    iget v2, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method private computeAndWriteDigestLocked()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 202
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "computeAndWriteDigestLocked"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0, v6}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v0

    .line 204
    .local v0, "digest":[B
    if-eqz v0, :cond_0

    .line 207
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    .line 208
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 207
    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .local v3, "outputStream":Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    const/16 v5, 0x20

    :try_start_1
    invoke-virtual {v3, v0, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 216
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 223
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "computeAndWriteDigestLocked, return true"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v4, 0x1

    return v4

    .line 209
    .end local v3    # "outputStream":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "partition not available?"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    return v7

    .line 217
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "outputStream":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v2

    .line 218
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "failed to write block checksum"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 219
    return v7

    .line 220
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 221
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 220
    throw v4

    .line 226
    .end local v3    # "outputStream":Ljava/io/DataOutputStream;
    :cond_0
    return v7
.end method

.method private computeDigestLocked([B)[B
    .locals 13
    .param p1, "storedDigest"    # [B

    .prologue
    const/16 v12, 0x20

    const/4 v11, 0x0

    .line 231
    sget-object v8, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "computeDigestLocked in"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    .local v4, "inputStream":Ljava/io/DataInputStream;
    sget-object v8, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "computeDigestLocked, get MessageDigest isnstance"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :try_start_1
    const-string/jumbo v8, "SHA-256"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 252
    .local v5, "md":Ljava/security/MessageDigest;
    if-eqz p1, :cond_0

    :try_start_2
    array-length v8, p1

    if-ne v8, v12, :cond_0

    .line 253
    invoke-virtual {v4, p1}, Ljava/io/DataInputStream;->read([B)I

    .line 258
    :goto_0
    sget-object v8, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "computeDigestLocked, start read partition"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/16 v8, 0x2000

    new-array v0, v8, [B

    .line 261
    .local v0, "data":[B
    const/4 v8, 0x0

    const/16 v9, 0x20

    invoke-virtual {v5, v0, v8, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 262
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 263
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 266
    .end local v0    # "data":[B
    .end local v6    # "read":I
    :catch_0
    move-exception v2

    .line 267
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v8, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "failed to read partition"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 268
    return-object v11

    .line 235
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "inputStream":Ljava/io/DataInputStream;
    .end local v5    # "md":Ljava/security/MessageDigest;
    :catch_1
    move-exception v1

    .line 236
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v8, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "partition not available?"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    return-object v11

    .line 244
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "inputStream":Ljava/io/DataInputStream;
    :catch_2
    move-exception v3

    .line 246
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v8, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "SHA-256 not supported?"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 248
    return-object v11

    .line 255
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v5    # "md":Ljava/security/MessageDigest;
    :cond_0
    const/16 v8, 0x20

    :try_start_4
    invoke-virtual {v4, v8}, Ljava/io/DataInputStream;->skipBytes(I)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v8

    .line 270
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 269
    throw v8

    .line 265
    .restart local v0    # "data":[B
    .restart local v6    # "read":I
    :cond_1
    :try_start_5
    sget-object v8, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "computeDigestLocked, end read partition"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 270
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 273
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 274
    .local v7, "returnValue":[B
    sget-object v8, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "computeDigestLocked out"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-object v7
.end method

.method private doGetOemUnlockEnabled()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 339
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "doGetOemUnlockEnabled in"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .local v2, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 350
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/io/DataInputStream;->skip(J)J

    .line 351
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 352
    .local v3, "returnValue":Z
    :goto_0
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "doGetOemUnlockEnabled, return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 359
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 353
    return v3

    .line 343
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .end local v3    # "returnValue":Z
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "partition not available"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return v10

    .line 351
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "returnValue":Z
    goto :goto_0

    .line 349
    .end local v3    # "returnValue":Z
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5

    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 355
    :catch_1
    move-exception v1

    .line 356
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unable to access persistent partition"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 359
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 357
    return v10

    .line 358
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    .line 359
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 358
    throw v4
.end method

.method private doSetOemUnlockEnabledLocked(Z)V
    .locals 10
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x1

    .line 309
    sget-object v6, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "doSetOemUnlockEnabledLocked, enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 321
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 323
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 324
    .local v1, "data":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 325
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 326
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 327
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 328
    sget-object v5, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "doSetOemUnlockEnabledLocked out"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    const-string/jumbo v6, "sys.oem_unlock_allowed"

    if-eqz p1, :cond_1

    const-string/jumbo v5, "1"

    :goto_1
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 308
    return-void

    .line 313
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "partition not available"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    return-void

    .line 324
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v1    # "data":Ljava/nio/ByteBuffer;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 333
    :cond_1
    const-string/jumbo v5, "0"

    goto :goto_1

    .line 329
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v3

    .line 330
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v5, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unable to access persistent partition"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    const-string/jumbo v6, "sys.oem_unlock_allowed"

    if-eqz p1, :cond_2

    const-string/jumbo v5, "1"

    :goto_2
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 331
    return-void

    .line 333
    :cond_2
    const-string/jumbo v5, "0"

    goto :goto_2

    .line 332
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 333
    const-string/jumbo v7, "sys.oem_unlock_allowed"

    if-eqz p1, :cond_3

    const-string/jumbo v6, "1"

    :goto_3
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 332
    throw v5

    .line 333
    :cond_3
    const-string/jumbo v6, "0"

    goto :goto_3
.end method

.method private enforceChecksumValidity()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 186
    const/16 v2, 0x20

    new-array v1, v2, [B

    .line 188
    .local v1, "storedDigest":[B
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 189
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v0

    .line 190
    .local v0, "digest":[B
    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 197
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "enforceChecksumValidity, return true"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v2, 0x1

    return v2

    .line 191
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Formatting FRP partition..."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V

    .line 193
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "enforceChecksumValidity, return false"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 194
    return v5

    .line 188
    .end local v0    # "digest":[B
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private enforceIsOwner()V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Only the Owner is allowed to change OEM unlock state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    return-void
.end method

.method private enforceOemUnlockPermission()V
    .locals 3

    .prologue
    .line 139
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enforceOemUnlockPermission"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 141
    const-string/jumbo v1, "android.permission.OEM_UNLOCK_STATE"

    .line 142
    const-string/jumbo v2, "Can\'t access OEM unlock state"

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private enforceUid(I)V
    .locals 3
    .param p1, "callingUid"    # I

    .prologue
    .line 146
    iget v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    if-eq p1, v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not allowed to access PST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    return-void
.end method

.method private formatIfOemUnlockEnabled()V
    .locals 3

    .prologue
    .line 127
    sget-object v1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "formatIfOemUnlockEnabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    .line 129
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 135
    :cond_0
    const-string/jumbo v2, "sys.oem_unlock_allowed"

    if-eqz v0, :cond_1

    const-string/jumbo v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 130
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 135
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method private formatPartitionLocked(Z)V
    .locals 8
    .param p1, "setOemUnlockEnabled"    # Z

    .prologue
    const/16 v7, 0x20

    .line 280
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "formatPartitionLocked"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .local v3, "outputStream":Ljava/io/DataOutputStream;
    new-array v0, v7, [B

    .line 291
    .local v0, "data":[B
    const/4 v4, 0x0

    const/16 v5, 0x20

    :try_start_1
    invoke-virtual {v3, v0, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 292
    const v4, 0x19901873

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 293
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 294
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 295
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "formatPartitionLocked init data, PARTITION_TYPE_MARKER=428873843, size=0 "

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 304
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    .line 305
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    .line 279
    return-void

    .line 284
    .end local v0    # "data":[B
    .end local v3    # "outputStream":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "partition not available?"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    return-void

    .line 297
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "data":[B
    .restart local v3    # "outputStream":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v2

    .line 298
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "failed to format block"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 299
    return-void

    .line 300
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 301
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 300
    throw v4
.end method

.method private getAllowedUid(I)I
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    .line 97
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAllowedUid, userHandle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 99
    const v5, 0x104004c

    .line 98
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "allowedPackage":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 101
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, -0x1

    .line 103
    .local v1, "allowedUid":I
    :try_start_0
    invoke-virtual {v3, v0, p1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 108
    :goto_0
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAllowedUid, allowedUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v1

    .line 104
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not able to find package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getBlockDeviceSize()J
    .locals 6

    .prologue
    .line 175
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getBlockDeviceSize"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 181
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBlockDeviceSize, mBlockDeviceSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    return-wide v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    .locals 6
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v5, 0x19901873

    .line 158
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getTotalDataSizeLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 162
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 163
    .local v0, "blockId":I
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTotalDataSizeLocked, blockId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 164
    const-string/jumbo v4, ", PARTITION_TYPE_MARKER="

    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-ne v0, v5, :cond_0

    .line 166
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 170
    .local v1, "totalDataSize":I
    :goto_0
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTotalDataSizeLocked, totalDataSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v1

    .line 168
    .end local v1    # "totalDataSize":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "totalDataSize":I
    goto :goto_0
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private native nativeWipe(Ljava/lang/String;)I
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    .line 116
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->formatIfOemUnlockEnabled()V

    .line 117
    const-string/jumbo v0, "persistent_data_block"

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PersistentDataBlockService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 119
    const-string/jumbo v0, "ro.leui_oem_unlock_enable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "LEUI_OEM_UNLOCK_ENABLE_PROP=1, leeco set oem unlock enable default"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    .line 122
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    .line 113
    :cond_0
    return-void
.end method
