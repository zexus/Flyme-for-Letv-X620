.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field private mTimer:J

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/connectivity/Vpn;
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "racoon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1134
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 1135
    const-string/jumbo v6, "LegacyVpnRunner"

    invoke-direct {p0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1107
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, -0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1106
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1109
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 1114
    new-instance v6, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v6, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1136
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->-set0(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;

    .line 1137
    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "racoon"

    aput-object v7, v6, v5

    const-string/jumbo v7, "mtpd"

    aput-object v7, v6, v8

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 1139
    new-array v6, v9, [[Ljava/lang/String;

    aput-object p3, v6, v5

    aput-object p4, v6, v8

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 1140
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Landroid/net/LocalSocket;

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 1148
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 1150
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1151
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-get2(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1152
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v3, v6, v5

    .line 1153
    .local v3, "network":Landroid/net/Network;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v2

    .line 1154
    .local v2, "lp":Landroid/net/LinkProperties;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1155
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1156
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1152
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1161
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "network":Landroid/net/Network;
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1162
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1163
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-get2(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1134
    return-void
.end method

.method private checkpoint(Z)V
    .locals 6
    .param p1, "yield"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1198
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1199
    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 1200
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1196
    :goto_0
    return-void

    .line 1201
    :cond_0
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 1202
    if-eqz p1, :cond_1

    const/16 v2, 0xc8

    :goto_1
    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 1204
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v4, "checkpoint"

    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->-wrap5(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1205
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Time is up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private execute()V
    .locals 26

    .prologue
    .line 1211
    const/16 v16, 0x0

    .line 1214
    .local v16, "initFinished":Z
    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    aget-object v9, v23, v22

    .line 1218
    .local v9, "daemon":Ljava/lang/String;
    :goto_1
    invoke-static {v9}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 1219
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1388
    .end local v9    # "daemon":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1389
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v22, "LegacyVpnRunner"

    const-string/jumbo v23, "Aborting"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/android/server/connectivity/Vpn;->-wrap5(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1391
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1394
    if-nez v16, :cond_22

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    :goto_2
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_22

    aget-object v9, v23, v22

    .line 1396
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1395
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 1217
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 1224
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v21, Ljava/io/File;

    const-string/jumbo v22, "/data/misc/vpn/state"

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1225
    .local v21, "state":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 1226
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1227
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string/jumbo v23, "Cannot delete the state"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1392
    .end local v21    # "state":Ljava/io/File;
    :catchall_0
    move-exception v22

    .line 1394
    if-nez v16, :cond_24

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v23, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_24

    aget-object v9, v24, v23

    .line 1396
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1395
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 1229
    .end local v9    # "daemon":Ljava/lang/String;
    .restart local v21    # "state":Ljava/io/File;
    :cond_2
    :try_start_3
    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/misc/vpn/abort"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 1230
    const/16 v16, 0x1

    .line 1233
    const/16 v19, 0x0

    .line 1234
    .local v19, "restart":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    aget-object v7, v23, v22

    .line 1235
    .local v7, "arguments":[Ljava/lang/String;
    if-nez v19, :cond_3

    if-eqz v7, :cond_4

    :cond_3
    const/16 v19, 0x1

    .line 1234
    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 1235
    :cond_4
    const/16 v19, 0x0

    goto :goto_5

    .line 1237
    .end local v7    # "arguments":[Ljava/lang/String;
    :cond_5
    if-nez v19, :cond_9

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1394
    if-nez v16, :cond_6

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    aget-object v9, v23, v22

    .line 1396
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1395
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 1401
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_6
    if-nez v16, :cond_8

    .line 1402
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    .line 1239
    :cond_7
    return-void

    .line 1401
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_7

    goto :goto_7

    .line 1241
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v24, "execute"

    invoke-static/range {v22 .. v24}, Lcom/android/server/connectivity/Vpn;->-wrap5(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1244
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v14, v0, :cond_10

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v7, v22, v14

    .line 1246
    .restart local v7    # "arguments":[Ljava/lang/String;
    if-nez v7, :cond_b

    .line 1244
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1251
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v9, v22, v14

    .line 1252
    .restart local v9    # "daemon":Ljava/lang/String;
    const-string/jumbo v22, "LegacyVpnRunner"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "systemservice start "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-static {v9}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1256
    :goto_9
    invoke-static {v9}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 1257
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_9

    .line 1261
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v22, v0

    new-instance v23, Landroid/net/LocalSocket;

    invoke-direct/range {v23 .. v23}, Landroid/net/LocalSocket;-><init>()V

    aput-object v23, v22, v14

    .line 1262
    new-instance v5, Landroid/net/LocalSocketAddress;

    .line 1263
    sget-object v22, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 1262
    move-object/from16 v0, v22

    invoke-direct {v5, v9, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1268
    .local v5, "address":Landroid/net/LocalSocketAddress;
    :goto_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v22, v0

    aget-object v22, v22, v14

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1275
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v22, v0

    aget-object v22, v22, v14

    const/16 v23, 0x1f4

    invoke-virtual/range {v22 .. v23}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v22, v0

    aget-object v22, v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 1279
    .local v17, "out":Ljava/io/OutputStream;
    const/16 v22, 0x0

    array-length v0, v7

    move/from16 v23, v0

    :goto_b
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_e

    aget-object v6, v7, v22

    .line 1280
    .local v6, "argument":Ljava/lang/String;
    sget-object v24, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 1281
    .local v8, "bytes":[B
    array-length v0, v8

    move/from16 v24, v0

    const v25, 0xffff

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_d

    .line 1282
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "Argument is too large"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1270
    .end local v6    # "argument":Ljava/lang/String;
    .end local v8    # "bytes":[B
    .end local v17    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v11

    .line 1273
    .restart local v11    # "e":Ljava/lang/Exception;
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_a

    .line 1284
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "argument":Ljava/lang/String;
    .restart local v8    # "bytes":[B
    .restart local v17    # "out":Ljava/io/OutputStream;
    :cond_d
    array-length v0, v8

    move/from16 v24, v0

    shr-int/lit8 v24, v24, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1285
    array-length v0, v8

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1286
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 1287
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1279
    add-int/lit8 v22, v22, 0x1

    goto :goto_b

    .line 1289
    .end local v6    # "argument":Ljava/lang/String;
    .end local v8    # "bytes":[B
    :cond_e
    const/16 v22, 0xff

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1290
    const/16 v22, 0xff

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1291
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v22, v0

    aget-object v22, v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v15

    .line 1297
    .local v15, "in":Ljava/io/InputStream;
    :goto_c
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    .line 1303
    :goto_d
    const/16 v22, 0x1

    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_c

    .line 1300
    :catch_2
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    goto :goto_d

    .line 1316
    .end local v5    # "address":Landroid/net/LocalSocketAddress;
    .end local v7    # "arguments":[Ljava/lang/String;
    .end local v9    # "daemon":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v15    # "in":Ljava/io/InputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    :cond_f
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1308
    :cond_10
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_13

    .line 1310
    const/4 v14, 0x0

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v14, v0, :cond_f

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v9, v22, v14

    .line 1312
    .restart local v9    # "daemon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v14

    if-eqz v22, :cond_11

    invoke-static {v9}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 1310
    :cond_11
    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    .line 1313
    :cond_12
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " is dead"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1320
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_13
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "\n"

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v18

    .line 1321
    .local v18, "parameters":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_14

    .line 1322
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string/jumbo v23, "Cannot parse the state"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1326
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v23, v18, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v23, v18, v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_16

    .line 1331
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    const/16 v23, 0x2

    aget-object v23, v18, v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1335
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_18

    .line 1336
    :cond_17
    const/16 v22, 0x3

    aget-object v22, v18, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1337
    .local v10, "dnsServers":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_18

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    const-string/jumbo v23, " "

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1343
    .end local v10    # "dnsServers":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_1a

    .line 1344
    :cond_19
    const/16 v22, 0x4

    aget-object v22, v18, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 1345
    .local v20, "searchDomains":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_1a

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1351
    .end local v20    # "searchDomains":Ljava/lang/String;
    :cond_1a
    const/16 v22, 0x5

    aget-object v13, v18, v22

    .line 1352
    .local v13, "endpoint":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v22

    if-nez v22, :cond_1b

    .line 1354
    :try_start_9
    invoke-static {v13}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 1355
    .local v4, "addr":Ljava/net/InetAddress;
    instance-of v0, v4, Ljava/net/Inet4Address;

    move/from16 v22, v0

    if-eqz v22, :cond_1c

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v22, v0

    new-instance v23, Landroid/net/RouteInfo;

    new-instance v24, Landroid/net/IpPrefix;

    const/16 v25, 0x20

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v4, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v25, 0x9

    invoke-direct/range {v23 .. v25}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1368
    .end local v4    # "addr":Ljava/net/InetAddress;
    :cond_1b
    :goto_f
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1370
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1373
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->-wrap0(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_1e

    .line 1377
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " is gone"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1368
    :catchall_1
    move-exception v22

    :try_start_c
    monitor-exit v23

    throw v22
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1357
    .restart local v4    # "addr":Ljava/net/InetAddress;
    :cond_1c
    :try_start_d
    instance-of v0, v4, Ljava/net/Inet6Address;

    move/from16 v22, v0

    if-eqz v22, :cond_1d

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v22, v0

    new-instance v23, Landroid/net/RouteInfo;

    new-instance v24, Landroid/net/IpPrefix;

    const/16 v25, 0x80

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v4, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v25, 0x9

    invoke-direct/range {v23 .. v25}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_f

    .line 1362
    .end local v4    # "addr":Ljava/net/InetAddress;
    :catch_3
    move-exception v12

    .line 1363
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    :try_start_e
    const-string/jumbo v22, "LegacyVpnRunner"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Exception constructing throw route to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_f

    .line 1360
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "addr":Ljava/net/InetAddress;
    :cond_1d
    :try_start_f
    const-string/jumbo v22, "LegacyVpnRunner"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unknown IP address family for VPN endpoint: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_f

    .line 1381
    .end local v4    # "addr":Ljava/net/InetAddress;
    :cond_1e
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->-set2(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->-set5(Lcom/android/server/connectivity/Vpn;Ljava/util/List;)Ljava/util/List;

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap1(Lcom/android/server/connectivity/Vpn;)V

    .line 1386
    const-string/jumbo v22, "LegacyVpnRunner"

    const-string/jumbo v24, "Connected!"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    monitor-exit v23
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1394
    if-nez v16, :cond_1f

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    :goto_10
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_1f

    aget-object v9, v23, v22

    .line 1396
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1395
    add-int/lit8 v22, v22, 0x1

    goto :goto_10

    .line 1401
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_1f
    if-nez v16, :cond_21

    .line 1402
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    .line 1209
    .end local v13    # "endpoint":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v18    # "parameters":[Ljava/lang/String;
    .end local v19    # "restart":Z
    .end local v21    # "state":Ljava/io/File;
    :cond_20
    :goto_12
    return-void

    .line 1401
    .restart local v13    # "endpoint":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v18    # "parameters":[Ljava/lang/String;
    .restart local v19    # "restart":Z
    .restart local v21    # "state":Ljava/io/File;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_20

    goto :goto_11

    .end local v13    # "endpoint":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v18    # "parameters":[Ljava/lang/String;
    .end local v19    # "restart":Z
    .end local v21    # "state":Ljava/io/File;
    .restart local v11    # "e":Ljava/lang/Exception;
    :cond_22
    if-nez v16, :cond_23

    .line 1402
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    goto :goto_12

    .line 1401
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_20

    goto :goto_13

    .end local v11    # "e":Ljava/lang/Exception;
    :cond_24
    if-nez v16, :cond_26

    .line 1402
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    .line 1392
    :cond_25
    throw v22

    .line 1401
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Vpn;->-get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_25

    goto :goto_14
.end method

.method private monitorDaemons()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1412
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->-get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1413
    return-void

    .line 1418
    :cond_0
    const-wide/16 v6, 0x7d0

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 1419
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1420
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1428
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 1429
    .local v0, "daemon":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1428
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1432
    .end local v0    # "daemon":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    .line 1421
    return-void

    .line 1419
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1425
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 1426
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v3, "LegacyVpnRunner"

    const-string/jumbo v5, "interrupted during monitorDaemons(); stopping services"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1428
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v5, v3

    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v0, v3, v4

    .line 1429
    .restart local v0    # "daemon":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1428
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1432
    .end local v0    # "daemon":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    .line 1411
    return-void

    .line 1427
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    .line 1428
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v6, v5

    :goto_3
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    .line 1429
    .restart local v0    # "daemon":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1428
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1432
    .end local v0    # "daemon":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    .line 1427
    throw v3
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 3
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    const-string/jumbo v0, "LegacyVpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Legacy VPN is going down with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1166
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 5

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    .line 1176
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 1177
    .local v1, "socket":Landroid/net/LocalSocket;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1179
    .end local v1    # "socket":Landroid/net/LocalSocket;
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    .line 1181
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->-get2(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :goto_1
    return-void

    .line 1182
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1188
    const-string/jumbo v0, "LegacyVpnRunner"

    const-string/jumbo v1, "Waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const-string/jumbo v1, "LegacyVpnRunner"

    monitor-enter v1

    .line 1190
    :try_start_0
    const-string/jumbo v0, "LegacyVpnRunner"

    const-string/jumbo v2, "Executing"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->execute()V

    .line 1192
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->monitorDaemons()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1186
    return-void

    .line 1189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
