.class public Landroid/content/res/theme/LeThemeZipManager;
.super Ljava/lang/Object;
.source "LeThemeZipManager.java"


# instance fields
.field mSystemZipThemeManager:Landroid/content/res/theme/LeThemeZipManager;

.field mZipIcon:Landroid/content/res/theme/LeThemeZipFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/content/res/theme/LeThemeZipFile;

    invoke-direct {v0}, Landroid/content/res/theme/LeThemeZipFile;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/LeThemeZipManager;->mZipIcon:Landroid/content/res/theme/LeThemeZipFile;

    .line 16
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/content/res/theme/LeThemeZipManager;->mZipIcon:Landroid/content/res/theme/LeThemeZipFile;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Landroid/content/res/theme/LeThemeZipManager;->mZipIcon:Landroid/content/res/theme/LeThemeZipFile;

    invoke-virtual {v0}, Landroid/content/res/theme/LeThemeZipFile;->clean()V

    .line 33
    :cond_0
    return-void
.end method

.method public getStreamFromIcon(Ljava/lang/String;Landroid/util/DisplayMetrics;)Ljava/io/InputStream;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "iStream":Ljava/io/InputStream;
    iget-object v1, p0, Landroid/content/res/theme/LeThemeZipManager;->mZipIcon:Landroid/content/res/theme/LeThemeZipFile;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/theme/LeThemeZipFile;->getIconStream(Ljava/lang/String;Landroid/util/DisplayMetrics;)Ljava/io/InputStream;

    move-result-object v0

    .line 27
    .local v0, "iStream":Ljava/io/InputStream;
    return-object v0
.end method

.method public getZipFile()Ljava/util/zip/ZipFile;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Landroid/content/res/theme/LeThemeZipManager;->mZipIcon:Landroid/content/res/theme/LeThemeZipFile;

    invoke-virtual {v0}, Landroid/content/res/theme/LeThemeZipFile;->getZipFile()Ljava/util/zip/ZipFile;

    move-result-object v0

    return-object v0
.end method

.method public setSystemThemeManager(Landroid/content/res/theme/LeThemeZipManager;)V
    .locals 0
    .param p1, "sysManager"    # Landroid/content/res/theme/LeThemeZipManager;

    .prologue
    .line 21
    iput-object p1, p0, Landroid/content/res/theme/LeThemeZipManager;->mSystemZipThemeManager:Landroid/content/res/theme/LeThemeZipManager;

    .line 20
    return-void
.end method
