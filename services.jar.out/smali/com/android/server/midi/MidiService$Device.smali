.class final Lcom/android/server/midi/MidiService$Device;
.super Ljava/lang/Object;
.source "MidiService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Device"
.end annotation


# instance fields
.field private final mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mDeviceConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/midi/MidiService$DeviceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

.field private mServer:Landroid/media/midi/IMidiDeviceServer;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method static synthetic -set0(Lcom/android/server/midi/MidiService$Device;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceServer;)V
    .locals 0
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/midi/MidiService;
    .param p2, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 303
    iput-object p2, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 305
    invoke-static {p1}, Lcom/android/server/midi/MidiService;->-get1(Lcom/android/server/midi/MidiService;)I

    move-result v0

    iput v0, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    .line 302
    return-void
.end method

.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;Landroid/content/pm/ServiceInfo;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/midi/MidiService;
    .param p2, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p3, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p4, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p5, "uid"    # I

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 294
    iput-object p3, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 295
    iput-object p4, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 296
    iput p5, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    .line 297
    invoke-virtual {p3}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    move-result-object v0

    .line 298
    const-string/jumbo v1, "bluetooth_device"

    .line 297
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 299
    invoke-direct {p0, p2}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 293
    return-void
.end method

.method private setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .locals 6
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;

    .prologue
    const/4 v5, 0x0

    .line 309
    if-eqz p1, :cond_3

    .line 310
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    if-eqz v4, :cond_0

    .line 311
    const-string/jumbo v4, "MidiService"

    const-string/jumbo v5, "mServer already set in setDeviceServer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 314
    :cond_0
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 316
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    if-nez v4, :cond_1

    .line 317
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 319
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v0, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 320
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v4}, Lcom/android/server/midi/MidiService;->-get5(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 342
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "connection$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 343
    .local v1, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    invoke-virtual {v1, p1}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V

    goto :goto_1

    .line 321
    .end local v1    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    .end local v2    # "connection$iterator":Ljava/util/Iterator;
    .restart local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v3

    .line 322
    .local v3, "e":Landroid/os/RemoteException;
    iput-object v5, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 323
    return-void

    .line 326
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    if-eqz v4, :cond_2

    .line 327
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 328
    iput-object v5, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 330
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 331
    .restart local v0    # "binder":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v4}, Lcom/android/server/midi/MidiService;->-get5(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :try_start_1
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->closeDevice()V

    .line 335
    const/4 v4, 0x0

    invoke-interface {v0, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 336
    :catch_1
    move-exception v3

    .restart local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 308
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4
    return-void
.end method


# virtual methods
.method public addDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    .locals 5
    .param p1, "connection"    # Lcom/android/server/midi/MidiService$DeviceConnection;

    .prologue
    .line 386
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    monitor-enter v2

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-virtual {p1, v1}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 385
    return-void

    .line 390
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_4

    .line 391
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_4

    .line 392
    :cond_2
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v1, Lcom/android/server/midi/MidiService$Device$1;

    invoke-direct {v1, p0}, Lcom/android/server/midi/MidiService$Device$1;-><init>(Lcom/android/server/midi/MidiService$Device;)V

    iput-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 409
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_3

    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.midi.BluetoothMidiService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    .line 412
    const-string/jumbo v3, "com.android.bluetoothmidiservice"

    .line 413
    const-string/jumbo v4, "com.android.bluetoothmidiservice.BluetoothMidiService"

    .line 411
    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 414
    const-string/jumbo v1, "device"

    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 421
    :goto_1
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v1}, Lcom/android/server/midi/MidiService;->-get3(Lcom/android/server/midi/MidiService;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 422
    const/4 v4, 0x1

    .line 421
    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    const-string/jumbo v1, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to bind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 425
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 386
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 416
    :cond_3
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.midi.MidiDeviceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 428
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v1, "MidiService"

    const-string/jumbo v3, "No way to connect to device in addDeviceConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public binderDied()V
    .locals 3

    .prologue
    .line 478
    const-string/jumbo v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Device died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v0}, Lcom/android/server/midi/MidiService;->-get4(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 480
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 477
    return-void

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public closeLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 455
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    monitor-enter v3

    .line 456
    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "connection$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 457
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getClient()Lcom/android/server/midi/MidiService$Client;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/midi/MidiService$Client;->removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 455
    .end local v0    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    .end local v1    # "connection$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 459
    .restart local v1    # "connection$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 461
    invoke-direct {p0, v4}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 465
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_2

    .line 466
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v2, p0}, Lcom/android/server/midi/MidiService;->-wrap1(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;)V

    .line 471
    :goto_1
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    .line 472
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v2}, Lcom/android/server/midi/MidiService;->-get0(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_1
    return-void

    .line 468
    :cond_2
    new-instance v2, Landroid/media/midi/MidiDeviceStatus;

    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-direct {v2, v3}, Landroid/media/midi/MidiDeviceStatus;-><init>(Landroid/media/midi/MidiDeviceInfo;)V

    iput-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    goto :goto_1
.end method

.method public getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public getDeviceServer()Landroid/media/midi/IMidiDeviceServer;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    return-object v0
.end method

.method public getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 374
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    return v0
.end method

.method public isUidAllowed(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    const/4 v0, 0x1

    .line 382
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    .locals 3
    .param p1, "connection"    # Lcom/android/server/midi/MidiService$DeviceConnection;

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 438
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v0}, Lcom/android/server/midi/MidiService;->-get3(Lcom/android/server/midi/MidiService;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 441
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v0}, Lcom/android/server/midi/MidiService;->-get4(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 444
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    monitor-exit v1

    .line 434
    return-void

    .line 443
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v0

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 435
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 447
    :cond_1
    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 353
    return-void
.end method

.method public setDeviceStatus(Landroid/media/midi/MidiDeviceStatus;)V
    .locals 0
    .param p1, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    .line 361
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Device Info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 488
    const-string/jumbo v1, " Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 490
    const-string/jumbo v1, " UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget v1, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    const-string/jumbo v1, " DeviceConnection count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 494
    const-string/jumbo v1, " mServiceConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
