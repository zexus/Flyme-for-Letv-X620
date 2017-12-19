.class public Landroid/content/res/theme/LeThemeZipFile;
.super Ljava/lang/Object;
.source "LeThemeZipFile.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ThemeZipFile"


# instance fields
.field private mIconFile:Ljava/io/File;

.field private mIconPath:Ljava/lang/String;

.field private mTheme3rdFile:Ljava/io/File;

.field private mThemeFile:Ljava/io/File;

.field private mThemeFilePath:Ljava/lang/String;

.field private mZipFile:Ljava/util/zip/ZipFile;

.field private mZipFilet3RD:Ljava/util/zip/ZipFile;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Landroid/content/res/theme/LeThemeZipFile;->mTheme3rdFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/theme/LeThemeZipFile;->mTheme3rdFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getIconStream(Ljava/lang/String;Landroid/util/DisplayMetrics;)Ljava/io/InputStream;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, "iStream":Ljava/io/InputStream;
    invoke-static {p2}, Landroid/content/res/theme/LeThemeUtils;->is2KScreen(Landroid/util/DisplayMetrics;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 32
    const-string/jumbo v6, "icons_2k"

    iput-object v6, p0, Landroid/content/res/theme/LeThemeZipFile;->mIconPath:Ljava/lang/String;

    .line 41
    :goto_0
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/data/letvTheme/"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Landroid/content/res/theme/LeThemeZipFile;->mThemeFile:Ljava/io/File;

    .line 42
    iget-object v6, p0, Landroid/content/res/theme/LeThemeZipFile;->mThemeFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 43
    new-instance v4, Ljava/io/File;

    const-string/jumbo v6, "/data/letvTheme1/"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v4, "letvTheme1File":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 45
    const-string/jumbo v6, "/system/etc/letvTheme_3rd_default/"

    iput-object v6, p0, Landroid/content/res/theme/LeThemeZipFile;->mThemeFilePath:Ljava/lang/String;

    .line 53
    .end local v4    # "letvTheme1File":Ljava/io/File;
    :goto_1
    const-string/jumbo v6, "default_wallpaper.png"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "default_lock_wallpaper.png"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 54
    :cond_0
    const/4 v5, 0x0

    .line 55
    .local v5, "wallpaperFileFile":Ljava/lang/String;
    invoke-static {p2}, Landroid/content/res/theme/LeThemeUtils;->is2KScreen(Landroid/util/DisplayMetrics;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/content/res/theme/LeThemeZipFile;->mThemeFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "wallpaper"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "2k"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "wallpaperFileFile":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/content/res/theme/LeThemeZipFile;->mThemeFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "wallpaper"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "1080p"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    :cond_1
    :goto_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Landroid/content/res/theme/LeThemeZipFile;->mIconFile:Ljava/io/File;

    .line 67
    .end local v5    # "wallpaperFileFile":Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Landroid/content/res/theme/LeThemeZipFile;->mIconFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 68
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/content/res/theme/LeThemeZipFile;->mIconFile:Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v2    # "iStream":Ljava/io/InputStream;
    .local v3, "iStream":Ljava/io/InputStream;
    return-object v3

    .line 34
    .end local v3    # "iStream":Ljava/io/InputStream;
    .restart local v2    # "iStream":Ljava/io/InputStream;
    :cond_2
    const-string/jumbo v6, "icons_1080p"

    iput-object v6, p0, Landroid/content/res/theme/LeThemeZipFile;->mIconPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 47
    .restart local v4    # "letvTheme1File":Ljava/io/File;
    :cond_3
    :try_start_1
    const-string/jumbo v6, "/data/letvTheme1/"

    iput-object v6, p0, Landroid/content/res/theme/LeThemeZipFile;->mThemeFilePath:Ljava/lang/String;

    goto/16 :goto_1

    .line 84
    .end local v4    # "letvTheme1File":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v6, 0x0

    return-object v6

    .line 51
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    const-string/jumbo v6, "/data/letvTheme/"

    iput-object v6, p0, Landroid/content/res/theme/LeThemeZipFile;->mThemeFilePath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 91
    :catch_1
    move-exception v1

    .line 92
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    invoke-virtual {p0}, Landroid/content/res/theme/LeThemeZipFile;->clean()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_5
    return-object v2

    .line 61
    .local v5, "wallpaperFileFile":Ljava/lang/String;
    :cond_6
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/content/res/theme/LeThemeZipFile;->mThemeFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "wallpaper"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "1080p"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "wallpaperFileFile":Ljava/lang/String;
    goto :goto_2

    .line 65
    .end local v5    # "wallpaperFileFile":Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/content/res/theme/LeThemeZipFile;->mThemeFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/content/res/theme/LeThemeZipFile;->mIconPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Landroid/content/res/theme/LeThemeZipFile;->mIconFile:Ljava/io/File;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 102
    :catchall_0
    move-exception v6

    throw v6

    .line 73
    :cond_8
    :try_start_4
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/content/res/theme/LeThemeZipFile;->mThemeFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "icons_1080p"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Landroid/content/res/theme/LeThemeZipFile;->mIconFile:Ljava/io/File;

    .line 74
    iget-object v6, p0, Landroid/content/res/theme/LeThemeZipFile;->mIconFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 75
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/content/res/theme/LeThemeZipFile;->mIconFile:Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    .end local v2    # "iStream":Ljava/io/InputStream;
    .restart local v3    # "iStream":Ljava/io/InputStream;
    return-object v3
.end method

.method public getZipFile()Ljava/util/zip/ZipFile;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/content/res/theme/LeThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    return-object v0
.end method
