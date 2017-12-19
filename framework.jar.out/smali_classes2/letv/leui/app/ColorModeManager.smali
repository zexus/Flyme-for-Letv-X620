.class public Lletv/leui/app/ColorModeManager;
.super Ljava/lang/Object;
.source "ColorModeManager.java"


# static fields
.field private static final DBG:Z = true

.field public static final PIC_MODE_CAMERA:I = 0x6

.field public static final PIC_MODE_EYE:I = 0x3

.field public static final PIC_MODE_IPHONE:I = 0x2

.field public static final PIC_MODE_MOVIE:I = 0x5

.field public static final PIC_MODE_STANDARD:I = 0x0

.field public static final PIC_MODE_VIDEO:I = 0x4

.field public static final PIC_MODE_VIVID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ColorModeService"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/letv/leui/internel/IColorModeService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lletv/leui/app/ColorModeManager;->mService:Lcom/letv/leui/internel/IColorModeService;

    .line 35
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lletv/leui/app/ColorModeManager;->mBinder:Landroid/os/IBinder;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lletv/leui/app/ColorModeManager;->mService:Lcom/letv/leui/internel/IColorModeService;

    .line 35
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lletv/leui/app/ColorModeManager;->mBinder:Landroid/os/IBinder;

    .line 38
    iput-object p1, p0, Lletv/leui/app/ColorModeManager;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private declared-synchronized getService()Lcom/letv/leui/internel/IColorModeService;
    .locals 1

    .prologue
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lletv/leui/app/ColorModeManager;->mService:Lcom/letv/leui/internel/IColorModeService;

    if-nez v0, :cond_0

    .line 47
    const-string/jumbo v0, "leuicolormode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/letv/leui/internel/IColorModeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/letv/leui/internel/IColorModeService;

    move-result-object v0

    iput-object v0, p0, Lletv/leui/app/ColorModeManager;->mService:Lcom/letv/leui/internel/IColorModeService;

    .line 49
    :cond_0
    iget-object v0, p0, Lletv/leui/app/ColorModeManager;->mService:Lcom/letv/leui/internel/IColorModeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addLinkToDeathListener()V
    .locals 4

    .prologue
    .line 137
    const-string/jumbo v2, "ColorModeService"

    const-string/jumbo v3, "[ColorModeManager] addLinkToDeathListener "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 141
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 142
    iget-object v2, p0, Lletv/leui/app/ColorModeManager;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/letv/leui/internel/IColorModeService;->addListener(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    return-void

    .line 144
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getActiveMode()I
    .locals 4

    .prologue
    .line 117
    const-string/jumbo v2, "ColorModeService"

    const-string/jumbo v3, "[ColorModeManager] getActiveMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 121
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v1}, Lcom/letv/leui/internel/IColorModeService;->getActiveMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 124
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 128
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public removeLinkToDeathListener()V
    .locals 4

    .prologue
    .line 155
    const-string/jumbo v2, "ColorModeService"

    const-string/jumbo v3, "[ColorModeManager] removeLinkToDeathListener "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 159
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 160
    iget-object v2, p0, Lletv/leui/app/ColorModeManager;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/letv/leui/internel/IColorModeService;->removeListener(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    return-void

    .line 162
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public revertToSettingsActiveMode()V
    .locals 4

    .prologue
    .line 78
    const-string/jumbo v2, "ColorModeService"

    const-string/jumbo v3, "[ColorModeManager] revertToSettingsActiveMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 82
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v1}, Lcom/letv/leui/internel/IColorModeService;->revertToSettingsActiveMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    return-void

    .line 85
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setActiveMode(I)V
    .locals 5
    .param p1, "colorMode"    # I

    .prologue
    .line 58
    const-string/jumbo v2, "ColorModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[ColorModeManager] setActiveMode colorMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 62
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 63
    invoke-interface {v1, p1}, Lcom/letv/leui/internel/IColorModeService;->setActiveMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    return-void

    .line 65
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setActiveMode(IZ)V
    .locals 5
    .param p1, "colorMode"    # I
    .param p2, "writeData"    # Z

    .prologue
    .line 97
    const-string/jumbo v2, "ColorModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[ColorModeManager] setActiveMode colorMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 101
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 102
    invoke-interface {v1, p1, p2}, Lcom/letv/leui/internel/IColorModeService;->setWrteDataBaseActiveMode(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    return-void

    .line 104
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
