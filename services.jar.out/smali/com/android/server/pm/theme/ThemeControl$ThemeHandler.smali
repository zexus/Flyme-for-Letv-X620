.class Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;
.super Landroid/os/Handler;
.source "ThemeControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/theme/ThemeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/theme/ThemeControl;


# direct methods
.method constructor <init>(Lcom/android/server/pm/theme/ThemeControl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/theme/ThemeControl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;->this$0:Lcom/android/server/pm/theme/ThemeControl;

    .line 105
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 104
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 127
    const-string/jumbo v1, "ThemeControl"

    const-string/jumbo v2, "ControlTheme handler finished : quitSafely"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 111
    :pswitch_0
    const-string/jumbo v1, "ThemeControl"

    const-string/jumbo v2, "ControlTheme start handleZipFile"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 113
    .local v0, "themeName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;->this$0:Lcom/android/server/pm/theme/ThemeControl;

    invoke-static {v1}, Lcom/android/server/pm/theme/ThemeControl;->-get0(Lcom/android/server/pm/theme/ThemeControl;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;->this$0:Lcom/android/server/pm/theme/ThemeControl;

    iget-object v2, p0, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;->this$0:Lcom/android/server/pm/theme/ThemeControl;

    invoke-static {v2}, Lcom/android/server/pm/theme/ThemeControl;->-get0(Lcom/android/server/pm/theme/ThemeControl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/server/pm/theme/ThemeControl;->-wrap0(Lcom/android/server/pm/theme/ThemeControl;Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    :goto_1
    const-string/jumbo v1, "ThemeControl"

    const-string/jumbo v2, "ControlTheme Complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;->this$0:Lcom/android/server/pm/theme/ThemeControl;

    invoke-static {v1}, Lcom/android/server/pm/theme/ThemeControl;->-get1(Lcom/android/server/pm/theme/ThemeControl;)Lcom/android/server/pm/theme/ThemeControl$Upzip;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;->this$0:Lcom/android/server/pm/theme/ThemeControl;

    invoke-static {v1}, Lcom/android/server/pm/theme/ThemeControl;->-get1(Lcom/android/server/pm/theme/ThemeControl;)Lcom/android/server/pm/theme/ThemeControl$Upzip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/theme/ThemeControl$Upzip;->upzipComplete()V

    goto :goto_0

    .line 116
    :cond_0
    const-string/jumbo v1, "ThemeControl"

    const-string/jumbo v2, "ControlTheme mContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 122
    :cond_1
    const-string/jumbo v1, "ThemeControl"

    const-string/jumbo v2, "ControlTheme upzip is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
