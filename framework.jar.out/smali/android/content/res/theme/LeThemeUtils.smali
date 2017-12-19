.class public Landroid/content/res/theme/LeThemeUtils;
.super Ljava/lang/Object;
.source "LeThemeUtils.java"


# static fields
.field public static final CALENDAR_ICON:Ljava/lang/String; = "com.android.calendar"

.field public static final CALENDAR_ICON_MANIFEST:Ljava/lang/String; = "manifest.xml"

.field private static final DEBUG:Z = false

.field public static final DEFALT_LOCK_WALLPAPER:Ljava/lang/String; = "default_lock_wallpaper.png"

.field public static final DEFALT_WALLPAPER:Ljava/lang/String; = "default_wallpaper.png"

.field public static final FILE_1080:Ljava/lang/String; = "1080p"

.field public static final FILE_2K:Ljava/lang/String; = "2k"

.field public static final FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final ICONS_1080p:Ljava/lang/String; = "icons_1080p"

.field private static final ICONS_2k:Ljava/lang/String; = "icons_2k"

.field public static final ICON_1080P_PATH_NAME:Ljava/lang/String; = "icons_1080p"

.field public static final ICON_2K_PATH_NAME:Ljava/lang/String; = "icons_2k"

.field public static final ICON_PATH_NAME:Ljava/lang/String; = "icons"

.field public static final ICON_TEMPLATE:Ljava/lang/String; = "template"

.field public static final JPG:Ljava/lang/String; = ".jpg"

.field private static final MIN_WIDTH_2K:I = 0x7d0

.field public static final PNG:Ljava/lang/String; = ".png"

.field private static final TAG:Ljava/lang/String; = "LeThemeUtils"

.field public static final TARGET_THEME_RES_DATA_PATH:Ljava/lang/String; = "/data/"

.field public static final THEME_COMMON_DEFAULT_PATH:Ljava/lang/String; = "/system/etc/letvTheme_black_common.zip"

.field public static final THEME_CU_DEFAULT_PATH:Ljava/lang/String; = "/system/etc/letvTheme_black_cu.zip"

.field public static final THEME_DATA_PATH:Ljava/lang/String; = "/data/letvTheme/"

.field public static final THEME_DATA_PATH_ONE:Ljava/lang/String; = "/data/letvTheme1/"

.field public static final THEME_DEFAULT_3RD_ICON_PATH:Ljava/lang/String; = "/system/etc/letvTheme_3rd_default/"

.field public static final THEME_DEFAULT_PATH:Ljava/lang/String; = "/system/etc/letvTheme_default.zip"

.field public static final THEME_SYSTEM_PATH:Ljava/lang/String; = "/system/letvTheme/"

.field public static final WALL_PAPER_NAME:Ljava/lang/String; = "wallpaper"

.field private static final WIDTH_2K_SCERRN:I = 0x7d0

