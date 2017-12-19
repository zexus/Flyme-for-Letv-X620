.class Lcom/android/server/pm/http/HttpConnect$ConnectChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HttpConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/http/HttpConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/http/HttpConnect;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/http/HttpConnect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/http/HttpConnect;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/server/pm/http/HttpConnect$ConnectChangeReceiver;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/http/HttpConnect;Lcom/android/server/pm/http/HttpConnect$ConnectChangeReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/http/HttpConnect;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/http/HttpConnect$ConnectChangeReceiver;-><init>(Lcom/android/server/pm/http/HttpConnect;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 210
    .local v0, "connectMgr":Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 211
    .local v1, "mobNetInfo":Landroid/net/NetworkInfo;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 212
    .local v2, "wifiNetInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    :cond_0
    const-string/jumbo v3, "Area"

    const-string/jumbo v4, "Receiver CONNECTIVITY_CHANGE : Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v3, p0, Lcom/android/server/pm/http/HttpConnect$ConnectChangeReceiver;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-virtual {v3}, Lcom/android/server/pm/http/HttpConnect;->setAreaInfo()V

    .line 206
    .end local v0    # "connectMgr":Landroid/net/ConnectivityManager;
    .end local v1    # "mobNetInfo":Landroid/net/NetworkInfo;
    .end local v2    # "wifiNetInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void

    .line 214
    .restart local v0    # "connectMgr":Landroid/net/ConnectivityManager;
    .restart local v1    # "mobNetInfo":Landroid/net/NetworkInfo;
    .restart local v2    # "wifiNetInfo":Landroid/net/NetworkInfo;
    :cond_2
    const-string/jumbo v3, "Area"

    const-string/jumbo v4, "Receiver CONNECTIVITY_CHANGE : not Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
