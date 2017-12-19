.class Lcom/mediatek/location/C2kAgpsInterface$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "C2kAgpsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/location/C2kAgpsInterface;->requestNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/location/C2kAgpsInterface;


# direct methods
.method constructor <init>(Lcom/mediatek/location/C2kAgpsInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/location/C2kAgpsInterface;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/location/C2kAgpsInterface$1;->this$0:Lcom/mediatek/location/C2kAgpsInterface;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 80
    const-string/jumbo v0, "C2kAgpsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[agps] WARNING: onAvailable: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface$1;->this$0:Lcom/mediatek/location/C2kAgpsInterface;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v0, v1}, Lcom/mediatek/location/C2kAgpsInterface;->-wrap0(Lcom/mediatek/location/C2kAgpsInterface;I)V

    .line 82
    iget-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface$1;->this$0:Lcom/mediatek/location/C2kAgpsInterface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/location/C2kAgpsInterface;->-wrap1(Lcom/mediatek/location/C2kAgpsInterface;I)V

    .line 78
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 88
    const-string/jumbo v0, "C2kAgpsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[agps] WARNING: onLost: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface$1;->this$0:Lcom/mediatek/location/C2kAgpsInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/location/C2kAgpsInterface;->-wrap1(Lcom/mediatek/location/C2kAgpsInterface;I)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/location/C2kAgpsInterface$1;->this$0:Lcom/mediatek/location/C2kAgpsInterface;

    invoke-virtual {v0}, Lcom/mediatek/location/C2kAgpsInterface;->releaseNetwork()V

    .line 86
    return-void
.end method
