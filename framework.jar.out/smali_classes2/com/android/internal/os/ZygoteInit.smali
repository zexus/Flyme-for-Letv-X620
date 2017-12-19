.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    }
.end annotation


# static fields
.field private static final ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field static DEBUG_ZYGOTE_ON_DEMAND:Z = false

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field static MTPROF_DISABLE:Z = false

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final PRELOAD_GC_THRESHOLD:I

.field private static final PRELOAD_RESOURCES:Z = true

.field private static final PROPERTY_DISABLE_OPENGL_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final PROP_ZYGOTE_ON_DEMAND_DEBUG:Ljava/lang/String; = "persist.sys.mtk_zygote_debug"

.field private static final PROP_ZYGOTE_ON_DEMAND_ENABLE:Ljava/lang/String; = "ro.mtk_gmo_zygote_on_demand"

.field private static final PROP_ZYGOTE_ON_DEMAND_PRELOAD:Ljava/lang/String; = "persist.sys.mtk_zygote_preload"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final TAG1:Ljava/lang/String; = "Plug-PluginLoad"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field private static final heapgrowthlimit:Ljava/lang/String;

.field private static mResources:Landroid/content/res/Resources;

.field private static sServerSocket:Landroid/net/LocalServerSocket;

.field static final sZygoteOnDemandEnabled:Z

.field static sZygoteReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    const-string/jumbo v0, "dalvik.vm.heapgrowthlimit"

    const-string/jumbo v1, "64m"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    sput-object v0, Lcom/android/internal/os/ZygoteInit;->heapgrowthlimit:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->heapgrowthlimit:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/os/ZygoteInit;->heapgrowthlimit:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x20

    sput v0, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    .line 109
    const-string/jumbo v0, "ro.mtk_gmo_zygote_on_demand"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->sZygoteOnDemandEnabled:Z

    .line 111
    const-string/jumbo v0, "persist.sys.mtk_zygote_debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 110
    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->DEBUG_ZYGOTE_ON_DEMAND:Z

    .line 113
    sput-boolean v2, Lcom/android/internal/os/ZygoteInit;->sZygoteReady:Z

    .line 80
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 3
    .param p0, "abiList"    # Ljava/lang/String;

    .prologue
    .line 189
    :try_start_0
    new-instance v1, Lcom/android/internal/os/ZygoteConnection;

    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 192
    const-string/jumbo v2, "IOException during accept()"

    .line 191
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 7
    .param p0, "bootevent"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-boolean v4, Lcom/android/internal/os/ZygoteInit;->MTPROF_DISABLE:Z

    if-nez v4, :cond_0

    .line 134
    const/4 v2, 0x0

    .line 136
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string/jumbo v4, "/proc/bootprof"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 138
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    if-eqz v3, :cond_0

    .line 146
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 147
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "BOOTPROF"

    const-string/jumbo v5, "Failure close /proc/bootprof entry"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 141
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 142
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string/jumbo v4, "BOOTPROF"

    const-string/jumbo v5, "Failure open /proc/bootprof entry"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    if-eqz v2, :cond_0

    .line 146
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 147
    :catch_2
    move-exception v1

    .line 148
    const-string/jumbo v4, "BOOTPROF"

    const-string/jumbo v5, "Failure close /proc/bootprof entry"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 139
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 140
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string/jumbo v4, "BOOTPROF"

    const-string/jumbo v5, "Failure open /proc/bootprof, not found!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 144
    if-eqz v2, :cond_0

    .line 146
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 147
    :catch_4
    move-exception v1

    .line 148
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "BOOTPROF"

    const-string/jumbo v5, "Failure close /proc/bootprof entry"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 143
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 144
    :goto_3
    if-eqz v2, :cond_1

    .line 146
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 143
    :cond_1
    :goto_4
    throw v4

    .line 147
    :catch_5
    move-exception v1

    .line 148
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "BOOTPROF"

    const-string/jumbo v6, "Failure close /proc/bootprof entry"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 143
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 139
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 141
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method static closeServerSocket()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 202
    :try_start_0
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v3, :cond_0

    .line 203
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 204
    .local v2, "fd":Ljava/io/FileDescriptor;
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->close()V

    .line 205
    if-eqz v2, :cond_0

    .line 206
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    sput-object v5, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    .line 200
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string/jumbo v3, "Zygote"

    const-string/jumbo v4, "Zygote:  error closing descriptor"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 209
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    .line 210
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "Zygote"

    const-string/jumbo v4, "Zygote:  error closing sockets"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static gcAndFinalize()V
    .locals 1

    .prologue
    .line 501
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 506
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 507
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 508
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 500
    return-void
