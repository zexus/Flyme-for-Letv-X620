.class final Lcom/android/server/wallpaper/WallpaperManagerService$H;
.super Landroid/os/Handler;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final MSG_RELOAD_LOCK_WALLPAPER:I = 0x1

.field public static final MSG_RELOAD_WALLPAPER:I


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$H;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private getMsgString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_0

    .line 125
    const-string/jumbo v0, "MSG_UNKNOW"

    return-object v0

    .line 121
    :pswitch_0
    const-string/jumbo v0, "MSG_RELOAD_WALLPAPER"

    return-object v0

    .line 123
    :pswitch_1
    const-string/jumbo v0, "MSG_RELOAD_WALLPAPER"

    return-object v0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 131
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$H;->getMsgString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 144
    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "Unknow message type"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 135
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$H;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap5(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    goto :goto_0

    .line 139
    .end local v0    # "userId":I
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 140
    .restart local v0    # "userId":I
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$H;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap4(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
