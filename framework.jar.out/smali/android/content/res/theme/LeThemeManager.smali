.class public Landroid/content/res/theme/LeThemeManager;
.super Ljava/lang/Object;
.source "LeThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/theme/LeThemeManager$FileFilterTest;
    }
.end annotation


# static fields
.field public static final CHANGE_THEME_ACTION:Ljava/lang/String; = "change.theme.action"

.field private static final CHANGE_THEME_COMPLETE:I = 0x3

.field public static final CHANGE_THEME_COMPLETE_TEXT:Ljava/lang/String; = "changeThemeComplete"

.field public static final DEFALT_LOCK_WALLPAPER:Ljava/lang/String; = "default_lock_wallpaper"

.field public static final DEFALT_WALLPAPER:Ljava/lang/String; = "default_wallpaper"

.field public static final INTENT_EXTRA_TEXT:Ljava/lang/String; = "extra_Text"

.field private static final SET_WALLPAPER_FAIL:I = 0x2

.field public static final SET_WALLPAPER_FAIL_TEXT:Ljava/lang/String; = "setWallpaperFail"

.field public static final SYSTEM_PROPERTY_THEME_VALUE:Ljava/lang/String; = "theme_value"

.field public static final TARGET_THEME_RES_DATA_PATH:Ljava/lang/String; = "/data/"

.field public static final TARGET_WALL_PAPER_RES_PATH:Ljava/lang/String; = "/data/letvTheme/wallpaper"

.field public static final TARGET_WALL_PAPER_RES_PATH_1:Ljava/lang/String; = "/data/letvTheme1/wallpaper"

.field public static final THEME_FILE_NAME:Ljava/lang/String; = "letvTheme"

.field public static final THEME_FILE_NAME_1:Ljava/lang/String; = "letvTheme1"

.field public static final THEME_FILE_PATH:Ljava/lang/String; = "/data/letvTheme"

.field public static final THEME_FILE_PATH_1:Ljava/lang/String; = "/data/letvTheme1"

.field public static final THEME_RES_DATA_PATH:Ljava/lang/String; = "/system/etc/"

.field public static final UN_THEMEZIP_FAIL:I = 0x1

.field public static final UN_THEME_ZIP_FAIL_TEXT:Ljava/lang/String; = "unThemeZipFail"

.field private static mThemeManager:Landroid/content/res/theme/LeThemeManager;

.field public static mThemeZips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flag:Z

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private reNameLetvThemeFileFail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/theme/LeThemeManager;->mThemeZips:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/LeThemeManager;->mCurConfig:Landroid/content/res/Configuration;

    .line 37
    iput-boolean v1, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    .line 45
    iput-boolean v1, p0, Landroid/content/res/theme/LeThemeManager;->reNameLetvThemeFileFail:Z

    .line 62
    iput-object p1, p0, Landroid/content/res/theme/LeThemeManager;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/res/theme/LeThemeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v0, Landroid/content/res/theme/LeThemeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/content/res/theme/LeThemeManager;

    invoke-direct {v0, p0}, Landroid/content/res/theme/LeThemeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/res/theme/LeThemeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    .line 58
    :cond_0
    sget-object v0, Landroid/content/res/theme/LeThemeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    return-object v0
.end method

