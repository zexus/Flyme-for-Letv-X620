.class public Landroid/content/res/theme/LeThemeChangeManager;
.super Ljava/lang/Object;
.source "LeThemeChangeManager.java"


# static fields
.field private static mThemeChangeManager:Landroid/content/res/theme/LeThemeChangeManager;

.field private static mThemeManager:Landroid/content/res/theme/LeThemeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/LeThemeChangeManager;->mCurConfig:Landroid/content/res/Configuration;

    .line 30
    iput-object p1, p0, Landroid/content/res/theme/LeThemeChangeManager;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/res/theme/LeThemeChangeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Landroid/content/res/theme/LeThemeChangeManager;->mThemeChangeManager:Landroid/content/res/theme/LeThemeChangeManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Landroid/content/res/theme/LeThemeChangeManager;

    invoke-direct {v0, p0}, Landroid/content/res/theme/LeThemeChangeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/res/theme/LeThemeChangeManager;->mThemeChangeManager:Landroid/content/res/theme/LeThemeChangeManager;

    .line 23
    invoke-static {p0}, Landroid/content/res/theme/LeThemeManager;->getInstance(Landroid/content/Context;)Landroid/content/res/theme/LeThemeManager;

    move-result-object v0

    sput-object v0, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    .line 24
    sget-object v0, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    invoke-static {}, Landroid/content/res/theme/LeThemeManager;->getThemeZips()V

    .line 26
    :cond_0
    sget-object v0, Landroid/content/res/theme/LeThemeChangeManager;->mThemeChangeManager:Landroid/content/res/theme/LeThemeChangeManager;

    return-object v0
.end method


# virtual methods
.method public changeTheme(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x1

    .line 34
    :try_start_0
    const-string/jumbo v1, "changeTheme"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zipFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v1, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    const-string/jumbo v2, "/data/"

    invoke-virtual {v1, p1, v2}, Landroid/content/res/theme/LeThemeManager;->UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    sget-object v1, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    const-string/jumbo v2, "/data/letvTheme"

    invoke-virtual {v1, v2}, Landroid/content/res/theme/LeThemeManager;->deleteThemeRes(Ljava/lang/String;)Z

    .line 43
    sget-object v1, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    invoke-virtual {v1}, Landroid/content/res/theme/LeThemeManager;->reNameLetvTheme1ToLetvTheme()V

    .line 44
    invoke-virtual {p0, p2}, Landroid/content/res/theme/LeThemeChangeManager;->setThemeValues(I)V

    .line 45
    return v4

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    sget-object v1, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    const-string/jumbo v2, "/data/letvTheme1"

    invoke-virtual {v1, v2}, Landroid/content/res/theme/LeThemeManager;->deleteThemeFile1(Ljava/lang/String;)Z

    .line 39
    sget-object v1, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    invoke-virtual {v1, v4}, Landroid/content/res/theme/LeThemeManager;->sendChangeThemeBroadCast(I)V

    .line 40
    const/4 v1, 0x0

    return v1
.end method

.method public setThemeValues(I)V
    .locals 4
    .param p1, "themeValues"    # I

    .prologue
    .line 50
    :try_start_0
    sget-object v1, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    const-string/jumbo v2, "/data/letvTheme/wallpaper"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/theme/LeThemeManager;->setWallpaper(Ljava/lang/String;Z)V

    .line 51
    sget-object v1, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    const-string/jumbo v2, "/data/letvTheme/wallpaper"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/theme/LeThemeManager;->setWallpaper(Ljava/lang/String;Z)V

    .line 52
    iget-object v1, p0, Landroid/content/res/theme/LeThemeChangeManager;->mCurConfig:Landroid/content/res/Configuration;

    iput p1, v1, Landroid/content/res/Configuration;->letvTheme:I

    .line 53
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/theme/LeThemeChangeManager;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
