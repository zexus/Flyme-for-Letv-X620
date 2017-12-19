.class Lcom/mediatek/location/C2kAgpsInterface;
.super Ljava/lang/Object;
.source "C2kAgpsInterface.java"


# static fields
.field private static final EVENT_AGPS_NETWORK_STATE:I = 0x1388

.field private static final EVENT_AGPS_SET_NETWORK_ID:I = 0x4

.field private static final NETWORK_AVAILABLE:I = 0x1

.field private static final NETWORK_LOST:I = 0x0

.field private static final SOCKET_ADDRESS:Ljava/lang/String; = "c2kagpsd"

.field private static final TAG:Ljava/lang/String; = "C2kAgpsInterface"


# instance fields
.field private mClient:Landroid/net/LocalSocket;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private mOut:Ljava/io/BufferedOutputStream;


# direct methods
.method static synthetic -wrap0(Lcom/mediatek/location/C2kAgpsInterface;I)V
    .locals 0
    .param p1, "netId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/location/C2kAgpsInterface;->setNetworkId(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/location/C2kAgpsInterface;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/location/C2kAgpsInterface;->setNetworkState(I)V

    return-void
.end method

.method constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 2
    .param p1, "manager"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/mediatek/location/C2kAgpsInterface;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 69
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 70
    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 67
    return-void
.end method

.method private close()V
    .locals 2

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/location/C2kAgpsInterface;->mClient:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/mediatek/location/C2kAgpsInterface;->mClient:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/location/C2kAgpsInterface;->mClient:Landroid/net/LocalSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface;->mClient:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface;->mClient:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 135
    :cond_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface;->mClient:Landroid/net/LocalSocket;

    .line 136
    iget-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface;->mClient:Landroid/net/LocalSocket;

    .line 137
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "c2kagpsd"

    .line 138
    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    .line 137
    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 139
    iget-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface;->mClient:Landroid/net/LocalSocket;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 140
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/mediatek/location/C2kAgpsInterface;->mClient:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    .line 131
    return-void
.end method

.method private static putByte(Ljava/io/BufferedOutputStream;B)V
    .locals 0
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 154
    return-void
.end method

.method private static putInt(Ljava/io/BufferedOutputStream;I)V
    .locals 2
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0xffff

    .line 164
    and-int v0, p1, v1

    int-to-short v0, v0

    invoke-static {p0, v0}, Lcom/mediatek/location/C2kAgpsInterface;->putShort(Ljava/io/BufferedOutputStream;S)V

    .line 165
    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v1

    int-to-short v0, v0

    invoke-static {p0, v0}, Lcom/mediatek/location/C2kAgpsInterface;->putShort(Ljava/io/BufferedOutputStream;S)V

    .line 163
    return-void
.end method

.method private static putShort(Ljava/io/BufferedOutputStream;S)V
    .locals 1
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-static {p0, v0}, Lcom/mediatek/location/C2kAgpsInterface;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 160
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-static {p0, v0}, Lcom/mediatek/location/C2kAgpsInterface;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 158
    return-void
.end method

.method private setNetworkId(I)V
    .locals 4
    .param p1, "netId"    # I

    .prologue
    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/location/C2kAgpsInterface;->connect()V

    .line 108
    iget-object v1, p0, Lcom/mediatek/location/C2kAgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/mediatek/location/C2kAgpsInterface;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 109
    iget-object v1, p0, Lcom/mediatek/location/C2kAgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/location/C2kAgpsInterface;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 110
    iget-object v1, p0, Lcom/mediatek/location/C2kAgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-direct {p0}, Lcom/mediatek/location/C2kAgpsInterface;->close()V

    .line 105
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "C2kAgpsInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    invoke-direct {p0}, Lcom/mediatek/location/C2kAgpsInterface;->close()V

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 114
    invoke-direct {p0}, Lcom/mediatek/location/C2kAgpsInterface;->close()V

    .line 113
    throw v1
.end method

.method private setNetworkState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/location/C2kAgpsInterface;->connect()V

    .line 121
    iget-object v1, p0, Lcom/mediatek/location/C2kAgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    const/16 v2, 0x1388

    invoke-static {v1, v2}, Lcom/mediatek/location/C2kAgpsInterface;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 122
    iget-object v1, p0, Lcom/mediatek/location/C2kAgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/location/C2kAgpsInterface;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 123
    iget-object v1, p0, Lcom/mediatek/location/C2kAgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-direct {p0}, Lcom/mediatek/location/C2kAgpsInterface;->close()V

    .line 118
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "C2kAgpsInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    invoke-direct {p0}, Lcom/mediatek/location/C2kAgpsInterface;->close()V

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 127
    invoke-direct {p0}, Lcom/mediatek/location/C2kAgpsInterface;->close()V

    .line 126
    throw v1
.end method


# virtual methods
.method releaseNetwork()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    const-string/jumbo v0, "C2kAgpsInterface"

    const-string/jumbo v1, "[agps] WARNING: releaseNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/location/C2kAgpsInterface;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 101
    iput-object v2, p0, Lcom/mediatek/location/C2kAgpsInterface;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 97
    :cond_0
    return-void
.end method

.method requestNetwork()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/mediatek/location/C2kAgpsInterface$1;

    invoke-direct {v0, p0}, Lcom/mediatek/location/C2kAgpsInterface$1;-><init>(Lcom/mediatek/location/C2kAgpsInterface;)V

    iput-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 93
    const-string/jumbo v0, "C2kAgpsInterface"

    const-string/jumbo v1, "[agps] WARNING: requestNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/location/C2kAgpsInterface;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/mediatek/location/C2kAgpsInterface;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 75
    return-void
.end method
