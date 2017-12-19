.class Landroid/app/WallpaperManager$3;
.super Ljava/lang/Object;
.source "WallpaperManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/WallpaperManager;->checkRepeat(Ljava/io/File;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/WallpaperManager;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Landroid/app/WallpaperManager;Ljava/lang/String;ILjava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/WallpaperManager;
    .param p2, "val$path"    # Ljava/lang/String;
    .param p3, "val$size"    # I
    .param p4, "val$file"    # Ljava/io/File;

    .prologue
    .line 1384
    iput-object p1, p0, Landroid/app/WallpaperManager$3;->this$0:Landroid/app/WallpaperManager;

    iput-object p2, p0, Landroid/app/WallpaperManager$3;->val$path:Ljava/lang/String;

    iput p3, p0, Landroid/app/WallpaperManager$3;->val$size:I

    iput-object p4, p0, Landroid/app/WallpaperManager$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .param p1, "arg0"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 1387
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager$3;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1388
    invoke-static {p1}, Landroid/app/WallpaperManager;->-wrap1(Ljava/io/File;)I

    move-result v0

    .line 1389
    .local v0, "length":I
    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/app/WallpaperManager;->-wrap1(Ljava/io/File;)I

    move-result v1

    iget v2, p0, Landroid/app/WallpaperManager$3;->val$size:I

    if-ne v1, v2, :cond_0

    .line 1390
    iget-object v1, p0, Landroid/app/WallpaperManager$3;->val$file:Ljava/io/File;

    invoke-static {p1, v1}, Landroid/app/WallpaperManager;->-wrap0(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1391
    const/4 v1, 0x1

    return v1

    .line 1395
    .end local v0    # "length":I
    :cond_0
    return v3
.end method
