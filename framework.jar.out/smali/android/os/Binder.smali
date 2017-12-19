.class public Landroid/os/Binder;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# static fields
.field private static final CHECK_PARCEL_SIZE:Z = false

.field private static final FIND_POTENTIAL_LEAKS:Z = false

.field static final TAG:Ljava/lang/String; = "Binder"

.field private static sDumpDisabled:Ljava/lang/String;


# instance fields
.field private mDescriptor:Ljava/lang/String;

.field private mObject:J

.field private mOwner:Landroid/os/IInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-direct {p0}, Landroid/os/Binder;->init()V

    .line 204
    return-void
.end method

.method public static final native blockUntilThreadAvailable()V
.end method

.method static checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V
    .locals 0
    .param p0, "obj"    # Landroid/os/IBinder;
    .param p1, "code"    # I
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 420
    return-void
.end method

.method public static final native clearCallingIdentity()J
.end method

.method private final native destroy()V
.end method

.method private execTransact(IJJI)Z
    .locals 12
    .param p1, "code"    # I
    .param p2, "dataObj"    # J
    .param p4, "replyObj"    # J
    .param p6, "flags"    # I

    .prologue
    .line 449
    invoke-static {p2, p3}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v1

    .line 450
    .local v1, "data":Landroid/os/Parcel;
    invoke-static/range {p4 .. p5}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v6

    .line 458
    .local v6, "reply":Landroid/os/Parcel;
    :try_start_0
    move/from16 v0, p6

    invoke-virtual {p0, p1, v1, v6, v0}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 486
    :goto_0
    const-string/jumbo v8, "Unreasonably large binder reply buffer"

    invoke-static {p0, p1, v6, v8}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 497
    return v7

    .line 477
    :catch_0
    move-exception v3

    .line 479
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v8, "Binder"

    const-string/jumbo v9, "Caught an OutOfMemoryError from the binder stub implementation."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Out of memory"

    invoke-direct {v5, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    .local v5, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 482
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 483
    invoke-virtual {v6, v5}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 484
    const/4 v7, 0x1

    .local v7, "res":Z
    goto :goto_0

    .line 468
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    .end local v5    # "re":Ljava/lang/RuntimeException;
    .end local v7    # "res":Z
    :catch_1
    move-exception v4

    .line 469
    .local v4, "e":Ljava/lang/RuntimeException;
    and-int/lit8 v8, p6, 0x1

    if-eqz v8, :cond_0

    .line 470
    const-string/jumbo v8, "Binder"

    const-string/jumbo v9, "Caught a RuntimeException from the binder stub implementation."

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    :goto_1
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 476
    const/4 v7, 0x1

    .restart local v7    # "res":Z
    goto :goto_0

    .line 472
    .end local v7    # "res":Z
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 473
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 459
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 460
    .local v2, "e":Landroid/os/RemoteException;
    and-int/lit8 v8, p6, 0x1

    if-eqz v8, :cond_1

    .line 461
    const-string/jumbo v8, "Binder"

    const-string/jumbo v9, "Binder call failed."

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    :goto_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 467
    const/4 v7, 0x1

    .restart local v7    # "res":Z
    goto :goto_0

    .line 463
    .end local v7    # "res":Z
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 464
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public static final native flushPendingCommands()V
.end method

.method public static final native getCallingPid()I
.end method

.method public static final native getCallingUid()I
.end method

.method public static final getCallingUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public static final native getThreadStrictModePolicy()I
.end method

.method private final native init()V
.end method

.method public static final isProxy(Landroid/os/IInterface;)Z
    .locals 1
    .param p0, "iface"    # Landroid/os/IInterface;

    .prologue
    .line 191
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final native joinThreadPool()V
.end method

.method public static final native restoreCallingIdentity(J)V
.end method

.method public static setDumpDisabled(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 276
    const-class v0, Landroid/os/Binder;

    monitor-enter v0

    .line 277
    :try_start_0
    sput-object p0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 275
    return-void

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final native setThreadStrictModePolicy(I)V
.end method


# virtual methods
.method public attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Landroid/os/IInterface;
    .param p2, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    .line 225
    iput-object p2, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 223
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 379
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 322
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 323
    .local v3, "fout":Ljava/io/FileOutputStream;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v4, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 326
    .local v4, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-class v5, Landroid/os/Binder;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 327
    :try_start_1
    sget-object v0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "disabled":Ljava/lang/String;
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 329
    if-nez v0, :cond_0

    .line 331
    :try_start_3
    invoke-virtual {p0, p1, v4, p2}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 348
    :goto_0
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 321
    return-void

    .line 326
    .end local v0    # "disabled":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 347
    :catchall_1
    move-exception v5

    .line 348
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 347
    throw v5

    .line 335
    .restart local v0    # "disabled":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 340
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 341
    const-string/jumbo v5, "Exception occurred while dumping:"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 332
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Security exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    throw v1

    .line 345
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    sget-object v5, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 357
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 358
    .local v6, "fout":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v6}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 359
    .local v3, "pw":Ljava/io/PrintWriter;
    new-instance v0, Landroid/os/Binder$1;

    const-string/jumbo v2, "Binder.dumpAsync"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/Binder$1;-><init>(Landroid/os/Binder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 368
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 356
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 414
    :try_start_0
    invoke-direct {p0}, Landroid/os/Binder;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 412
    return-void

    .line 415
    :catchall_0
    move-exception v0

    .line 416
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 415
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .prologue
    .line 402
    return-void
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 289
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    return v4

    .line 292
    :cond_0
    const v3, 0x5f444d50

    if-ne p1, v3, :cond_3

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 294
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "args":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 297
    :try_start_0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 307
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    :goto_1
    return v4

    .line 301
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 298
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 300
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 298
    :goto_2
    throw v3

    .line 301
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 310
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    goto :goto_1

    .line 314
    .end local v0    # "args":[Ljava/lang/String;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public pingBinder()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    return-object v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 389
    if-eqz p2, :cond_0

    .line 390
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 392
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 393
    .local v0, "r":Z
    if-eqz p3, :cond_1

    .line 394
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 396
    :cond_1
    return v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .prologue
    .line 409
    const/4 v0, 0x1

    return v0
.end method
