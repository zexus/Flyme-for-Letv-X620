.class public Lcom/android/volley/toolbox/DiskBasedCache;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lcom/android/volley/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;,
        Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    }
.end annotation


# static fields
.field private static final CACHE_MAGIC:I = 0x20150306

.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0x500000

.field private static final HYSTERESIS_FACTOR:F = 0.9f


# instance fields
.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCacheSizeInBytes:I

.field private final mRootDirectory:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "rootDirectory"    # Ljava/io/File;

    .prologue
    .line 83
    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4
    .param p1, "rootDirectory"    # Ljava/io/File;
    .param p2, "maxCacheSizeInBytes"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 46
    iput-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 73
    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    .line 74
    iput p2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    .line 72
    return-void
.end method

.method private getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 239
    .local v0, "firstHalfLength":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "localFilename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    return-object v1
.end method

.method private pruneIfNeeded(I)V
    .locals 14
    .param p1, "neededSpace"    # I

    .prologue
    .line 256
    iget-wide v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v12, p1

    add-long/2addr v10, v12

    iget v7, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v12, v7

    cmp-long v7, v10, v12

    if-gez v7, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    sget-boolean v7, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 260
    const-string/jumbo v7, "Pruning old cache entries."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v10}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :cond_1
    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 264
    .local v0, "before":J
    const/4 v6, 0x0

    .line 265
    .local v6, "prunedFiles":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 267
    .local v8, "startTime":J
    iget-object v7, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 268
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;>;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 269
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 270
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 271
    .local v3, "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    iget-object v7, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v2

    .line 272
    .local v2, "deleted":Z
    if-eqz v2, :cond_5

    .line 273
    iget-wide v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v12, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 278
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 279
    add-int/lit8 v6, v6, 0x1

    .line 281
    iget-wide v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v12, p1

    add-long/2addr v10, v12

    long-to-float v7, v10

    iget v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-float v10, v10

    const v11, 0x3f666666    # 0.9f

    mul-float/2addr v10, v11

    cmpg-float v7, v7, v10

    if-gez v7, :cond_2

    .line 286
    .end local v2    # "deleted":Z
    .end local v3    # "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;>;"
    :cond_3
    sget-boolean v7, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 287
    const-string/jumbo v7, "pruned %d files, %d bytes, %d ms"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    .line 288
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    iget-wide v12, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    sub-long/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 287
    invoke-static {v7, v10}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_4
    return-void

    .line 275
    .restart local v2    # "deleted":Z
    .restart local v3    # "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;>;"
    :cond_5
    const-string/jumbo v7, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 276
    iget-object v11, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    iget-object v11, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 275
    invoke-static {v7, v10}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v4, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 304
    :goto_0
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 302
    .local v0, "oldEntry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v4, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    iget-wide v6, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    goto :goto_0
.end method