.field public static final ZIP:Ljava/lang/String; = ".zip"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p0, "zipFileString"    # Ljava/lang/String;
    .param p1, "outPathString"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v5, 0x0

    .line 55
    .local v5, "inZip":Ljava/util/zip/ZipInputStream;
    const/4 v8, 0x0

    .line 57
    .local v8, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v12}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    .local v6, "inZip":Ljava/util/zip/ZipInputStream;
    :try_start_1
    const-string/jumbo v10, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v10, "szName":Ljava/lang/String;
    move-object v9, v8

    .line 60
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .local v9, "out":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v11

    .local v11, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v11, :cond_4

    .line 61
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, " "

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 62
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 63
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 64
    new-instance v4, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 66
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1ff

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v12, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-object v8, v9

    .end local v4    # "folder":Ljava/io/File;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .local v8, "out":Ljava/io/FileOutputStream;
    :cond_0
    move-object v9, v8

    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 68
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1ff

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v12, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 71
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    :try_start_3
    new-array v1, v12, [B

    .line 74
    .local v1, "buffer":[B
    :goto_1
    invoke-virtual {v6, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    const/4 v12, -0x1

    if-eq v7, v12, :cond_0

    .line 75
    const/4 v12, 0x0

    invoke-virtual {v8, v1, v12, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 76
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 80
    .end local v1    # "buffer":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "len":I
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .end local v10    # "szName":Ljava/lang/String;
    .end local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v5, v6

    .line 81
    .end local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    if-eqz v5, :cond_2

    .line 85
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 90
    :cond_2
    :goto_3
    if-eqz v8, :cond_3

    .line 92
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 53
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    return-void

    .line 83
    .restart local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "szName":Ljava/lang/String;
    .restart local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_4
    if-eqz v6, :cond_5

    .line 85
    :try_start_7
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 90
    :cond_5
    :goto_5
    if-eqz v9, :cond_6

    .line 92
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_6
    :goto_6
    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .local v5, "inZip":Ljava/util/zip/ZipInputStream;
    goto :goto_4

    .line 86
    .end local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 87
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 93
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 94
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 86
    .end local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v10    # "szName":Ljava/lang/String;
    .end local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_3
    move-exception v2

    .line 87
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 93
    :catch_4
    move-exception v2

    .line 94
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 83
    :goto_7
    if-eqz v5, :cond_7

    .line 85
    :try_start_9
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 90
    :cond_7
    :goto_8
    if-eqz v8, :cond_8

    .line 92
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 82
    :cond_8
    :goto_9
    throw v12

    .line 86
    :catch_5
    move-exception v2

    .line 87
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 93
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 94
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    goto :goto_7

    .end local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "szName":Ljava/lang/String;
    :catchall_2
    move-exception v12

    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    goto :goto_7

    .line 80
    .end local v10    # "szName":Ljava/lang/String;
    .local v5, "inZip":Ljava/util/zip/ZipInputStream;
    .local v8, "out":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "szName":Ljava/lang/String;
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .local v8, "out":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .local v5, "inZip":Ljava/util/zip/ZipInputStream;
    goto :goto_2
.end method

.method public static getCalendarIconFilePath()Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 125
    new-instance v6, Ljava/io/File;

    const-string/jumbo v8, "/data/letvTheme/"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v6, "letvThemeFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 127
    .local v7, "letvThemeFilePath":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-lez v8, :cond_0

    .line 128
    const-string/jumbo v7, "/data/letvTheme/"

    .line 133
    .local v7, "letvThemeFilePath":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "icons_1080p"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "com.android.calendar"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "iconFilePath_1080p":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "icons_2k"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "com.android.calendar"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "iconFilePath_2k":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v4, "iconfile_1080":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v5, "iconfile_2k":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "iconDirectory1080":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "iconDirectory2k":Ljava/io/File;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-lez v8, :cond_1

    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 131
    .end local v0    # "iconDirectory1080":Ljava/io/File;
    .end local v1    # "iconDirectory2k":Ljava/io/File;
    .end local v2    # "iconFilePath_1080p":Ljava/lang/String;
    .end local v3    # "iconFilePath_2k":Ljava/lang/String;
    .end local v4    # "iconfile_1080":Ljava/io/File;
    .end local v5    # "iconfile_2k":Ljava/io/File;
    .local v7, "letvThemeFilePath":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "/system/etc/letvTheme_3rd_default/"

    .local v7, "letvThemeFilePath":Ljava/lang/String;
    goto/16 :goto_0

    .line 141
    .restart local v0    # "iconDirectory1080":Ljava/io/File;
    .restart local v1    # "iconDirectory2k":Ljava/io/File;
    .restart local v2    # "iconFilePath_1080p":Ljava/lang/String;
    .restart local v3    # "iconFilePath_2k":Ljava/lang/String;
    .restart local v4    # "iconfile_1080":Ljava/io/File;
    .restart local v5    # "iconfile_2k":Ljava/io/File;
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-lez v8, :cond_2

    .line 142
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 143
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-lez v8, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 144
    return-object v2

    .line 145
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-lez v8, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 146
    return-object v3

    .line 148
    :cond_4
    return-object v10
.end method

.method public static getDefaultThemeZipFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/etc/letvTheme_black_common.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string/jumbo v1, "/system/etc/letvTheme_black_common.zip"

    return-object v1

    .line 106
    :cond_0
    const-string/jumbo v1, "/system/etc/letvTheme_black_cu.zip"

    return-object v1
.end method

.method public static is2KScreen(Landroid/util/DisplayMetrics;)Z
    .locals 4
    .param p0, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 111
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 112
    .local v1, "w":I
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 117
    .local v0, "h":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_0

    .line 118
    const/4 v2, 0x1

    return v2

    .line 120
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
