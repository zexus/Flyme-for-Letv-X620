.class public Landroid/content/res/theme/LeThemeResource;
.super Ljava/lang/Object;
.source "LeThemeResource.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LeThemeResource"


# instance fields
.field private isWallPaper:Z

.field private mPackageName:Ljava/lang/String;

.field private mZipThemeManager:Landroid/content/res/theme/LeThemeZipManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/theme/LeThemeResource;->isWallPaper:Z

    .line 20
    new-instance v0, Landroid/content/res/theme/LeThemeZipManager;

    invoke-direct {v0}, Landroid/content/res/theme/LeThemeZipManager;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/LeThemeResource;->mZipThemeManager:Landroid/content/res/theme/LeThemeZipManager;

    .line 22
    iput-object p1, p0, Landroid/content/res/theme/LeThemeResource;->mPackageName:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/content/res/theme/LeThemeResource;->mZipThemeManager:Landroid/content/res/theme/LeThemeZipManager;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Landroid/content/res/theme/LeThemeResource;->mZipThemeManager:Landroid/content/res/theme/LeThemeZipManager;

    invoke-virtual {v0}, Landroid/content/res/theme/LeThemeZipManager;->clean()V

    .line 61
    :cond_0
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/content/res/theme/LeThemeResource;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeFileStream(ZLjava/lang/String;Ljava/lang/String;Landroid/util/DisplayMetrics;)Ljava/io/InputStream;
    .locals 4
    .param p1, "isIcons"    # Z
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "iStream":Ljava/io/InputStream;
    const-string/jumbo v3, "default_wallpaper.png"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "default_lock_wallpaper.png"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/content/res/theme/LeThemeResource;->isWallPaper:Z

    .line 43
    const-string/jumbo v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "wallPaperPath":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 45
    .local v1, "wallPaperName":Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 46
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 48
    .end local v1    # "wallPaperName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/content/res/theme/LeThemeResource;->mZipThemeManager:Landroid/content/res/theme/LeThemeZipManager;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/content/res/theme/LeThemeResource;->isWallPaper:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 52
    iget-object v3, p0, Landroid/content/res/theme/LeThemeResource;->mZipThemeManager:Landroid/content/res/theme/LeThemeZipManager;

    invoke-virtual {v3, v1, p4}, Landroid/content/res/theme/LeThemeZipManager;->getStreamFromIcon(Ljava/lang/String;Landroid/util/DisplayMetrics;)Ljava/io/InputStream;

    move-result-object v0

    .line 55
    .end local v0    # "iStream":Ljava/io/InputStream;
    .end local v2    # "wallPaperPath":[Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Landroid/content/res/theme/LeThemeResource;->mZipThemeManager:Landroid/content/res/theme/LeThemeZipManager;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 56
    iget-object v3, p0, Landroid/content/res/theme/LeThemeResource;->mZipThemeManager:Landroid/content/res/theme/LeThemeZipManager;

    invoke-virtual {v3, p3, p4}, Landroid/content/res/theme/LeThemeZipManager;->getStreamFromIcon(Ljava/lang/String;Landroid/util/DisplayMetrics;)Ljava/io/InputStream;

    move-result-object v0

    .line 58
    :cond_3
    return-object v0
.end method

.method public getZipFile()Ljava/util/zip/ZipFile;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/content/res/theme/LeThemeResource;->mZipThemeManager:Landroid/content/res/theme/LeThemeZipManager;

    invoke-virtual {v0}, Landroid/content/res/theme/LeThemeZipManager;->getZipFile()Ljava/util/zip/ZipFile;

    move-result-object v0

    return-object v0
.end method
