.class Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IReportService.java"

# interfaces
.implements Lcom/letv/agnes/service/beans/IReportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/agnes/service/beans/IReportService$Stub;
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

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 200
    return-void
.end method


# virtual methods
.method public addListener(Lcom/letv/agnes/service/beans/ISEMSListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "com.letv.agnes.service.beans.IReportService"

    .line 405
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 406
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 407
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 408
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    return-void

    .line 406
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/letv/agnes/service/beans/ISEMSListener;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    .line 411
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "com.letv.agnes.service.beans.IReportService"

    .line 207
    return-object v0
.end method

.method public removeLog(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.letv.agnes.service.beans.IReportService"

    .line 390
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 393
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 399
    return-void

    .line 398
    :catchall_0
    move-exception v0

    .line 396
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reportApp(ILcom/letv/agnes/service/beans/IApp;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.letv.agnes.service.beans.IReportService"

    .line 214
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 221
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 224
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 230
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 217
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p2, v1, v0}, Lcom/letv/agnes/service/beans/IApp;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    .line 227
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reportError(ILcom/letv/agnes/service/beans/ISEMSError;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.letv.agnes.service.beans.IReportService"

    .line 302
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 309
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 312
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 318
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 305
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p2, v1, v0}, Lcom/letv/agnes/service/beans/ISEMSError;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    .line 315
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reportEvent(ILcom/letv/agnes/service/beans/IEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.letv.agnes.service.beans.IReportService"

    .line 236
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 243
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 246
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 239
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p2, v1, v0}, Lcom/letv/agnes/service/beans/IEvent;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    .line 249
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reportLog(ILcom/letv/agnes/service/beans/ILogFile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.letv.agnes.service.beans.IReportService"

    .line 324
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 331
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 334
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 327
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p2, v1, v0}, Lcom/letv/agnes/service/beans/ILogFile;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    .line 337
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reportMusicPlay(ILcom/letv/agnes/service/beans/IMusicPlay;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.letv.agnes.service.beans.IReportService"

    .line 280
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 287
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 290
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 283
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p2, v1, v0}, Lcom/letv/agnes/service/beans/IMusicPlay;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    .line 293
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reportResend(ILcom/letv/agnes/service/beans/IResend;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.letv.agnes.service.beans.IReportService"

    .line 368
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 375
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 378
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 384
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 371
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p2, v1, v0}, Lcom/letv/agnes/service/beans/IResend;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    .line 381
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reportVideoPlay(ILcom/letv/agnes/service/beans/IVideoPlay;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.letv.agnes.service.beans.IReportService"

    .line 258
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 265
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 268
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 274
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 261
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p2, v1, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    .line 271
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reportWidget(ILcom/letv/agnes/service/beans/IWidget;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.letv.agnes.service.beans.IReportService"

    .line 346
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 353
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 356
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 362
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 349
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p2, v1, v0}, Lcom/letv/agnes/service/beans/IWidget;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    .line 359
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