.method private static read(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 486
    .local v0, "b":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 487
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 489
    :cond_0
    return v0
.end method

.method static readInt(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    or-int/lit8 v0, v1, 0x0

    .line 502
    .local v0, "n":I
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 503
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 504
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 505
    return v0
.end method

.method static readLong(Ljava/io/InputStream;)J
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0xff

    .line 521
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    .line 520
    const-wide/16 v4, 0x0

    .line 521
    or-long v0, v4, v2

    .line 522
    .local v0, "n":J
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 523
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 524
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 525
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 526
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 527
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 528
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 529
    return-wide v0
.end method

.method static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 540
    .local v1, "n":I
    invoke-static {p0, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 541
    .local v0, "b":[B
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method static readStringStringMap(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    move-result v3

    .line 558
    .local v3, "size":I
    if-nez v3, :cond_0

    .line 559
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 561
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 562
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 560
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 566
    .restart local v0    # "i":I
    :cond_1
    return-object v2
.end method

.method private removeEntry(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 312
    .local v0, "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    if-eqz v0, :cond_0

    .line 313
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v4, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 314
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_0
    return-void
.end method

.method private static streamToBytes(Ljava/io/InputStream;I)[B
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    new-array v0, p1, [B

    .line 324
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 325
    .local v2, "pos":I
    :goto_0
    if-ge v2, p1, :cond_0

    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 326
    add-int/2addr v2, v1

    goto :goto_0

    .line 328
    .end local v1    # "count":I
    :cond_0
    if-eq v2, p1, :cond_1

    .line 329
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes, read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 331
    :cond_1
    return-object v0
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 494
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 495
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 496
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 492
    return-void
.end method

.method static writeLong(Ljava/io/OutputStream;J)V
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 510
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 511
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 512
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 513
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 514
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 515
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 516
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 508
    return-void
.end method

.method static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 534
    .local v0, "b":[B
    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 535
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 532
    return-void
.end method

.method static writeStringStringMap(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 546
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 547
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 548
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 549
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 544
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 92
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 93
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 94
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 98
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 99
    const-string/jumbo v2, "Cache cleared."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 90
    return-void

    .end local v1    # "files":[Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v7, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    .local v4, "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    if-nez v4, :cond_0

    monitor-exit p0

    .line 110
    return-object v12

    .line 113
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 114
    .local v5, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 116
    .local v0, "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :try_start_2
    new-instance v1, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v8, 0x0

    invoke-direct {v1, v7, v8}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .end local v0    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .local v1, "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :try_start_3
    invoke-static {v1}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 118
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v1}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->-get0(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)I

    move-result v7

    int-to-long v10, v7

    sub-long/2addr v8, v10

    long-to-int v7, v8

    invoke-static {v1, v7}, Lcom/android/volley/toolbox/DiskBasedCache;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    .line 119
    .local v2, "data":[B
    invoke-virtual {v4, v2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->toCacheEntry([B)Lcom/android/volley/Cache$Entry;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v7

    .line 125
    if-eqz v1, :cond_1

    .line 127
    :try_start_4
    invoke-virtual {v1}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    monitor-exit p0

    .line 119
    return-object v7

    .line 128
    :catch_0
    move-exception v6

    .local v6, "ioe":Ljava/io/IOException;
    monitor-exit p0

    .line 129
    return-object v12

    .line 120
    .end local v1    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .end local v2    # "data":[B
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v0    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :catch_1
    move-exception v3

    .line 121
    .end local v0    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .local v3, "e":Ljava/io/IOException;
    :goto_0
    :try_start_5
    const-string/jumbo v7, "%s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    if-eqz v0, :cond_2

    .line 127
    :try_start_6
    invoke-virtual {v0}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    monitor-exit p0

    .line 123
    return-object v12

    .line 128
    :catch_2
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    monitor-exit p0

    .line 129
    return-object v12

    .line 124
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 125
    :goto_1
    if-eqz v0, :cond_3

    .line 127
    :try_start_7
    invoke-virtual {v0}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 124
    :cond_3
    :try_start_8
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v4    # "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v5    # "file":Ljava/io/File;
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 128
    .restart local v4    # "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .restart local v5    # "file":Ljava/io/File;
    :catch_3
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    monitor-exit p0

    .line 129
    return-object v12

    .line 124
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v1    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .local v0, "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    goto :goto_1

    .line 120
    .end local v0    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v1    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v0    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    goto :goto_0
.end method

.method public getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized initialize()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v8, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 142
    iget-object v7, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_0

    .line 143
    const-string/jumbo v7, "Unable to create cache dir %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    monitor-exit p0

    .line 145
    return-void

    .line 148
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 149
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_2

    monitor-exit p0

    .line 150
    return-void

    .line 152
    :cond_2
    :try_start_2
    array-length v8, v3

    :goto_0
    if-ge v7, v8, :cond_7

    aget-object v2, v3, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 155
    .local v4, "fis":Ljava/io/BufferedInputStream;
    :try_start_3
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .local v5, "fis":Ljava/io/BufferedInputStream;
    :try_start_4
    invoke-static {v5}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    move-result-object v1

    .line 157
    .local v1, "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 158
    iget-object v9, v1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v9, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 165
    if-eqz v5, :cond_3

    .line 166
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    :goto_1
    move-object v4, v5

    .line 152
    .end local v1    # "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 168
    .restart local v1    # "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .restart local v5    # "fis":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v6

    .local v6, "ignored":Ljava/io/IOException;
    goto :goto_1

    .line 159
    .end local v1    # "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .end local v6    # "ignored":Ljava/io/IOException;
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v0

    .line 160
    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    if-eqz v2, :cond_5

    .line 161
    :try_start_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 165
    :cond_5
    if-eqz v4, :cond_4

    .line 166
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 168
    :catch_2
    move-exception v6

    .restart local v6    # "ignored":Ljava/io/IOException;
    goto :goto_2

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 165
    :goto_4
    if-eqz v4, :cond_6

    .line 166
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 163
    :cond_6
    :goto_5
    :try_start_9
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 168
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "files":[Ljava/io/File;
    :catch_3
    move-exception v6

    .restart local v6    # "ignored":Ljava/io/IOException;
    goto :goto_5

    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "ignored":Ljava/io/IOException;
    :cond_7
    monitor-exit p0

    .line 140
    return-void

    .line 163
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .local v4, "fis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 159
    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .restart local v5    # "fis":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fullExpire"    # Z

    .prologue
    monitor-enter p0

    .line 180
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    .line 181
    .local v0, "entry":Lcom/android/volley/Cache$Entry;
    if-eqz v0, :cond_1

    .line 182
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 183
    if-eqz p2, :cond_0

    .line 184
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 186
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 179
    return-void

    .end local v0    # "entry":Lcom/android/volley/Cache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/volley/Cache$Entry;

    .prologue
    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v6, p2, Lcom/android/volley/Cache$Entry;->data:[B

    array-length v6, v6

    invoke-direct {p0, v6}, Lcom/android/volley/toolbox/DiskBasedCache;->pruneIfNeeded(I)V

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 199
    .local v3, "file":Ljava/io/File;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 200
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v1, p1, p2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 201
    .local v1, "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    invoke-virtual {v1, v4}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->writeHeader(Ljava/io/OutputStream;)Z

    move-result v5

    .line 202
    .local v5, "success":Z
    if-nez v5, :cond_1

    .line 203
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 204
    const-string/jumbo v6, "Failed to write header for %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .end local v1    # "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "success":Z
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 214
    .local v0, "deleted":Z
    if-nez v0, :cond_0

    .line 215
    const-string/jumbo v6, "Could not clean up file %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    .line 195
    return-void

    .line 207
    .end local v0    # "deleted":Z
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "success":Z
    :cond_1
    :try_start_3
    iget-object v6, p2, Lcom/android/volley/Cache$Entry;->data:[B

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 208
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 209
    invoke-direct {p0, p1, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 210
    return-void

    .end local v1    # "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "success":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 224
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 225
    .local v0, "deleted":Z
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->removeEntry(Ljava/lang/String;)V

    .line 226
    if-nez v0, :cond_0

    .line 227
    const-string/jumbo v1, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 228
    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 227
    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 223
    return-void

    .end local v0    # "deleted":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
