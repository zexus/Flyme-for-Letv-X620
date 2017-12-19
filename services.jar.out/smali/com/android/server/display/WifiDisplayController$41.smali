.class Lcom/android/server/display/WifiDisplayController$41;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 3935
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$41;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 3939
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "[Exclude Dialog] onDismiss()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$41;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get51(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3942
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$41;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap16(Lcom/android/server/display/WifiDisplayController;)V

    .line 3937
    :cond_0
    return-void
.end method
