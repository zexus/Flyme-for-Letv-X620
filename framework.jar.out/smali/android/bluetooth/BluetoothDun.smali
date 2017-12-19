.class public final Landroid/bluetooth/BluetoothDun;
.super Ljava/lang/Object;
.source "BluetoothDun.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothDun$ServiceListener;,
        Landroid/bluetooth/BluetoothDun$1;,
        Landroid/bluetooth/BluetoothDun$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.PREVIOUS_STATE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.STATE"

.field public static final STATE_CHANGED_ACTION:Ljava/lang/String; = "android.bluetooth.dun.intent.DUN_STATE"

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothDun"

.field private static final VDBG:Z = true

.field private static mService:Landroid/bluetooth/IBluetoothDun;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothDun;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothDun;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2()Landroid/bluetooth/IBluetoothDun;
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun$ServiceListener;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/IBluetoothDun;)Landroid/bluetooth/IBluetoothDun;
    .locals 0

    sput-object p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    return-object p0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/bluetooth/BluetoothDun;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v2, Landroid/bluetooth/BluetoothDun$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothDun$1;-><init>(Landroid/bluetooth/BluetoothDun;)V

    .line 180
    iput-object v2, p0, Landroid/bluetooth/BluetoothDun;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 378
    new-instance v2, Landroid/bluetooth/BluetoothDun$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothDun$2;-><init>(Landroid/bluetooth/BluetoothDun;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    .line 227
    iput-object p1, p0, Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    .line 228
    iput-object v3, p0, Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;

    .line 229
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothDun;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 230
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 231
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 233
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDun;->doBind()Z

    .line 225
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDun"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDun$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothDun$ServiceListener;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v2, Landroid/bluetooth/BluetoothDun$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothDun$1;-><init>(Landroid/bluetooth/BluetoothDun;)V

    .line 180
    iput-object v2, p0, Landroid/bluetooth/BluetoothDun;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 378
    new-instance v2, Landroid/bluetooth/BluetoothDun$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothDun$2;-><init>(Landroid/bluetooth/BluetoothDun;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    .line 211
    iput-object p1, p0, Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    .line 212
    iput-object p2, p0, Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;

    .line 213
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothDun;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 214
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 215
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 217
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDun;->doBind()Z

    .line 209
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDun"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 400
    const-string/jumbo v0, "BluetoothDun"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothDun;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 268
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 270
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothDun;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :try_start_3
    sget-object v3, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    .line 279
    const/4 v3, 0x0

    :try_start_4
    sput-object v3, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    .line 280
    iget-object v3, p0, Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_1
    :try_start_5
    monitor-exit v4

    .line 286
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 265
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v3, "BluetoothDun"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 281
    .restart local v1    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :catch_1
    move-exception v2

    .line 282
    .local v2, "re":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v3, "BluetoothDun"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 276
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    :try_start_8
    monitor-exit v4

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 317
    sget-object v1, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    if-eqz v1, :cond_0

    .line 319
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDun;->dunDisconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    const/4 v1, 0x1

    return v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDun"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 325
    :cond_0
    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "disconnect error: not attached to DUN service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method doBind()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 242
    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothDun;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 244
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 245
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    .line 246
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 245
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    const/4 v2, 0x1

    return v2

    .line 247
    :cond_0
    const-string/jumbo v2, "BluetoothDun"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not bind to Bluetooth DUN Service with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return v5
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDun;->close()V

    .line 254
    return-void
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    const-string/jumbo v3, "BluetoothDun"

    const-string/jumbo v4, "getConnectedDevices()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 293
    .local v1, "devices":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    sget-object v3, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    if-eqz v3, :cond_1

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "connDev":Landroid/bluetooth/BluetoothDevice;
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothDun;->dunGetConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 300
    .end local v0    # "connDev":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_0
    :goto_1
    return-object v1

    .line 297
    .restart local v0    # "connDev":Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothDun"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    .end local v0    # "connDev":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v3, "BluetoothDun"

    const-string/jumbo v4, "getConnectedDevices error: not attached to DUN service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    .line 332
    sget-object v2, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    if-eqz v2, :cond_2

    .line 334
    const/4 v1, 0x0

    .line 336
    .local v1, "remoteDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDun;->getConnectedDevices()Ljava/util/Set;

    move-result-object v1

    .line 338
    .local v1, "remoteDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 339
    :cond_0
    return v4

    .line 338
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    sget-object v2, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothDun;->dunGetState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 342
    .end local v1    # "remoteDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDun"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return v4

    .line 346
    :cond_2
    const-string/jumbo v2, "BluetoothDun"

    const-string/jumbo v3, "get state error: not attached to DUN service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isTetheringOn()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 365
    sget-object v1, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    if-nez v1, :cond_0

    .line 366
    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "Service is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return v4

    .line 370
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDun;->isTetheringOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return v4
.end method

.method public setBluetoothTethering(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothTethering("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothDun;->log(Ljava/lang/String;)V

    .line 353
    sget-object v1, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    if-nez v1, :cond_0

    .line 354
    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "Service is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .line 358
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDun;->setBluetoothTethering(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