.method public static getThemeZips()V
    .locals 7

    .prologue
    .line 90
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/system/etc/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_0
    new-instance v1, Landroid/content/res/theme/LeThemeManager$FileFilterTest;

    const-string/jumbo v3, ".zip"

    invoke-direct {v1, v3}, Landroid/content/res/theme/LeThemeManager$FileFilterTest;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "fileFilter":Landroid/content/res/theme/LeThemeManager$FileFilterTest;
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 96
    .local v2, "zipfile":Ljava/io/File;
    sget-object v6, Landroid/content/res/theme/LeThemeManager;->mThemeZips:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "zipfile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private getWallpaperIs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 9
    .param p1, "wallpaperFilePath"    # Ljava/lang/String;
    .param p2, "whichWallpaper"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 234
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 238
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v4, v6, v5

    .line 239
    .local v4, "tempFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 240
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 238
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 236
    .end local v4    # "tempFile":Ljava/io/File;
    :cond_1
    const/4 v5, 0x0

    return-object v5

    .line 244
    :cond_2
    const/4 v2, 0x0

    .line 246
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 251
    .end local v3    # "is":Ljava/io/FileInputStream;
    :goto_1
    return-object v2

    .line 247
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "zipFileString"    # Ljava/lang/String;
    .param p2, "outPathString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v5, Ljava/util/zip/ZipInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v13}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 119
    .local v5, "inZip":Ljava/util/zip/ZipInputStream;
    const-string/jumbo v10, ""

    .line 120
    .local v10, "szName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    const-string/jumbo v13, "/data/letvTheme1"

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v8, "letvThemeFile1":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string/jumbo v13, "/data/letvTheme"

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v7, "letvThemeFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_0

    .line 123
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/content/res/theme/LeThemeManager;->reNameLetvThemeFileFail:Z

    .line 125
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v12

    .local v12, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v12, :cond_4

    .line 126
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, " "

    const-string/jumbo v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 127
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/content/res/theme/LeThemeManager;->reNameLetvThemeFileFail:Z

    if-nez v13, :cond_1

    .line 128
    if-eqz v10, :cond_1

    const-string/jumbo v13, "letvTheme"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 129
    const-string/jumbo v13, "letvTheme"

    const-string/jumbo v14, "letvTheme1"

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 130
    .local v11, "szNameNew":Ljava/lang/String;
    move-object v10, v11

    .line 133
    .end local v11    # "szNameNew":Ljava/lang/String;
    :cond_1
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 134
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 135
    new-instance v4, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 137
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x1ff

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0

    .line 139
    .end local v4    # "folder":Ljava/io/File;
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 141
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x1ff

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 142
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 144
    .local v9, "out":Ljava/io/FileOutputStream;
    const/16 v13, 0x400

    new-array v2, v13, [B

    .line 145
    .local v2, "buffer":[B
    :goto_1
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v13, -0x1

    if-eq v6, v13, :cond_3

    .line 146
    const/4 v13, 0x0

    invoke-virtual {v9, v2, v13, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 147
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_1

    .line 149
    :cond_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    .line 152
    .end local v2    # "buffer":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "len":I
    .end local v9    # "out":Ljava/io/FileOutputStream;
    :cond_4
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 116
    return-void
.end method

.method public deleteDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p1, "sPath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 190
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 193
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    iput-boolean v6, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 199
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 200
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 201
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/res/theme/LeThemeManager;->deleteFile(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    .line 202
    iget-boolean v3, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    if-nez v3, :cond_4

    .line 210
    :cond_1
    iget-boolean v3, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    if-nez v3, :cond_5

    .line 211
    return v5

    .line 195
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_2
    return v5

    .line 205
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v2    # "i":I
    :cond_3
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/res/theme/LeThemeManager;->deleteDirectory(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    .line 206
    iget-boolean v3, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    if-eqz v3, :cond_1

    .line 199
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 213
    return v6

    .line 215
    :cond_6
    return v5
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sPath"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    .line 181
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    .line 186
    :cond_0
    iget-boolean v1, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    return v1
.end method

.method public deleteThemeFile1(Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetFilePath"    # Ljava/lang/String;

    .prologue
    .line 328
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    iget-boolean v1, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    return v1

    .line 332
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {p0, p1}, Landroid/content/res/theme/LeThemeManager;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 335
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/theme/LeThemeManager;->deleteDirectory(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public deleteThemeRes(Ljava/lang/String;)Z
    .locals 10
    .param p1, "targetFilePath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 156
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/data/letvTheme1"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, "letvThemeFile1":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/data/letvTheme"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "letvThemeFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 159
    :cond_0
    return v3

    .line 158
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 162
    iget-boolean v4, p0, Landroid/content/res/theme/LeThemeManager;->reNameLetvThemeFileFail:Z

    if-eqz v4, :cond_2

    .line 163
    const-string/jumbo p1, "/data/letvTheme1"

    .line 164
    iget-boolean v4, p0, Landroid/content/res/theme/LeThemeManager;->reNameLetvThemeFileFail:Z

    if-eqz v4, :cond_3

    :goto_0
    iput-boolean v3, p0, Landroid/content/res/theme/LeThemeManager;->reNameLetvThemeFileFail:Z

    .line 167
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 169
    iget-boolean v3, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    return v3

    .line 164
    .end local v0    # "deleteFile":Ljava/io/File;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 171
    .restart local v0    # "deleteFile":Ljava/io/File;
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    invoke-virtual {p0, p1}, Landroid/content/res/theme/LeThemeManager;->deleteFile(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 174
    :cond_5
    invoke-virtual {p0, p1}, Landroid/content/res/theme/LeThemeManager;->deleteDirectory(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public reNameLetvTheme1ToLetvTheme()V
    .locals 6

    .prologue
    .line 255
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/letvTheme1"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "letvTheme1File":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 257
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/letvTheme"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 254
    :cond_0
    return-void
.end method

.method public sendChangeThemeBroadCast(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 313
    const-string/jumbo v0, ""

    .line 314
    .local v0, "extraText":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 315
    const-string/jumbo v0, "setWallpaperFail"

    .line 321
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 322
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "extra_Text"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string/jumbo v2, "change.theme.action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    iget-object v2, p0, Landroid/content/res/theme/LeThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 312
    return-void

    .line 316
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 317
    const-string/jumbo v0, "changeThemeComplete"

    goto :goto_0

    .line 318
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 319
    const-string/jumbo v0, "unThemeZipFail"

    goto :goto_0
.end method

.method public setWallpaper(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "wallpaperFilePath"    # Ljava/lang/String;
    .param p2, "isLockWallpaper"    # Z

    .prologue
    .line 263
    :try_start_0
    iget-object v8, p0, Landroid/content/res/theme/LeThemeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "android.permission.SET_WALLPAPER"

    .line 264
    const-string/jumbo v10, "themeManagerSetWallpaper"

    .line 263
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v8, "/data/letvTheme"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 270
    :cond_0
    const-string/jumbo p1, "/data/letvTheme1/wallpaper"

    .line 272
    :cond_1
    move-object v5, p1

    .line 273
    .local v5, "tempLockWallpaperFilePath":Ljava/lang/String;
    iget-object v8, p0, Landroid/content/res/theme/LeThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v8}, Landroid/content/res/theme/LeThemeUtils;->is2KScreen(Landroid/util/DisplayMetrics;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 274
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "2k"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 275
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v7, "zkFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 277
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "1080p"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 282
    .end local v7    # "zkFile":Ljava/io/File;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 283
    .local v4, "is":Ljava/io/InputStream;
    if-eqz p2, :cond_5

    .line 284
    const-string/jumbo v8, "default_lock_wallpaper"

    invoke-direct {p0, p1, v8}, Landroid/content/res/theme/LeThemeManager;->getWallpaperIs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 288
    .local v4, "is":Ljava/io/InputStream;
    :goto_2
    if-eqz v4, :cond_3

    .line 289
    iget-object v8, p0, Landroid/content/res/theme/LeThemeManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    .line 291
    .local v6, "wallpaperManager":Landroid/app/WallpaperManager;
    if-eqz p2, :cond_6

    .line 292
    :try_start_1
    invoke-virtual {v6, v4}, Landroid/app/WallpaperManager;->setStreamToLockWallpaper(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :goto_3
    if-eqz v4, :cond_3

    .line 302
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 261
    .end local v6    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_3
    :goto_4
    return-void

    .line 265
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "tempLockWallpaperFilePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 280
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "tempLockWallpaperFilePath":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "1080p"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 286
    .local v4, "is":Ljava/io/InputStream;
    :cond_5
    const-string/jumbo v8, "default_wallpaper"

    invoke-direct {p0, p1, v8}, Landroid/content/res/theme/LeThemeManager;->getWallpaperIs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .local v4, "is":Ljava/io/InputStream;
    goto :goto_2

    .line 294
    .restart local v6    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_6
    :try_start_3
    invoke-virtual {v6, v4}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 296
    :catch_1
    move-exception v0

    .line 297
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 298
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Landroid/content/res/theme/LeThemeManager;->sendChangeThemeBroadCast(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 301
    if-eqz v4, :cond_3

    .line 302
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 304
    :catch_2
    move-exception v2

    .line 306
    .local v2, "e2":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "e2":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 306
    .restart local v2    # "e2":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 299
    .end local v2    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 301
    if-eqz v4, :cond_7

    .line 302
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 299
    :cond_7
    :goto_5
    throw v8

    .line 304
    :catch_4
    move-exception v2

    .line 306
    .restart local v2    # "e2":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method
