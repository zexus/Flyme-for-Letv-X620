.class Lcom/android/server/display/WifiDisplayController$6;
.super Landroid/database/ContentObserver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 3031
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3035
    if-eqz p1, :cond_0

    .line 3036
    return-void

    .line 3039
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 3040
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get17(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_display_display_toast_time"

    const/16 v5, 0x14

    .line 3039
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayController;->-set1(Lcom/android/server/display/WifiDisplayController;I)I

    .line 3042
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 3043
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get17(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_display_notification_time"

    const/16 v5, 0x78

    .line 3042
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayController;->-set0(Lcom/android/server/display/WifiDisplayController;I)I

    .line 3045
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 3046
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get17(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "wifi_display_sqc_info_on"

    .line 3045
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/server/display/WifiDisplayController;->-set3(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 3048
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 3049
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get17(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "wifi_display_qe_on"

    .line 3048
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/android/server/display/WifiDisplayController;->-set2(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 3051
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 3052
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get17(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_display_auto_channel_selection"

    .line 3051
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-set4(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 3055
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange(), t_time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get2(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3056
    const-string/jumbo v2, ",n_time:"

    .line 3055
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3056
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get1(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    .line 3055
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3057
    const-string/jumbo v2, ",sqc:"

    .line 3055
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3057
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get4(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v2

    .line 3055
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3058
    const-string/jumbo v2, ",qe:"

    .line 3055
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3058
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get3(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v2

    .line 3055
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3059
    const-string/jumbo v2, ",autoChannel:"

    .line 3055
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3059
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get5(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v2

    .line 3055
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    const-string/jumbo v0, "ro.mtk_wfd_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3063
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap30(Lcom/android/server/display/WifiDisplayController;)V

    .line 3064
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap27(Lcom/android/server/display/WifiDisplayController;)V

    .line 3065
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap33(Lcom/android/server/display/WifiDisplayController;)V

    .line 3066
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap29(Lcom/android/server/display/WifiDisplayController;)V

    .line 3033
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 3045
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 3048
    goto/16 :goto_1

    :cond_4
    move v1, v2

    .line 3051
    goto/16 :goto_2
.end method
