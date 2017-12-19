.class Landroid/app/WallpaperManager$Globals$1;
.super Landroid/os/Handler;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/WallpaperManager$Globals;


# direct methods
.method constructor <init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/WallpaperManager$Globals;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 277
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals$1;->this$1:Landroid/app/WallpaperManager$Globals;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 280
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 279
    :goto_0
    return-void

    .line 282
    :pswitch_0
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$1:Landroid/app/WallpaperManager$Globals;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/WallpaperManager$Globals;->-set3(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 284
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$1:Landroid/app/WallpaperManager$Globals;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/WallpaperManager$Globals;->-set1(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 288
    :pswitch_1
    monitor-enter p0

    .line 289
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$1:Landroid/app/WallpaperManager$Globals;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/WallpaperManager$Globals;->-set2(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 290
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$1:Landroid/app/WallpaperManager$Globals;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/WallpaperManager$Globals;->-set0(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 288
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
