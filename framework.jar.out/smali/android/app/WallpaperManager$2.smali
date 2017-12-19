.class Landroid/app/WallpaperManager$2;
.super Ljava/lang/Object;
.source "WallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/WallpaperManager;->deleteAllWallpaperHistory()V
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
    .line 1264
    iput-object p1, p0, Landroid/app/WallpaperManager$2;->this$0:Landroid/app/WallpaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1267
    iget-object v3, p0, Landroid/app/WallpaperManager$2;->this$0:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperHistoryArray()[Ljava/io/File;

    move-result-object v1

    .line 1268
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 1269
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1270
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1266
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method
