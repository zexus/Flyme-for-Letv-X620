.class Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITelephonyEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ITelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 931
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public broadcastIccUnlockIntent(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1487
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1490
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1492
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1493
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1494
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1497
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1500
    return v2

    .line 1494
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1496
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1496
    throw v3
.end method

.method public btSimapApduRequest(ILjava/lang/String;Lcom/mediatek/internal/telephony/BtSimapOperResponse;)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "cmdAPDU"    # Ljava/lang/String;
    .param p3, "btRsp"    # Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1273
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1276
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1279
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1280
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1281
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1282
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1283
    invoke-virtual {p3, v1}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1290
    return v2

    .line 1286
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1286
    throw v3
.end method

.method public btSimapConnectSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I
    .locals 6
    .param p1, "simId"    # I
    .param p2, "btRsp"    # Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1223
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1226
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1229
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1230
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1231
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1232
    invoke-virtual {p2, v1}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1239
    return v2

    .line 1235
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1236
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1235
    throw v3
.end method

.method public btSimapDisconnectSIM()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1249
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1252
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1253
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1254
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1255
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1258
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1261
    return v2

    .line 1257
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1257
    throw v3
.end method

.method public btSimapPowerOffSIM()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1353
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1356
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1357
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1358
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1359
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1362
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1365
    return v2

    .line 1361
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1361
    throw v3
.end method

.method public btSimapPowerOnSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "btRsp"    # Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1328
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1331
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1334
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1335
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1336
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1337
    invoke-virtual {p2, v1}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1344
    return v2

    .line 1340
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1340
    throw v3
.end method

.method public btSimapResetSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "btRsp"    # Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1301
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1304
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1306
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1307
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1308
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1309
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1310
    invoke-virtual {p2, v1}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1317
    return v2

    .line 1313
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1314
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1313
    throw v3
.end method

.method public canSwitchDefaultSubId()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2613
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2616
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2617
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x46

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2618
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2619
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2622
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2625
    return v2

    .line 2619
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2621
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2621
    throw v3
.end method

.method public configSimSwap(Z)Z
    .locals 6
    .param p1, "toSwapped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1585
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1588
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1589
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1590
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1591
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1592
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1595
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1598
    return v2

    .line 1592
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1594
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1594
    throw v3
.end method

.method public finalizeService(Ljava/lang/String;)V
    .locals 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2057
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2059
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2060
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2061
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2062
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2054
    return-void

    .line 2064
    :catchall_0
    move-exception v2

    .line 2065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2064
    throw v2
.end method

.method public getAdnStorageInfo(I)[I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1762
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1765
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1768
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1769
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1772
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1775
    return-object v2

    .line 1771
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 1772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1771
    throw v3
.end method

.method public getBcsmsCfgFromRuim(III)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "userCategory"    # I
    .param p3, "userPriority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2390
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2393
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2395
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2396
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2397
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2398
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2399
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2402
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2405
    return v2

    .line 2401
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2401
    throw v3
.end method

.method public getCallForwardingFc(II)[I
    .locals 6
    .param p1, "type"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2299
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2300
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2301
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2302
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2303
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2304
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2307
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2310
    return-object v2

    .line 2306
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2306
    throw v3
.end method

.method public getCallWaitingFc(I)[I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2320
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2323
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2324
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2325
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2326
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2327
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2330
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2333
    return-object v2

    .line 2329
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2329
    throw v3
.end method

.method public getCapSwitchManualList()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1655
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1658
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1659
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1661
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1664
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1667
    return-object v2

    .line 1663
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1663
    throw v3
.end method

.method public getCdmaSubscriptionActStatus(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2585
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2588
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2590
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x45

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2591
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2592
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2595
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2598
    return v2

    .line 2594
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2594
    throw v3
.end method

.method public getCellLocationUsingSlotId(I)Landroid/os/Bundle;
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2536
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2539
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2541
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x43

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2542
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2543
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2544
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2551
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2554
    return-object v2

    .line 2547
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 2550
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 2551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2550
    throw v3
.end method

.method public getDonotDisturbFc(I)[I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2343
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2346
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2348
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2349
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2350
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2353
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2356
    return-object v2

    .line 2352
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2352
    throw v3
.end method

.method public getIccCardType(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1053
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1056
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1059
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1060
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1063
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1066
    return-object v2

    .line 1062
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1062
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 941
    const-string/jumbo v0, "com.mediatek.internal.telephony.ITelephonyEx"

    return-object v0
.end method

.method public getLastDataConnectionFailCause(Ljava/lang/String;I)I
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1893
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1896
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1898
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1899
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1900
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1901
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1904
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1907
    return v2

    .line 1903
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1903
    throw v3
.end method

.method public getLinkProperties(Ljava/lang/String;I)Landroid/net/LinkProperties;
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1918
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1921
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1922
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1923
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1924
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1925
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1926
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1927
    sget-object v3, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1934
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1937
    return-object v2

    .line 1930
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/net/LinkProperties;
    goto :goto_0

    .line 1933
    .end local v2    # "_result":Landroid/net/LinkProperties;
    :catchall_0
    move-exception v3

    .line 1934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1933
    throw v3
.end method

.method public getLocatedPlmn(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1678
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1683
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1684
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1685
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1688
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1691
    return-object v2

    .line 1687
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1688
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1687
    throw v3
.end method

.method public getLteAccessStratumState()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2149
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2152
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2153
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2154
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2155
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2158
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2161
    return-object v2

    .line 2157
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 2158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2157
    throw v3
.end method

.method public getMainCapabilityPhoneId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2014
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2015
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2018
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2019
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2020
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2021
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2024
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2027
    return v2

    .line 2023
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2024
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2023
    throw v3
.end method

.method public getMmsConfigInfo(I)Lcom/mediatek/internal/telephony/MmsConfigInfo;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2221
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2224
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2226
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2227
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2228
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2229
    sget-object v3, Lcom/mediatek/internal/telephony/MmsConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/MmsConfigInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2236
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2239
    return-object v2

    .line 2232
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Lcom/mediatek/internal/telephony/MmsConfigInfo;
    goto :goto_0

    .line 2235
    .end local v2    # "_result":Lcom/mediatek/internal/telephony/MmsConfigInfo;
    :catchall_0
    move-exception v3

    .line 2236
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2235
    throw v3
.end method

.method public getMmsIcpInfo(I)Lcom/mediatek/internal/telephony/MmsIcpInfo;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2193
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2196
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2197
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2198
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2199
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2200
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2201
    sget-object v3, Lcom/mediatek/internal/telephony/MmsIcpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/MmsIcpInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2208
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2211
    return-object v2

    .line 2204
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Lcom/mediatek/internal/telephony/MmsIcpInfo;
    goto :goto_0

    .line 2207
    .end local v2    # "_result":Lcom/mediatek/internal/telephony/MmsIcpInfo;
    :catchall_0
    move-exception v3

    .line 2208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2207
    throw v3
.end method

.method public getMvnoMatchType(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1111
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1114
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1115
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1118
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1121
    return-object v2

    .line 1117
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1117
    throw v3
.end method

.method public getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1126
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1129
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1132
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1133
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1134
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1137
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1140
    return-object v2

    .line 1136
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1136
    throw v3
.end method

.method public getNeighboringCellInfoUsingSlotId(I)Ljava/util/List;
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2562
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2566
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2567
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x44

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2568
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2569
    sget-object v3, Landroid/telephony/NeighboringCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2572
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2575
    return-object v2

    .line 2571
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :catchall_0
    move-exception v3

    .line 2572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2571
    throw v3
.end method

.method public getNetworkHideState(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1702
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1705
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1707
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1708
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1709
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1712
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    return v2

    .line 1711
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1711
    throw v3
.end method

.method public getNetworkOperatorGemini(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1181
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1184
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1187
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1188
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1191
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1194
    return-object v2

    .line 1190
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1190
    throw v3
.end method

.method public getNetworkOperatorNameGemini(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1145
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1148
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1151
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1152
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1155
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1158
    return-object v2

    .line 1154
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1154
    throw v3
.end method

.method public getNetworkOperatorNameUsingSub(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1163
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1166
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1168
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1169
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1170
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1173
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1176
    return-object v2

    .line 1172
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1172
    throw v3
.end method

.method public getNetworkOperatorUsingSub(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1202
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1205
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1206
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1209
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1212
    return-object v2

    .line 1208
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1208
    throw v3
.end method

.method public getNextMessageId(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2414
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2417
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2419
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2420
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2421
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2424
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2427
    return v2

    .line 2423
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2423
    throw v3
.end method

.method public getPhoneCapability(I)I
    .locals 6
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1538
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1541
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1543
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1544
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1545
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1548
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1551
    return v2

    .line 1547
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1547
    throw v3
.end method

.method public getScAddressUsingSubId(I)Landroid/os/Bundle;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1813
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1816
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1818
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1819
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1820
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1821
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1828
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1831
    return-object v2

    .line 1824
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 1827
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 1828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1827
    throw v3
.end method

.method public getServiceState(I)Landroid/os/Bundle;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1726
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1729
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1730
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1731
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1732
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1733
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1734
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1741
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1744
    return-object v2

    .line 1737
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 1740
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 1741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1740
    throw v3
.end method

.method public getUserCustomizedEccList()Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2459
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2462
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2463
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2464
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2465
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2466
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2473
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2476
    return-object v2

    .line 2469
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 2472
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 2473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2472
    throw v3
.end method

.method public getVMRetrieveFc(I)[I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2369
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2370
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2371
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2372
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2373
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2376
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2379
    return-object v2

    .line 2375
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2375
    throw v3
.end method

.method public getWapMsgId(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2439
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2441
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2442
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2443
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2446
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2449
    return v2

    .line 2445
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2445
    throw v3
.end method

.method public initializeService(Ljava/lang/String;)V
    .locals 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2037
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2039
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2041
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2042
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2034
    return-void

    .line 2044
    :catchall_0
    move-exception v2

    .line 2045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2044
    throw v2
.end method

.method public isAirplanemodeAvailableNow()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1870
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1873
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1874
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1875
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1876
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1879
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1882
    return v2

    .line 1876
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1878
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1878
    throw v3
.end method

.method public isAppTypeSupported(II)Z
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "appType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1071
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1074
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1077
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1078
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1079
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1082
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1085
    return v2

    .line 1079
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1081
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1082
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1081
    throw v3
.end method

.method public isCapSwitchManualEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1632
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1635
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1636
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1637
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1638
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1641
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1644
    return v2

    .line 1638
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1640
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1641
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1640
    throw v3
.end method

.method public isCapabilitySwitching()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1973
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1976
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1977
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1978
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1979
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1982
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1985
    return v2

    .line 1979
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1981
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1981
    throw v3
.end method

.method public isEccInProgress()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2681
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2684
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2685
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x49

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2686
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2687
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2690
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2693
    return v2

    .line 2687
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2689
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2689
    throw v3
.end method

.method public isFdnEnabled(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1035
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1038
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1041
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1042
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1045
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1048
    return v2

    .line 1042
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1044
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1044
    throw v3
.end method

.method public isImsRegistered(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2704
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2707
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2708
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2709
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2710
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2711
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2714
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2717
    return v2

    .line 2711
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2713
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2713
    throw v3
.end method

.method public isInHomeNetwork(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2078
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2081
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2082
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2083
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2084
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2085
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2088
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2091
    return v2

    .line 2085
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2087
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2087
    throw v3
.end method

.method public isOmhCard(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2272
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2275
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2277
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2278
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2279
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2282
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2285
    return v2

    .line 2279
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2281
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2281
    throw v3
.end method

.method public isOmhEnable(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2249
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2252
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2253
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2254
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2255
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2256
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2259
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2262
    return v2

    .line 2256
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2258
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2258
    throw v3
.end method

.method public isPhbReady(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1788
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1791
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1793
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1794
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1795
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1798
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1801
    return v2

    .line 1795
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1797
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1797
    throw v3
.end method

.method public isRadioOffBySimManagement(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1514
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1517
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1519
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1520
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1521
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1524
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1527
    return v2

    .line 1521
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1523
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1523
    throw v3
.end method

.method public isSharedDefaultApn()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2170
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2173
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2174
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2175
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2176
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2179
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2182
    return v2

    .line 2176
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2178
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2178
    throw v3
.end method

.method public isSimSwapped()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1609
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1612
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1613
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1614
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1615
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1618
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1621
    return v2

    .line 1615
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1617
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1617
    throw v3
.end method

.method public isTestIccCard(I)Z
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1089
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1090
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1093
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1095
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1096
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1097
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1100
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1103
    return v2

    .line 1097
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1099
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1099
    throw v3
.end method

.method public isUserCustomizedEcc(Ljava/lang/String;)Z
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2515
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2518
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2519
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2520
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x42

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2521
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2522
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2525
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2528
    return v2

    .line 2522
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2524
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2524
    throw v3
.end method

.method public isVolteEnabled(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2731
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2733
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2734
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2735
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2738
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2741
    return v2

    .line 2735
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2737
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2737
    throw v3
.end method

.method public isWifiCallingEnabled(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2752
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2755
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2756
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2757
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2758
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2759
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2762
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2765
    return v2

    .line 2759
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2761
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2761
    throw v3
.end method

.method public queryNetworkLock(II)Landroid/os/Bundle;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 946
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 949
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 953
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 954
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 955
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 965
    return-object v2

    .line 958
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 961
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 961
    throw v3
.end method

.method public repollIccStateForNetworkLock(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "needIntent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 999
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1001
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1003
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1005
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 996
    return-void

    .line 1007
    :catchall_0
    move-exception v2

    .line 1008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1007
    throw v2
.end method

.method public setDefaultSubIdForAll(IILcom/mediatek/internal/telephony/ISetDefaultSubResultCallback;)Z
    .locals 6
    .param p1, "type"    # I
    .param p2, "subId"    # I
    .param p3, "callback"    # Lcom/mediatek/internal/telephony/ISetDefaultSubResultCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2638
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2641
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2642
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2643
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2644
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/mediatek/internal/telephony/ISetDefaultSubResultCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2645
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2646
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2647
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2650
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2653
    return v2

    .line 2647
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2649
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2649
    throw v3
.end method

.method public setEccInProgress(Z)V
    .locals 5
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2662
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2664
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2665
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2666
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2667
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2670
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2659
    return-void

    .line 2669
    :catchall_0
    move-exception v2

    .line 2670
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2669
    throw v2
.end method

.method public setLine1Number(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1014
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1015
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1018
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1022
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1023
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1024
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1027
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1030
    return v2

    .line 1026
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1027
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1026
    throw v3
.end method

.method public setLteAccessStratumReport(Z)Z
    .locals 6
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2102
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2105
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2106
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2107
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2108
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2109
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2112
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2115
    return v2

    .line 2109
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2111
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2111
    throw v3
.end method

.method public setLteUplinkDataTransfer(ZI)Z
    .locals 6
    .param p1, "isOn"    # Z
    .param p2, "timeMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2126
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2129
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2130
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2131
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2132
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2133
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2134
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2137
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2140
    return v2

    .line 2134
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2136
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2136
    throw v3
.end method

.method public setPhoneCapability([I[I)V
    .locals 5
    .param p1, "phoneId"    # [I
    .param p2, "capability"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1563
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1566
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1567
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1568
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1569
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1560
    return-void

    .line 1571
    :catchall_0
    move-exception v2

    .line 1572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1571
    throw v2
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    .locals 6
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1950
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1953
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1954
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1955
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1956
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1957
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1960
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1963
    return v2

    .line 1957
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1959
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1959
    throw v3
.end method

.method public setScAddressUsingSubId(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1844
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1847
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1849
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1850
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1851
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1852
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1855
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1858
    return v2

    .line 1852
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1854
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1854
    throw v3
.end method

.method public setTrmForPhone(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1995
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1997
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1998
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1999
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2000
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2001
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1992
    return-void

    .line 2003
    :catchall_0
    move-exception v2

    .line 2004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2003
    throw v2
.end method

.method public simAkaAuthentication(II[B[B)[B
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "byteRand"    # [B
    .param p4, "byteAutn"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1384
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1387
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1389
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1390
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1391
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1392
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1393
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1394
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1397
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1400
    return-object v2

    .line 1396
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1396
    throw v3
.end method

.method public simGbaAuthBootStrapMode(II[B[B)[B
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "byteRand"    # [B
    .param p4, "byteAutn"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1420
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1423
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1425
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1426
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1427
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1428
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1429
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1430
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1433
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1436
    return-object v2

    .line 1432
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 1433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1432
    throw v3
.end method

.method public simGbaAuthNafMode(II[B[B)[B
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "byteNafId"    # [B
    .param p4, "byteImpi"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1456
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1459
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1461
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1462
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1463
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1464
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1465
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1466
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1469
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1472
    return-object v2

    .line 1468
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 1469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1468
    throw v3
.end method

.method public supplyNetworkDepersonalization(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "strPasswd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 970
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 973
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 974
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 976
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 977
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 981
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 984
    return v2

    .line 980
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 980
    throw v3
.end method

.method public updateUserCustomizedEccList(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2486
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2489
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2490
    if-eqz p1, :cond_0

    .line 2491
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2492
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2497
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2499
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2502
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2505
    return v2

    .line 2495
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2501
    :catchall_0
    move-exception v3

    .line 2502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2501
    throw v3

    .line 2499
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method
