.class Lcom/android/server/display/WifiDisplayController$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 1946
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1949
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1950
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v11, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1953
    const-string/jumbo v11, "wifi_p2p_state"

    .line 1954
    const/4 v12, 0x1

    .line 1953
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1955
    const/4 v12, 0x2

    .line 1953
    if-ne v11, v12, :cond_1

    const/4 v5, 0x1

    .line 1957
    .local v5, "enabled":Z
    :goto_0
    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received WIFI_P2P_STATE_CHANGED_ACTION: enabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11, v5}, Lcom/android/server/display/WifiDisplayController;->-wrap35(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 1948
    .end local v5    # "enabled":Z
    :cond_0
    :goto_1
    return-void

    .line 1953
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "enabled":Z
    goto :goto_0

    .line 1961
    .end local v5    # "enabled":Z
    :cond_2
    const-string/jumbo v11, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1962
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-get0()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1963
    const-string/jumbo v11, "WifiDisplayController"

    const-string/jumbo v12, "Received WIFI_P2P_PEERS_CHANGED_ACTION."

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-wrap28(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_1

    .line 1967
    :cond_4
    const-string/jumbo v11, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1969
    const-string/jumbo v11, "networkInfo"

    .line 1968
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .line 1971
    .local v7, "networkInfo":Landroid/net/NetworkInfo;
    const-string/jumbo v11, "reason="

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1972
    .local v9, "reason":I
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-get0()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1973
    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1974
    const-string/jumbo v13, ", reason = "

    .line 1973
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    move-object/from16 v0, p2

    invoke-static {v11, v12, v0}, Lcom/android/server/display/WifiDisplayController;->-wrap60(Lcom/android/server/display/WifiDisplayController;ZLandroid/content/Intent;)V

    .line 1984
    const-string/jumbo v11, "ro.mtk_wfd_sink_support"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get44(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1985
    const/4 v11, -0x2

    if-eq v9, v11, :cond_5

    .line 1986
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11, v7}, Lcom/android/server/display/WifiDisplayController;->-wrap34(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V

    .line 1988
    :cond_5
    return-void

    .line 1976
    :cond_6
    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: isConnected? "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1977
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    .line 1976
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1977
    const-string/jumbo v13, ", reason = "

    .line 1976
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1992
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11, v7, v9}, Lcom/android/server/display/WifiDisplayController;->-wrap25(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;I)V

    .line 1994
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set17(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto/16 :goto_1

    .line 1997
    .end local v7    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v9    # "reason":I
    :cond_8
    const-string/jumbo v11, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1998
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 1999
    const-string/jumbo v11, "wifiP2pDevice"

    .line 1998
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v12, v11}, Lcom/android/server/display/WifiDisplayController;->-set34(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2000
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-get0()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2001
    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received WIFI_P2P_THIS_DEVICE_CHANGED_ACTION: mThisDevice= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2002
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get50(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v13

    .line 2001
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2006
    :cond_9
    const-string/jumbo v11, "com.mediatek.mediaplayer.DRM_PLAY"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 2007
    const/4 v8, 0x0

    .line 2008
    .local v8, "playerID":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v12, "isPlaying"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set12(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2009
    const-string/jumbo v11, "playerId"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 2010
    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received DRM_CONTENT_MEDIAPLAYER: isPlaying = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get18(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2011
    const-string/jumbo v13, ", player = "

    .line 2010
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2012
    const-string/jumbo v13, ", isConnected = "

    .line 2010
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2012
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get25(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v13

    .line 2010
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2013
    const-string/jumbo v13, ", isConnecting = "

    .line 2010
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2013
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get33(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v13

    .line 2010
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get25(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 2016
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get33(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2017
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get18(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2019
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11, v8}, Lcom/android/server/display/WifiDisplayController;->-set20(Lcom/android/server/display/WifiDisplayController;I)I

    goto/16 :goto_1

    .line 2021
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get31(Lcom/android/server/display/WifiDisplayController;)I

    move-result v11

    if-eq v11, v8, :cond_0

    .line 2024
    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "player ID doesn\'t match last time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get31(Lcom/android/server/display/WifiDisplayController;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2030
    .end local v8    # "playerID":I
    :cond_c
    const-string/jumbo v11, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2031
    const-string/jumbo v11, "discoveryState"

    .line 2032
    const/4 v12, 0x1

    .line 2031
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2033
    .local v4, "discoveryState":I
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-get0()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2034
    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received WIFI_P2P_DISCOVERY_CHANGED_ACTION: discoveryState="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    :cond_d
    const/4 v11, 0x1

    if-ne v4, v11, :cond_0

    .line 2038
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-wrap31(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1

    .line 2042
    .end local v4    # "discoveryState":I
    :cond_e
    const-string/jumbo v11, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 2043
    const-string/jumbo v11, "WifiDisplayController"

    const-string/jumbo v12, "Received android.intent.action.ACTION_PRE_SHUTDOWN, do disconnect anyway"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get65(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 2048
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get65(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get63(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2051
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get37(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2052
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get37(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/RemoteDisplay;->dispose()V

    goto/16 :goto_1

    .line 2056
    :cond_10
    const-string/jumbo v11, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 2058
    const-string/jumbo v11, "networkInfo"

    .line 2057
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 2060
    .local v6, "info":Landroid/net/NetworkInfo;
    const/4 v10, 0x0

    .line 2061
    .local v10, "updated":Z
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 2063
    .local v3, "connected":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get55(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v11

    if-eq v3, v11, :cond_11

    .line 2064
    const/4 v10, 0x1

    .line 2067
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11, v3}, Lcom/android/server/display/WifiDisplayController;->-set39(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2069
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get55(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 2070
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get61(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 2071
    .local v2, "conInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_14

    .line 2073
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get57(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 2074
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get56(Lcom/android/server/display/WifiDisplayController;)I

    move-result v12

    if-eq v11, v12, :cond_15

    .line 2076
    :cond_12
    :goto_3
    const/4 v10, 0x1

    .line 2079
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set41(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 2080
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set40(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2081
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set42(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2088
    .end local v2    # "conInfo":Landroid/net/wifi/WifiInfo;
    :cond_14
    :goto_4
    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received NETWORK_STATE_CHANGED,con:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get55(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2089
    const-string/jumbo v13, ",SSID:"

    .line 2088
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2089
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get57(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v13

    .line 2088
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2090
    const-string/jumbo v13, ",Freq:"

    .line 2088
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2090
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get56(Lcom/android/server/display/WifiDisplayController;)I

    move-result v13

    .line 2088
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2091
    const-string/jumbo v13, ",netId:"

    .line 2088
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2091
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get62(Lcom/android/server/display/WifiDisplayController;)I

    move-result v13

    .line 2088
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2092
    const-string/jumbo v13, ", updated:"

    .line 2088
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    if-nez v10, :cond_17

    .line 2095
    return-void

    .line 2075
    .restart local v2    # "conInfo":Landroid/net/wifi/WifiInfo;
    :cond_15
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get62(Lcom/android/server/display/WifiDisplayController;)I

    move-result v12

    if-eq v11, v12, :cond_13

    goto/16 :goto_3

    .line 2084
    .end local v2    # "conInfo":Landroid/net/wifi/WifiInfo;
    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set41(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 2085
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set40(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2086
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set42(Lcom/android/server/display/WifiDisplayController;I)I

    goto/16 :goto_4

    .line 2099
    :cond_17
    const-string/jumbo v11, "ro.mtk_wfd_sink_support"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get44(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 2100
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-wrap44(Lcom/android/server/display/WifiDisplayController;)V

    .line 2104
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 2105
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get55(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 2106
    sget-object v11, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_AP_CONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    .line 2104
    :goto_5
    invoke-static {v12, v11}, Lcom/android/server/display/WifiDisplayController;->-wrap24(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;)V

    goto/16 :goto_1

    .line 2107
    :cond_19
    sget-object v11, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_AP_DISCONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    goto :goto_5

    .line 2109
    .end local v3    # "connected":Z
    .end local v6    # "info":Landroid/net/NetworkInfo;
    .end local v10    # "updated":Z
    :cond_1a
    const-string/jumbo v11, "com.mediatek.wifi.p2p.GO.GCrequest.connect"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 2110
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v12, "deviceName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set28(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 2112
    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received WFD_SINK_GC_REQUEST_CONNECT, mSinkDeviceName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get41(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v12, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-wrap2(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v11

    if-nez v11, :cond_1b

    .line 2115
    const-string/jumbo v11, "WifiDisplayController"

    const-string/jumbo v12, "State is wrong. Decline directly !!"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get65(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get63(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/net/wifi/p2p/WifiP2pManager;->setGCInviteResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2117
    return-void

    .line 2120
    :cond_1b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get41(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2122
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/16 v12, 0x8

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-wrap45(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_1

    .line 2126
    :cond_1c
    const-string/jumbo v11, "com.mediatek.wifi.p2p.OP.channel"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 2127
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v12, "p2pOperFreq"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set19(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2129
    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received WFD_CHANNEL_CONFLICT_OCCURS, p2pOperFreq:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get30(Lcom/android/server/display/WifiDisplayController;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get30(Lcom/android/server/display/WifiDisplayController;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 2131
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-wrap47(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1

    .line 2134
    :cond_1d
    const-string/jumbo v11, "com.mediatek.wifi.p2p.freq.conflict"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2135
    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received WFD_SINK_CHANNEL_CONFLICT_OCCURS, mSinkEnabled:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get44(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", apConnected:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get55(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    const-string/jumbo v11, "ro.mtk_wfd_sink_support"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get44(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2139
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get55(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2142
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-wrap36(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1
.end method
