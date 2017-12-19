.class public Landroid/content/res/theme/LeResourceHelper;
.super Ljava/lang/Object;
.source "LeResourceHelper.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field public isIcons:Z

.field private mContext:Landroid/content/res/Resources;

.field public mIconId:I

.field private mLabelId:I

.field public mThemeResource:Landroid/content/res/theme/LeThemeResource;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "context"    # Landroid/content/res/Resources;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/theme/LeResourceHelper;->mThemeResource:Landroid/content/res/theme/LeThemeResource;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/theme/LeResourceHelper;->isIcons:Z

    .line 20
    const-string/jumbo v0, "THEMEDEBUG"

    iput-object v0, p0, Landroid/content/res/theme/LeResourceHelper;->TAG:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Landroid/content/res/theme/LeResourceHelper;->mContext:Landroid/content/res/Resources;

    .line 22
    return-void
.end method

.method private getThemeFileStream(Landroid/content/res/Resources;ILjava/lang/String;ZLandroid/util/DisplayMetrics;)Ljava/io/InputStream;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "isIcons"    # Z
    .param p5, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v3, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "resPackageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    .end local v1    # "resPackageName":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/content/res/theme/LeResourceHelper;->mThemeResource:Landroid/content/res/theme/LeThemeResource;

    if-nez v2, :cond_2

    .line 50
    const-string/jumbo v2, "android"

    invoke-virtual {p0, v2}, Landroid/content/res/theme/LeResourceHelper;->setThemeResource(Ljava/lang/String;)V

    .line 55
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/content/res/theme/LeResourceHelper;->mThemeResource:Landroid/content/res/theme/LeThemeResource;

    invoke-virtual {v2, p4, p3, v1, p5}, Landroid/content/res/theme/LeThemeResource;->getThemeFileStream(ZLjava/lang/String;Ljava/lang/String;Landroid/util/DisplayMetrics;)Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    .line 51
    :cond_2
    iget-object v2, p0, Landroid/content/res/theme/LeResourceHelper;->mThemeResource:Landroid/content/res/theme/LeThemeResource;

    invoke-virtual {v2}, Landroid/content/res/theme/LeThemeResource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 52
    iget-object v2, p0, Landroid/content/res/theme/LeResourceHelper;->mThemeResource:Landroid/content/res/theme/LeThemeResource;

    invoke-virtual {v2}, Landroid/content/res/theme/LeThemeResource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    new-instance v2, Landroid/content/res/theme/LeThemeResource;

    invoke-direct {v2, v1}, Landroid/content/res/theme/LeThemeResource;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/content/res/theme/LeResourceHelper;->mThemeResource:Landroid/content/res/theme/LeThemeResource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    return-object v3
.end method


# virtual methods
.method public getReplaceIs(Landroid/content/res/Resources;ILjava/lang/String;Landroid/util/DisplayMetrics;)Ljava/io/InputStream;
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Landroid/content/res/theme/LeResourceHelper;->mContext:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/res/theme/LeResourceHelper;->mContext:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const/4 v6, 0x0

    .line 66
    .local v6, "is":Ljava/io/InputStream;
    iget v0, p0, Landroid/content/res/theme/LeResourceHelper;->mIconId:I

    if-ne p2, v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/theme/LeResourceHelper;->isIcons:Z

    .line 69
    :cond_0
    iget-boolean v4, p0, Landroid/content/res/theme/LeResourceHelper;->isIcons:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/theme/LeResourceHelper;->getThemeFileStream(Landroid/content/res/Resources;ILjava/lang/String;ZLandroid/util/DisplayMetrics;)Ljava/io/InputStream;

    move-result-object v6

    .line 70
    .local v6, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/theme/LeResourceHelper;->isIcons:Z

    .line 71
    return-object v6

    .line 73
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_1
    return-object v1
.end method

.method public getReplaceText(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 79
    iget-object v2, p0, Landroid/content/res/theme/LeResourceHelper;->mContext:Landroid/content/res/Resources;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/res/theme/LeResourceHelper;->mContext:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, "mapRes":Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.baidu.BaiduMap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/content/res/theme/LeResourceHelper;->mLabelId:I

    if-ne p2, v2, :cond_0

    .line 83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "Map"

    const v4, 0x10405fc

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    .local v1, "mapRes":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 85
    return-object v1

    .line 88
    .local v1, "mapRes":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    return-object v5

    .line 91
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "mapRes":Ljava/lang/CharSequence;
    :cond_0
    return-object v1

    .line 93
    :cond_1
    return-object v5
.end method

.method public getThemeResource()Landroid/content/res/theme/LeThemeResource;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/content/res/theme/LeResourceHelper;->mThemeResource:Landroid/content/res/theme/LeThemeResource;

    return-object v0
.end method

.method public setPackageIconId(ILjava/lang/String;)V
    .locals 0
    .param p1, "iconId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 27
    iput p1, p0, Landroid/content/res/theme/LeResourceHelper;->mIconId:I

    .line 26
    return-void
.end method

.method public setPackageLabelId(I)V
    .locals 0
    .param p1, "labelId"    # I

    .prologue
    .line 31
    iput p1, p0, Landroid/content/res/theme/LeResourceHelper;->mLabelId:I

    .line 30
    return-void
.end method

.method public setThemeResource(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Landroid/content/res/theme/LeThemeResource;

    invoke-direct {v0, p1}, Landroid/content/res/theme/LeThemeResource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/res/theme/LeResourceHelper;->mThemeResource:Landroid/content/res/theme/LeThemeResource;

    .line 34
    return-void
.end method