.end method

.method static getServerSocketFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 9
    .param p0, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 518
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 521
    sget v0, Landroid/system/OsConstants;->S_IRWXG:I

    sget v1, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v0, v1

    invoke-static {v0}, Landroid/system/Os;->umask(I)I

    .line 523
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 527
    :cond_0
    const-string/jumbo v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 528
    .local v8, "systemServerClasspath":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 529
    invoke-static {v8}, Lcom/android/internal/os/ZygoteInit;->performSystemServerDexOpt(Ljava/lang/String;)V

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 533
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 537
    .local v5, "args":[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 538
    array-length v0, v5

    add-int/lit8 v0, v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    .line 539
    .local v6, "amendedArgs":[Ljava/lang/String;
    const-string/jumbo v0, "-cp"

    aput-object v0, v6, v3

    .line 540
    const/4 v0, 0x1

    aput-object v8, v6, v0

    .line 541
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    invoke-static {v0, v3, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    .end local v6    # "amendedArgs":[Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 545
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    .line 546
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v3

    .line 544
    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 516
    .end local v5    # "args":[Ljava/lang/String;
    :goto_0
    return-void

    .line 548
    :cond_3
    const/4 v7, 0x0

    .line 549
    .local v7, "cl":Ljava/lang/ClassLoader;
    if-eqz v8, :cond_4

    .line 550
    new-instance v7, Ldalvik/system/PathClassLoader;

    .end local v7    # "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 551
    .local v7, "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 557
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    :cond_4
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v7}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method private static hasSecondZygote(Ljava/lang/String;)Z
    .locals 1
    .param p0, "abiList"    # Ljava/lang/String;

    .prologue
    .line 784
    const-string/jumbo v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 667
    const-string/jumbo v6, "persist.sys.mtk_zygote_debug"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 666
    sput-boolean v6, Lcom/android/internal/os/ZygoteInit;->DEBUG_ZYGOTE_ON_DEMAND:Z

    .line 668
    sget-boolean v6, Lcom/android/internal/os/ZygoteInit;->DEBUG_ZYGOTE_ON_DEMAND:Z

    if-eqz v6, :cond_0

    .line 669
    const-string/jumbo v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ZygoteOnDemand: Zygote ready = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/internal/os/ZygoteInit;->sZygoteReady:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    const-string/jumbo v4, "zygote"

    .line 675
    .local v4, "socketName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->enableDdms()V

    .line 678
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/internal/os/ZygoteInit;->MTPROF_DISABLE:Z

    .line 680
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 682
    const/4 v5, 0x0

    .line 683
    .local v5, "startSystemServer":Z
    const/4 v0, 0x0

    .line 684
    .local v0, "abiList":Ljava/lang/String;
    const/4 v3, 0x1

    .end local v0    # "abiList":Ljava/lang/String;
    .local v3, "i":I
    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_4

    .line 685
    const-string/jumbo v6, "start-system-server"

    aget-object v7, p0, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 686
    const/4 v5, 0x1

    .line 684
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 687
    :cond_1
    aget-object v6, p0, v3

    const-string/jumbo v7, "--abi-list="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 688
    aget-object v6, p0, v3

    const-string/jumbo v7, "--abi-list="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "abiList":Ljava/lang/String;
    goto :goto_1

    .line 689
    .end local v0    # "abiList":Ljava/lang/String;
    :cond_2
    aget-object v6, p0, v3

    const-string/jumbo v7, "--socket-name="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 690
    aget-object v6, p0, v3

    const-string/jumbo v7, "--socket-name="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 692
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown command line argument: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 748
    .end local v3    # "i":I
    .end local v5    # "startSystemServer":Z
    :catch_0
    move-exception v1

    .line 749
    .local v1, "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    .line 757
    .end local v1    # "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    :goto_2
    const-string/jumbo v6, "ZygoteOnDemand: End of main function"

    invoke-static {v6, v4}, Lcom/android/internal/os/ZygoteInit;->zygoteStopping(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    return-void

    .line 696
    .restart local v3    # "i":I
    .restart local v5    # "startSystemServer":Z
    :cond_4
    if-nez v0, :cond_5

    .line 697
    :try_start_1
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "No ABI list supplied."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 750
    .end local v3    # "i":I
    .end local v5    # "startSystemServer":Z
    :catch_1
    move-exception v2

    .line 751
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "Zygote died with exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 753
    throw v2

    .line 700
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "i":I
    .restart local v5    # "startSystemServer":Z
    :cond_5
    :try_start_2
    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->registerZygoteSocket(Ljava/lang/String;)V

    .line 702
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 701
    const/16 v8, 0xbcc

    invoke-static {v8, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 704
    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "Zygote:Preload Start"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/internal/os/ZygoteInit;->addBootEvent(Ljava/lang/String;)V

    .line 708
    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->preloadByName(Ljava/lang/String;)V

    .line 713
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 712
    const/16 v8, 0xbd6

    invoke-static {v8, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 716
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeZygoteSnapshot()V

    .line 719
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    .line 723
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/os/Trace;->setTracingEnabled(Z)V

    .line 726
    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "Zygote:Preload End"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/internal/os/ZygoteInit;->addBootEvent(Ljava/lang/String;)V

    .line 728
    if-eqz v5, :cond_6

    .line 729
    invoke-static {v0, v4}, Lcom/android/internal/os/ZygoteInit;->startSystemServer(Ljava/lang/String;Ljava/lang/String;)Z

    .line 733
    :cond_6
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/internal/os/ZygoteInit;->sZygoteReady:Z

    .line 734
    sget-boolean v6, Lcom/android/internal/os/ZygoteInit;->DEBUG_ZYGOTE_ON_DEMAND:Z

    if-eqz v6, :cond_7

    .line 735
    const-string/jumbo v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ZygoteOnDemand: Zygote ready = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/internal/os/ZygoteInit;->sZygoteReady:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 736
    const-string/jumbo v8, ", socket name: "

    .line 735
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_7
    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "Accepting command socket connections"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->runSelectLoop(Ljava/lang/String;)V

    .line 744
    const-string/jumbo v6, "ZygoteOnDemand: End of runSelectLoop"

    invoke-static {v6, v4}, Lcom/android/internal/os/ZygoteInit;->zygoteStopping(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V
    :try_end_2
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method private static performSystemServerDexOpt(Ljava/lang/String;)V
    .locals 10
    .param p0, "classPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 568
    const-string/jumbo v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 569
    .local v6, "classPathElements":[Ljava/lang/String;
    new-instance v0, Lcom/android/internal/os/InstallerConnection;

    invoke-direct {v0}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    .line 570
    .local v0, "installer":Lcom/android/internal/os/InstallerConnection;
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->waitForConnection()V

    .line 571
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v4

    .line 574
    .local v4, "instructionSet":Ljava/lang/String;
    :try_start_0
    array-length v9, v6

    move v8, v2

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v1, v6, v8

    .line 576
    .local v1, "classPathElement":Ljava/lang/String;
    const-string/jumbo v2, "*"

    const/4 v3, 0x0

    .line 575
    invoke-static {v1, v2, v4, v3}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v5

    .line 577
    .local v5, "dexoptNeeded":I
    if-eqz v5, :cond_0

    .line 578
    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    :cond_0
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    .line 585
    .end local v1    # "classPathElement":Ljava/lang/String;
    .end local v5    # "dexoptNeeded":I
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    .line 567
    return-void

    .line 582
    :catch_0
    move-exception v7

    .line 583
    .local v7, "ioe":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Error starting system_server"

    invoke-direct {v2, v3, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 584
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 585
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    .line 584
    throw v2
.end method

.method private static varargs posixCapabilitiesAsBits([I)J
    .locals 8
    .param p0, "capabilities"    # [I

    .prologue
    const/4 v1, 0x0

    .line 654
    const-wide/16 v2, 0x0

    .line 655
    .local v2, "result":J
    array-length v4, p0

    :goto_0
    if-ge v1, v4, :cond_2

    aget v0, p0, v1

    .line 656
    .local v0, "capability":I
    if-ltz v0, :cond_0

    sget v5, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    if-le v0, v5, :cond_1

    .line 657
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 659
    :cond_1
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    .end local v0    # "capability":I
    :cond_2
    return-wide v2
.end method

.method static preload()V
    .locals 2

    .prologue
    .line 266
    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "begin preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string/jumbo v0, "Plug-PluginLoad"

    const-string/jumbo v1, "preloadMappingTable() -- start "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {}, Lcom/mediatek/common/PluginLoader;->preloadPluginInfo()V

    .line 269
    const-string/jumbo v0, "Plug-PluginLoad"

    const-string/jumbo v1, "preloadMappingTable() -- end "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 271
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    .line 272
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    .line 273
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    .line 274
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    .line 277
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 278
    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "end preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method static preloadByName(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 237
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sZygoteOnDemandEnabled:Z

    if-eqz v0, :cond_1

    .line 238
    const-string/jumbo v0, "zygote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preload()V

    .line 236
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSecondary()V

    goto :goto_0

    .line 244
    :cond_1
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preload()V

    goto :goto_0
.end method

.method private static preloadClasses()V
    .locals 26

    .prologue
    .line 306
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v17

    .line 310
    .local v17, "runtime":Ldalvik/system/VMRuntime;
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    const-string/jumbo v21, "/system/etc/preloaded-classes"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .local v13, "is":Ljava/io/InputStream;
    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Preloading classes..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 320
    .local v18, "startTime":J
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v16

    .line 321
    .local v16, "reuid":I
    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v15

    .line 326
    .local v15, "regid":I
    const/4 v7, 0x0

    .line 327
    .local v7, "droppedPriviliges":Z
    if-nez v16, :cond_0

    if-nez v15, :cond_0

    .line 329
    const/16 v21, 0x0

    const/16 v22, 0x270f

    :try_start_1
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V

    .line 330
    const/16 v21, 0x0

    const/16 v22, 0x270f

    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    const/4 v7, 0x1

    .line 340
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v6

    .line 341
    .local v6, "defaultUtilization":F
    const v21, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 344
    const/4 v5, 0x0

    .line 347
    .local v5, "count":I
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v22, 0x100

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 350
    .local v4, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "line":Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 352
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 353
    const-string/jumbo v21, "#"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v21

    if-nez v21, :cond_1

    .line 366
    const/16 v21, 0x1

    const/16 v22, 0x0

    :try_start_3
    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v14, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 311
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v6    # "defaultUtilization":F
    .end local v7    # "droppedPriviliges":Z
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "regid":I
    .end local v16    # "reuid":I
    .end local v18    # "startTime":J
    :catch_0
    move-exception v8

    .line 312
    .local v8, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 331
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "droppedPriviliges":Z
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v15    # "regid":I
    .restart local v16    # "reuid":I
    .restart local v18    # "startTime":J
    :catch_1
    move-exception v12

    .line 332
    .local v12, "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to drop root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 372
    .end local v12    # "ex":Landroid/system/ErrnoException;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v6    # "defaultUtilization":F
    .restart local v14    # "line":Ljava/lang/String;
    :catch_2
    move-exception v20

    .line 373
    .local v20, "t":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Error preloading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Error;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 375
    check-cast v20, Ljava/lang/Error;

    .end local v20    # "t":Ljava/lang/Throwable;
    throw v20
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 386
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v14    # "line":Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 387
    .local v9, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Error reading /system/etc/preloaded-classes."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 389
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 391
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 394
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 397
    if-eqz v7, :cond_2

    .line 399
    const/16 v21, 0x0

    const/16 v22, 0x0

    :try_start_6
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V

    .line 400
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_7

    .line 406
    :cond_2
    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Zygote:Preload "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " classes in "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v18

    .line 406
    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 407
    const-string/jumbo v23, "ms"

    .line 406
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Lcom/android/internal/os/ZygoteInit;->addBootEvent(Ljava/lang/String;)V

    .line 305
    .end local v9    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 377
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v20    # "t":Ljava/lang/Throwable;
    :cond_3
    :try_start_7
    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/RuntimeException;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 378
    check-cast v20, Ljava/lang/RuntimeException;

    .end local v20    # "t":Ljava/lang/Throwable;
    throw v20
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 388
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v14    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v21

    .line 389
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 391
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 394
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 397
    if-eqz v7, :cond_4

    .line 399
    const/16 v22, 0x0

    const/16 v23, 0x0

    :try_start_8
    invoke-static/range {v22 .. v23}, Landroid/system/Os;->setreuid(II)V

    .line 400
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/system/Os;->setregid(II)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_8

    .line 406
    :cond_4
    new-instance v22, Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Zygote:Preload "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " classes in "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v18

    .line 406
    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 407
    const-string/jumbo v24, "ms"

    .line 406
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Lcom/android/internal/os/ZygoteInit;->addBootEvent(Ljava/lang/String;)V

    .line 388
    throw v21

    .line 380
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v20    # "t":Ljava/lang/Throwable;
    :cond_5
    :try_start_9
    new-instance v21, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    .line 370
    .end local v20    # "t":Ljava/lang/Throwable;
    :catch_4
    move-exception v11

    .line 371
    .local v11, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Problem preloading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 368
    .end local v11    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_5
    move-exception v10

    .line 369
    .local v10, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Class not found for preloading: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 384
    .end local v10    # "e":Ljava/lang/ClassNotFoundException;
    :cond_6
    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "...preloaded "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " classes in "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v18

    .line 384
    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 385
    const-string/jumbo v23, "ms."

    .line 384
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 389
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 391
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 394
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 397
    if-eqz v7, :cond_7

    .line 399
    const/16 v21, 0x0

    const/16 v22, 0x0

    :try_start_a
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V

    .line 400
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_6

    .line 406
    :cond_7
    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Zygote:Preload "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " classes in "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v18

    .line 406
    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 407
    const-string/jumbo v23, "ms"

    .line 406
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Lcom/android/internal/os/ZygoteInit;->addBootEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 401
    :catch_6
    move-exception v12

    .line 402
    .restart local v12    # "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to restore root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 401
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v12    # "ex":Landroid/system/ErrnoException;
    .end local v14    # "line":Ljava/lang/String;
    .restart local v9    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v12

    .line 402
    .restart local v12    # "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to restore root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 401
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "ex":Landroid/system/ErrnoException;
    :catch_8
    move-exception v12

    .line 402
    .restart local v12    # "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to restore root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21
.end method

.method private static preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 457
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 458
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 459
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 463
    .local v2, "id":I
    if-eqz v2, :cond_0

    .line 464
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 465
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 467
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 466
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 468
    const-string/jumbo v5, " ("

    .line 466
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 468
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 466
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 468
    const-string/jumbo v5, ")"

    .line 466
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 465
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 458
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    .end local v2    # "id":I
    :cond_1
    return v0
.end method

.method private static preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 477
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 478
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 479
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 483
    .local v2, "id":I
    if-eqz v2, :cond_0

    .line 484
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 485
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 487
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 486
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 488
    const-string/jumbo v5, " ("

    .line 486
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 488
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 486
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 488
    const-string/jumbo v5, ")"

    .line 486
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 485
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 478
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    .end local v2    # "id":I
    :cond_1
    return v0
.end method

.method private static preloadOpenGL()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    const-string/jumbo v0, "ro.zygote.disable_gl_preload"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 288
    :cond_0
    return-void
.end method

.method private static preloadResources()V
    .locals 10

    .prologue
    .line 420
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    .line 423
    .local v3, "runtime":Ldalvik/system/VMRuntime;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 424
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->startPreloading()V

    .line 426
    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "Preloading resources..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 429
    .local v4, "startTime":J
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 430
    const v7, 0x1070006

    .line 429
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 431
    .local v1, "ar":Landroid/content/res/TypedArray;
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 432
    .local v0, "N":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 433
    const-string/jumbo v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 434
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 433
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 434
    const-string/jumbo v8, "ms."

    .line 433
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Zygote:Preload "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " obtain resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 436
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 435
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 436
    const-string/jumbo v8, "ms"

    .line 435
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/internal/os/ZygoteInit;->addBootEvent(Ljava/lang/String;)V

    .line 438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 439
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 440
    const v7, 0x1070007

    .line 439
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 441
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 442
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 443
    const-string/jumbo v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 444
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 443
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 444
    const-string/jumbo v8, "ms."

    .line 443
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Zygote:Preload "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 446
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 447
    const-string/jumbo v8, "ms"

    .line 446
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/internal/os/ZygoteInit;->addBootEvent(Ljava/lang/String;)V

    .line 450
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v0    # "N":I
    .end local v1    # "ar":Landroid/content/res/TypedArray;
    .end local v4    # "startTime":J
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v2

    .line 452
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "Failure preloading resources"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static preloadSecondary()V
    .locals 3

    .prologue
    .line 249
    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "begin preload 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 252
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "persist.sys.mtk_zygote_preload"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    .line 254
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    .line 255
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    .line 256
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    .line 257
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 260
    :cond_0
    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "end preload 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method private static preloadSharedLibraries()V
    .locals 2

    .prologue
    .line 282
    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "Preloading shared libraries..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string/jumbo v0, "android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 284
    const-string/jumbo v0, "compiler_rt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 285
    const-string/jumbo v0, "jnigraphics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private static preloadTextResources()V
    .locals 0

    .prologue
    .line 295
    invoke-static {}, Landroid/text/Hyphenator;->init()V

    .line 294
    return-void
.end method

.method private static registerZygoteSocket(Ljava/lang/String;)V
    .locals 9
    .param p0, "socketName"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-nez v6, :cond_0

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ANDROID_SOCKET_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "fullSocketName":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "env":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 173
    .local v4, "fileDesc":I
    :try_start_1
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 174
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 175
    new-instance v6, Landroid/net/LocalServerSocket;

    invoke-direct {v6, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v6, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    .end local v0    # "env":Ljava/lang/String;
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "fileDesc":I
    .end local v5    # "fullSocketName":Ljava/lang/String;
    :cond_0
    return-void

    .line 168
    .restart local v5    # "fullSocketName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 169
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " unset or invalid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 176
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "env":Ljava/lang/String;
    .restart local v4    # "fileDesc":I
    :catch_1
    move-exception v1

    .line 177
    .local v1, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error binding to local socket \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 177
    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static runSelectLoop(Ljava/lang/String;)V
    .locals 9
    .param p0, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 825
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v2, "fds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v5, "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    sget-object v7, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v7}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Landroid/system/StructPollfd;

    .line 833
    .local v6, "pollFds":[Landroid/system/StructPollfd;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_1

    .line 834
    new-instance v7, Landroid/system/StructPollfd;

    invoke-direct {v7}, Landroid/system/StructPollfd;-><init>()V

    aput-object v7, v6, v3

    .line 835
    aget-object v8, v6, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/FileDescriptor;

    iput-object v7, v8, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 836
    aget-object v7, v6, v3

    sget v8, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v8, v8

    iput-short v8, v7, Landroid/system/StructPollfd;->events:S

    .line 833
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 839
    :cond_1
    const/4 v7, -0x1

    :try_start_0
    invoke-static {v6, v7}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    array-length v7, v6

    add-int/lit8 v3, v7, -0x1

    :goto_1
    if-ltz v3, :cond_0

    .line 844
    aget-object v7, v6, v3

    iget-short v7, v7, Landroid/system/StructPollfd;->revents:S

    sget v8, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    .line 843
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 840
    :catch_0
    move-exception v1

    .line 841
    .local v1, "ex":Landroid/system/ErrnoException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "poll failed"

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 847
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_3
    if-nez v3, :cond_4

    .line 848
    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v4

    .line 849
    .local v4, "newPeer":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 852
    .end local v4    # "newPeer":Lcom/android/internal/os/ZygoteConnection;
    :cond_4
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v7}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v0

    .line 853
    .local v0, "done":Z
    if-eqz v0, :cond_2

    .line 854
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 855
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2
.end method

.method private static startSystemServer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p0, "abiList"    # Ljava/lang/String;
    .param p1, "socketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 594
    const/16 v1, 0xb

    new-array v1, v1, [I

    .line 595
    sget v2, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 596
    sget v2, Landroid/system/OsConstants;->CAP_KILL:I

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 597
    sget v2, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 598
    sget v2, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 599
    sget v2, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    const/4 v3, 0x4

    aput v2, v1, v3

    .line 600
    sget v2, Landroid/system/OsConstants;->CAP_NET_RAW:I

    const/4 v3, 0x5

    aput v2, v1, v3

    .line 601
    sget v2, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    const/4 v3, 0x6

    aput v2, v1, v3

    .line 602
    sget v2, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    const/4 v3, 0x7

    aput v2, v1, v3

    .line 603
    sget v2, Landroid/system/OsConstants;->CAP_SYS_RESOURCE:I

    const/16 v3, 0x8

    aput v2, v1, v3

    .line 604
    sget v2, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    const/16 v3, 0x9

    aput v2, v1, v3

    .line 605
    sget v2, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    const/16 v3, 0xa

    aput v2, v1, v3

    .line 594
    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v10

    .line 608
    .local v10, "capabilities":J
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    .line 609
    const-string/jumbo v1, "--setuid=1000"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 610
    const-string/jumbo v1, "--setgid=1000"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 611
    const-string/jumbo v1, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1032,3001,3002,3003,3006,3007"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 613
    const-string/jumbo v1, "--nice-name=system_server"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 614
    const-string/jumbo v1, "--runtime-args"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 615
    const-string/jumbo v1, "com.android.server.SystemServer"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 617
    .local v0, "args":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 622
    .local v13, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    new-instance v14, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v14, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .local v14, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_1
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 624
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 628
    iget v1, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v2, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 629
    iget-object v3, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    .line 630
    iget v4, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 632
    iget-wide v6, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 633
    iget-wide v8, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    .line 631
    const/4 v5, 0x0

    .line 627
    invoke-static/range {v1 .. v9}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    .line 639
    .local v15, "pid":I
    if-nez v15, :cond_1

    .line 640
    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    .line 644
    :cond_0
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 647
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 634
    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v15    # "pid":I
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_0
    move-exception v12

    .line 635
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v12, "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 634
    .end local v12    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_1
    move-exception v12

    .restart local v12    # "ex":Ljava/lang/IllegalArgumentException;
    move-object v13, v14

    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v13, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_0
.end method

.method private static waitForSecondaryZygote(Ljava/lang/String;)V
    .locals 7
    .param p0, "socketName"    # Ljava/lang/String;

    .prologue
    .line 788
    const-string/jumbo v4, "zygote"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 789
    const-string/jumbo v2, "zygote_secondary"

    .line 791
    .local v2, "otherZygoteName":Ljava/lang/String;
    :goto_0
    sget-boolean v4, Lcom/android/internal/os/ZygoteInit;->sZygoteOnDemandEnabled:Z

    if-eqz v4, :cond_2

    .line 792
    sget-boolean v4, Lcom/android/internal/os/ZygoteInit;->DEBUG_ZYGOTE_ON_DEMAND:Z

    if-eqz v4, :cond_0

    .line 793
    const-string/jumbo v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ZygoteOnDemand: skip waitForSecondaryZygote: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 794
    const-string/jumbo v6, " wait "

    .line 793
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_0
    return-void

    .line 789
    .end local v2    # "otherZygoteName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "zygote"

    .restart local v2    # "otherZygoteName":Ljava/lang/String;
    goto :goto_0

    .line 805
    :catch_0
    move-exception v1

    .line 806
    .local v1, "ioe":Ljava/io/IOException;
    const-string/jumbo v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got error connecting to zygote, retrying. msg= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 802
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_2
    :goto_1
    :try_start_1
    invoke-static {v2}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v3

    .line 803
    .local v3, "zs":Landroid/os/Process$ZygoteState;
    invoke-virtual {v3}, Landroid/os/Process$ZygoteState;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 787
    return-void

    .line 811
    .end local v3    # "zs":Landroid/os/Process$ZygoteState;
    .restart local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "ie":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private static zygoteStopping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "socketName"    # Ljava/lang/String;

    .prologue
    .line 763
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->sZygoteReady:Z

    .line 764
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->DEBUG_ZYGOTE_ON_DEMAND:Z

    if-eqz v0, :cond_0

    .line 765
    const-string/jumbo v0, "Zygote"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ZygoteOnDemand: zygoteStopping for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_0
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sZygoteOnDemandEnabled:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "zygote_secondary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    invoke-static {}, Landroid/os/Process;->isSecondaryZygoteRunning()Z

    move-result v0

    .line 767
    if-eqz v0, :cond_1

    .line 769
    const-string/jumbo v0, "Zygote"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ZygoteOnDemand: stop secondary Zygote for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 770
    const-string/jumbo v2, ", reason: "

    .line 769
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-static {}, Landroid/os/Process;->stopSecondaryZygote()V

    .line 762
    :cond_1
    return-void
.end method
