.class Landroid/app/WallpaperManager$1;
.super Ljava/lang/Object;
.source "WallpaperManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/WallpaperManager;->getWallpaperHistoryArray()[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/WallpaperManager;


# direct methods
.method constructor <init>(Landroid/app/WallpaperManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/WallpaperManager;

    .prologue
    .line 1235
    iput-object p1, p0, Landroid/app/WallpaperManager$1;->this$0:Landroid/app/WallpaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1238
    const-string/jumbo v0, ".jpg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    const/4 v0, 0x1

    return v0

    .line 1241
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
