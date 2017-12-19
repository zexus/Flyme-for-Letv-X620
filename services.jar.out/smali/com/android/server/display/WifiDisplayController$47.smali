.class Lcom/android/server/display/WifiDisplayController$47;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->prepareDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 4020
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$47;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4023
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4024
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "HDMI on, user DON\'T turn off WifiDisplay -> turn off HDMI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$47;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap51(Lcom/android/server/display/WifiDisplayController;)V

    .line 4027
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$47;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-set36(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 4022
    return-void
.end method
