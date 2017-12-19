.class public Lcom/letv/leui/server/ColorModeService;
.super Lcom/letv/leui/internel/IColorModeService$Stub;
.source "ColorModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOGD_RULES:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorModeService"


# instance fields
.field private mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mColorManager:Lcom/mediatek/pq/PictureQuality;

.field private mColorMode:I

.field private mContext:Landroid/content/Context;

.field private mRetVal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Lcom/letv/leui/internel/IColorModeService$Stub;-><init>()V

    .line 46
    const/16 v1, 0x270f

    iput v1, p0, Lcom/letv/leui/server/ColorModeService;->mRetVal:I

    .line 48
    iput v3, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    .line 54
    iput-object p1, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/letv/leui/server/ColorModeService;->getColorManagerInstance()V

    .line 62
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 63
    const-string/jumbo v2, "leui_color_mode"

    .line 62
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, "colormode":I
    iput v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    .line 65
    iget v1, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    if-eqz v1, :cond_0

    .line 66
    iget v1, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    invoke-direct {p0, v1}, Lcom/letv/leui/server/ColorModeService;->setDafalutMode(I)Z

    .line 53
    :cond_0
    return-void
.end method

.method private getColorManagerInstance()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/mediatek/pq/PictureQuality;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorManager:Lcom/mediatek/pq/PictureQuality;

    .line 70
    return-void
.end method

.method private setDafalutMode(I)Z
    .locals 6
    .param p1, "colorMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 91
    const-string/jumbo v2, "ColorModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ColorModeService setDafalutMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/letv/leui/server/ColorModeService;->mColorManager:Lcom/mediatek/pq/PictureQuality;

    if-nez v2, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/letv/leui/server/ColorModeService;->getColorManagerInstance()V

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/server/ColorModeService;->mColorManager:Lcom/mediatek/pq/PictureQuality;

    if-eqz v2, :cond_3

    .line 97
    iget-object v2, p0, Lcom/letv/leui/server/ColorModeService;->mColorManager:Lcom/mediatek/pq/PictureQuality;

    invoke-static {p1}, Lcom/mediatek/pq/PictureQuality;->setPictureMode(I)Z

    move-result v0

    .line 98
    .local v0, "b":Z
    if-eqz v0, :cond_2

    .line 99
    iput p1, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    .line 100
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 101
    const-string/jumbo v2, "persist.sys.display.clearMotion"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 102
    .local v1, "sysProp":I
    if-nez v1, :cond_1

    .line 103
    const-string/jumbo v2, "persist.sys.display.clearMotion"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v1    # "sysProp":I
    :cond_1
    const-string/jumbo v2, "ColorModeService"

    const-string/jumbo v3, "ColorModeService setActiveMode sucess"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2
    return v0

    .line 112
    .end local v0    # "b":Z
    :cond_3
    return v5
.end method


# virtual methods
.method public addListener(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 180
    iget-object v2, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    const-string/jumbo v2, "ColorModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listener registered for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;

    invoke-direct {v0, p0, p1}, Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;-><init>(Lcom/letv/leui/server/ColorModeService;Landroid/os/IBinder;)V

    .line 184
    .local v0, "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v0    # "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    :goto_1
    return-void

    .line 185
    .restart local v0    # "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 189
    .end local v0    # "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v2, "ColorModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listener already registered for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getActiveMode()I
    .locals 2

    .prologue
    .line 145
    const-string/jumbo v0, "ColorModeService"

    const-string/jumbo v1, "ColorModeService getActiveMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorManager:Lcom/mediatek/pq/PictureQuality;

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/letv/leui/server/ColorModeService;->getColorManagerInstance()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorManager:Lcom/mediatek/pq/PictureQuality;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorManager:Lcom/mediatek/pq/PictureQuality;

    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getPictureMode()I

    move-result v0

    return v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeListener(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 197
    const-string/jumbo v1, "ColorModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeListener cb is contained in map:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const-string/jumbo v1, "ColorModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;

    .line 201
    .local v0, "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 202
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .end local v0    # "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    :cond_0
    return-void
.end method

.method public revertToSettingsActiveMode()V
    .locals 4

    .prologue
    .line 163
    const-string/jumbo v1, "ColorModeService"

    const-string/jumbo v2, "ColorModeService revertToSettingsActiveMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 166
    const-string/jumbo v2, "leui_color_mode"

    const/4 v3, 0x0

    .line 165
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 168
    .local v0, "colormode":I
    const-string/jumbo v1, "ColorModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ColorModeService revertToSettingsActiveMode colormode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget v1, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    if-eq v1, v0, :cond_0

    .line 171
    invoke-virtual {p0, v0}, Lcom/letv/leui/server/ColorModeService;->setActiveMode(I)Z

    .line 161
    :cond_0
    return-void
.end method

.method public setActiveMode(I)Z
    .locals 4
    .param p1, "colorMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 81
    const-string/jumbo v0, "ColorModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ColorModeService setActiveMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mColorMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    if-eq p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 84
    :cond_0
    return v3

    .line 86
    :cond_1
    invoke-direct {p0, p1}, Lcom/letv/leui/server/ColorModeService;->setDafalutMode(I)Z

    move-result v0

    return v0
.end method

.method public setWrteDataBaseActiveMode(IZ)V
    .locals 6
    .param p1, "colorMode"    # I
    .param p2, "writeDataBase"    # Z

    .prologue
    .line 122
    const-string/jumbo v1, "ColorModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ColorModeService setActiveMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mColorManager:Lcom/mediatek/pq/PictureQuality;

    if-nez v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/letv/leui/server/ColorModeService;->getColorManagerInstance()V

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mColorManager:Lcom/mediatek/pq/PictureQuality;

    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {p0, p1}, Lcom/letv/leui/server/ColorModeService;->setActiveMode(I)Z

    move-result v0

    .line 130
    .local v0, "b":Z
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 133
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 134
    const-string/jumbo v4, "leui_color_mode"

    .line 133
    invoke-static {v1, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    .end local v0    # "b":Z
    .end local v2    # "token":J
    :cond_1
    return-void

    .line 135
    .restart local v0    # "b":Z
    .restart local v2    # "token":J
    :catchall_0
    move-exception v1

    .line 136
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    throw v1
.end method
