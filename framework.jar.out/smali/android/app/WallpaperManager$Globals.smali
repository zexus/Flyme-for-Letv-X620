.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_LOCK_WALLPAPER:I = 0x2

.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultLockWallpaper:Landroid/graphics/Bitmap;

.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mLockWallpaper:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method static synthetic -get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1

    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set1(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set2(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set3(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/app/WallpaperManager$Globals;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->openDefaultWallpaperRes(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 274
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 275
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 276
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 277
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 274
    return-void
.end method

.method private getCurrentLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/WallpaperManager$Globals;->getCurrentLockWallpaperLocked(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentLockWallpaperLocked(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useCache"    # Z

    .prologue
    const/4 v10, 0x0

    .line 389
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-nez v7, :cond_0

    .line 390
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "WallpaperService not running"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-object v10

    .line 396
    :cond_0
    if-eqz p2, :cond_1

    .line 397
    :try_start_0
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7, p0}, Landroid/app/IWallpaperManager;->getLockWallpaperBitmap(Landroid/app/IWallpaperManagerCallback;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 398
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCurrentLockwallpaper by cache bm="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    if-eqz v0, :cond_1

    .line 400
    return-object v0

    .line 404
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 405
    .local v6, "params":Landroid/os/Bundle;
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7, p0, v6}, Landroid/app/IWallpaperManager;->getLockWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 407
    .local v4, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_2

    .line 409
    :try_start_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 411
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    .line 410
    invoke-static {v7, v8, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 417
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 412
    :goto_0
    return-object v0

    .line 418
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 413
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v3

    .line 414
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Can\'t decode file"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    :try_start_4
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 425
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "params":Landroid/os/Bundle;
    :cond_2
    :goto_1
    return-object v10

    .line 418
    .restart local v3    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "params":Landroid/os/Bundle;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 415
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v7

    .line 417
    :try_start_5
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 415
    :goto_2
    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 423
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "params":Landroid/os/Bundle;
    :catch_3
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 418
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "params":Landroid/os/Bundle;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useCache"    # Z

    .prologue
    const/4 v10, 0x0

    .line 474
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-nez v7, :cond_0

    .line 475
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "WallpaperService not running"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-object v10

    .line 480
    :cond_0
    if-eqz p2, :cond_1

    .line 481
    :try_start_0
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7, p0}, Landroid/app/IWallpaperManager;->getWallpaperBitmap(Landroid/app/IWallpaperManagerCallback;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 482
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCurrentWallpaperLocked by cache bm="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    if-eqz v0, :cond_1

    .line 484
    return-object v0

    .line 488
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 489
    .local v6, "params":Landroid/os/Bundle;
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7, p0, v6}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 490
    .local v4, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_2

    .line 492
    :try_start_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 494
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 495
    const/4 v7, 0x1

    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inPostProcFlag:I

    .line 497
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    .line 496
    invoke-static {v7, v8, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 502
    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 496
    :goto_0
    return-object v7

    .line 503
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 498
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v3

    .line 499
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Can\'t decode file"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 502
    :try_start_4
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 511
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "params":Landroid/os/Bundle;
    :cond_2
    :goto_1
    return-object v10

    .line 503
    .restart local v3    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "params":Landroid/os/Bundle;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 500
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v7

    .line 502
    :try_start_5
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 500
    :goto_2
    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 508
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "params":Landroid/os/Bundle;
    :catch_3
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 503
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "params":Landroid/os/Bundle;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method private getDefaultLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:drawable@default_lock_wallpaper#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 439
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 434
    :goto_0
    return-object v4

    .line 440
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 435
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 436
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Can\'t decode stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 439
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 445
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    :goto_1
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "getDefaultLockWallpaperLocked faild!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-object v6

    .line 440
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 437
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    .line 439
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 437
    :goto_2
    throw v4

    .line 440
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    invoke-static {p1}, Landroid/app/WallpaperManager$FlymeInjector;->openFlymeDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v2

    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inPostProcFlag:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 559
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 554
    :goto_0
    return-object v4

    .line 560
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 555
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 556
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Can\'t decode stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 559
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 565
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    :goto_1
    return-object v6

    .line 560
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 557
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    .line 559
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 557
    :goto_2
    throw v4

    .line 560
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method private openDefaultWallpaperRes(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 517
    const/4 v3, 0x0

    .line 518
    .local v3, "mWallpaperPlugin":Lcom/mediatek/common/wallpaper/IWallpaperPlugin;
    const/4 v2, 0x0

    .line 522
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    const-class v4, Lcom/mediatek/common/wallpaper/IWallpaperPlugin;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 521
    invoke-static {v4, p1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/mediatek/common/wallpaper/IWallpaperPlugin;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v3    # "mWallpaperPlugin":Lcom/mediatek/common/wallpaper/IWallpaperPlugin;
    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Lcom/mediatek/common/wallpaper/IWallpaperPlugin;->getPluginResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:drawable@default_wallpaper#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .local v2, "is":Ljava/io/InputStream;
    :goto_1
    return-object v2

    .local v2, "is":Ljava/io/InputStream;
    .restart local v3    # "mWallpaperPlugin":Lcom/mediatek/common/wallpaper/IWallpaperPlugin;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Catch IWallpaperPlugin exception: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mWallpaperPlugin":Lcom/mediatek/common/wallpaper/IWallpaperPlugin;
    :cond_1
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "get the wallpaper image from the plug-in"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-interface {v3, p1}, Lcom/mediatek/common/wallpaper/IWallpaperPlugin;->getPluginResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v4

    .line 533
    invoke-interface {v3}, Lcom/mediatek/common/wallpaper/IWallpaperPlugin;->getPluginDefaultImage()I

    move-result v5

    .line 532
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .local v2, "is":Ljava/io/InputStream;
    goto :goto_1
.end method


# virtual methods
.method public forgetLoadedLockWallpaper()V
    .locals 1

    .prologue
    .line 539
    monitor-enter p0

    .line 540
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 538
    return-void

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 462
    monitor-enter p0

    .line 463
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 461
    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLockWallpaperChanged()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    return-void
.end method

.method public onWallpaperChanged()V
    .locals 1

    .prologue
    .line 304
    monitor-enter p0

    .line 305
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 298
    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public peekLockWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager$Globals;->peekLockWallpaperBitmap(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public peekLockWallpaperBitmap(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "useCache"    # Z

    .prologue
    .line 358
    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 363
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 366
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    :try_start_3
    invoke-direct {p0, p1, p3}, Landroid/app/WallpaperManager$Globals;->getCurrentLockWallpaperLocked(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 372
    :goto_0
    :try_start_4
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 374
    :try_start_5
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 378
    :goto_1
    :try_start_6
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v1

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "No memory load current lock wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 358
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 375
    :catch_1
    move-exception v0

    .line 376
    .restart local v0    # "e":Ljava/lang/OutOfMemoryError;
    :try_start_8
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "No memory load current lock wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 380
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public peekVideoPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 450
    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getVideoPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "videoPath":Ljava/lang/String;
    monitor-exit p0

    .line 453
    return-object v1

    .line 454
    .end local v1    # "videoPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "RemoteException peekVideoPath"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 450
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "useCache"    # Z

    .prologue
    const/4 v4, 0x0

    .line 319
    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 322
    :try_start_1
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0

    .line 323
    return-object v4

    .line 325
    :catch_0
    move-exception v0

    .line 329
    :cond_0
    :try_start_2
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 330
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 332
    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 333
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    .line 335
    :cond_2
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 337
    :try_start_5
    invoke-direct {p0, p1, p3}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 341
    :goto_0
    if-eqz p2, :cond_4

    .line 342
    :try_start_6
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 343
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 344
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v2

    .line 338
    :catch_1
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "No memory load current wallpaper"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 319
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 346
    :cond_3
    const/4 v2, 0x0

    :try_start_8
    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 349
    :cond_4
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v2
.end method
