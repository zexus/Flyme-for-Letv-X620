.class Landroid/media/MediaPlayer$4;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$fd3:Ljava/io/FileDescriptor;

.field final synthetic val$length2:J

.field final synthetic val$offset2:J

.field final synthetic val$thread:Landroid/os/HandlerThread;

.field final synthetic val$track:Landroid/media/SubtitleTrack;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V
    .locals 1
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .param p2, "val$fd3"    # Ljava/io/FileDescriptor;
    .param p3, "val$offset2"    # J
    .param p5, "val$length2"    # J
    .param p7, "val$track"    # Landroid/media/SubtitleTrack;
    .param p8, "val$thread"    # Landroid/os/HandlerThread;

    .prologue
    .line 2709
    iput-object p1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    iput-wide p3, p0, Landroid/media/MediaPlayer$4;->val$offset2:J

    iput-wide p5, p0, Landroid/media/MediaPlayer$4;->val$length2:J

    iput-object p7, p0, Landroid/media/MediaPlayer$4;->val$track:Landroid/media/SubtitleTrack;

    iput-object p8, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .locals 13

    .prologue
    .line 2711
    const/4 v5, 0x0

    .line 2712
    .local v5, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2714
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v9, p0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    iget-wide v10, p0, Landroid/media/MediaPlayer$4;->val$offset2:J

    sget v12, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-interface {v8, v9, v10, v11, v12}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 2715
    const/16 v8, 0x1000

    new-array v1, v8, [B

    .line 2716
    .local v1, "buffer":[B
    const-wide/16 v6, 0x0

    .local v6, "total":J
    :goto_0
    iget-wide v8, p0, Landroid/media/MediaPlayer$4;->val$length2:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_0

    .line 2717
    array-length v8, v1

    int-to-long v8, v8

    iget-wide v10, p0, Landroid/media/MediaPlayer$4;->val$length2:J

    sub-long/2addr v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v3, v8

    .line 2718
    .local v3, "bytesToRead":I
    iget-object v8, p0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    const/4 v9, 0x0

    invoke-static {v8, v1, v9, v3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    .line 2719
    .local v2, "bytes":I
    if-gez v2, :cond_1

    .line 2726
    .end local v2    # "bytes":I
    .end local v3    # "bytesToRead":I
    :cond_0
    iget-object v8, p0, Landroid/media/MediaPlayer$4;->val$track:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-wide/16 v10, -0x1

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v12, v10, v11}, Landroid/media/SubtitleTrack;->onData([BZJ)V

    .line 2727
    const/16 v8, 0x323

    return v8

    .line 2722
    .restart local v2    # "bytes":I
    .restart local v3    # "bytesToRead":I
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2723
    int-to-long v8, v2

    add-long/2addr v6, v8

    goto :goto_0

    .line 2728
    .end local v1    # "buffer":[B
    .end local v2    # "bytes":I
    .end local v3    # "bytesToRead":I
    .end local v6    # "total":J
    :catch_0
    move-exception v4

    .line 2729
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "MediaPlayer"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2730
    const/16 v8, 0x384

    return v8

    .line 2731
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    throw v8
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2743
    invoke-direct {p0}, Landroid/media/MediaPlayer$4;->addTrack()I

    move-result v1

    .line 2744
    .local v1, "res":I
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2745
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2746
    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2748
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    .line 2742
    return-void
.end method
