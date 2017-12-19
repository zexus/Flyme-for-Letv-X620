.class Landroid/net/dhcp/DhcpClient$ReceiveThread;
.super Ljava/lang/Thread;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# instance fields
.field private final mPacket:[B

.field private stopped:Z

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    .line 343
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 345
    const/16 v0, 0x5dc

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->stopped:Z

    .line 343
    return-void
.end method


# virtual methods
.method public halt()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->stopped:Z

    .line 350
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap8(Landroid/net/dhcp/DhcpClient;)V

    .line 348
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 355
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string/jumbo v4, "Receive thread started"

    invoke-static {v3, v4}, Landroid/net/dhcp/DhcpClient;->-wrap9(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 356
    :cond_0
    :goto_0
    iget-boolean v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->stopped:Z

    if-nez v3, :cond_2

    .line 358
    :try_start_0
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v3}, Landroid/net/dhcp/DhcpClient;->-get10(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    iget-object v5, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 359
    .local v1, "length":I
    const/4 v2, 0x0

    .line 360
    .local v2, "packet":Landroid/net/dhcp/DhcpPacket;
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;

    move-result-object v2

    .line 361
    .local v2, "packet":Landroid/net/dhcp/DhcpPacket;
    if-eqz v2, :cond_1

    .line 362
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received packet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/dhcp/DhcpClient;->-wrap9(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 363
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    const v4, 0x30066

    invoke-virtual {v3, v4, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    .end local v1    # "length":I
    .end local v2    # "packet":Landroid/net/dhcp/DhcpPacket;
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->stopped:Z

    if-nez v3, :cond_0

    .line 370
    const-string/jumbo v3, "DhcpClient"

    const-string/jumbo v4, "Read error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "length":I
    .restart local v2    # "packet":Landroid/net/dhcp/DhcpPacket;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "DhcpClient"

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t parse packet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Lcom/android/internal/util/HexDump;->dumpHexString([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 365
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 374
    .end local v1    # "length":I
    .end local v2    # "packet":Landroid/net/dhcp/DhcpPacket;
    :cond_2
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string/jumbo v4, "Receive thread stopped"

    invoke-static {v3, v4}, Landroid/net/dhcp/DhcpClient;->-wrap9(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 354
    return-void
.end method
