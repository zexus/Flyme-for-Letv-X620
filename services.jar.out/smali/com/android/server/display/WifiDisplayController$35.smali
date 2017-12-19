.class Lcom/android/server/display/WifiDisplayController$35;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$flags:I

.field final synthetic val$height:I

.field final synthetic val$oldDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$oldSurface:Landroid/view/Surface;

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;
    .param p2, "val$oldSurface"    # Landroid/view/Surface;
    .param p3, "val$surface"    # Landroid/view/Surface;
    .param p4, "val$oldDisplay"    # Landroid/hardware/display/WifiDisplay;
    .param p5, "val$display"    # Landroid/hardware/display/WifiDisplay;
    .param p6, "val$flags"    # I
    .param p7, "val$width"    # I
    .param p8, "val$height"    # I

    .prologue
    .line 1823
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$35;->val$oldSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController$35;->val$surface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/server/display/WifiDisplayController$35;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p5, p0, Lcom/android/server/display/WifiDisplayController$35;->val$display:Landroid/hardware/display/WifiDisplay;

    iput p6, p0, Lcom/android/server/display/WifiDisplayController$35;->val$flags:I

    iput p7, p0, Lcom/android/server/display/WifiDisplayController$35;->val$width:I

    iput p8, p0, Lcom/android/server/display/WifiDisplayController$35;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1826
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1827
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oldSurface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$35;->val$oldSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", surface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$35;->val$surface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1828
    const-string/jumbo v2, ", oldDisplay = "

    .line 1827
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1828
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$35;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    .line 1827
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1828
    const-string/jumbo v2, ", display = "

    .line 1827
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1828
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$35;->val$display:Landroid/hardware/display/WifiDisplay;

    .line 1827
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->val$oldSurface:Landroid/view/Surface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->val$surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$35;->val$oldSurface:Landroid/view/Surface;

    if-eq v0, v1, :cond_4

    .line 1832
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "callback onDisplayDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get29(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnected()V

    .line 1834
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$35;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap13(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;)V

    .line 1841
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->val$display:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_3

    .line 1842
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$35;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1843
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "callback onDisplayConnecting(): display = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$35;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get29(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$35;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V

    .line 1845
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap11(Lcom/android/server/display/WifiDisplayController;)V

    .line 1851
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->val$surface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->val$surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$35;->val$oldSurface:Landroid/view/Surface;

    if-eq v0, v1, :cond_3

    .line 1853
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget v1, p0, Lcom/android/server/display/WifiDisplayController$35;->val$flags:I

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap53(Lcom/android/server/display/WifiDisplayController;I)V

    .line 1855
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "callback onDisplayConnected(): display = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1856
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$35;->val$display:Landroid/hardware/display/WifiDisplay;

    .line 1855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1857
    const-string/jumbo v2, ", surface = "

    .line 1855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1857
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$35;->val$surface:Landroid/view/Surface;

    .line 1855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1858
    const-string/jumbo v2, ", width = "

    .line 1855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1858
    iget v2, p0, Lcom/android/server/display/WifiDisplayController$35;->val$width:I

    .line 1855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1859
    const-string/jumbo v2, ", height = "

    .line 1855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1859
    iget v2, p0, Lcom/android/server/display/WifiDisplayController$35;->val$height:I

    .line 1855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1860
    const-string/jumbo v2, ", flags = "

    .line 1855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1860
    iget v2, p0, Lcom/android/server/display/WifiDisplayController$35;->val$flags:I

    .line 1855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get29(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$35;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$35;->val$surface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/display/WifiDisplayController$35;->val$width:I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController$35;->val$height:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController$35;->val$flags:I

    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1864
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$35;->val$display:Landroid/hardware/display/WifiDisplay;

    iget v3, p0, Lcom/android/server/display/WifiDisplayController$35;->val$flags:I

    iget v0, p0, Lcom/android/server/display/WifiDisplayController$35;->val$width:I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController$35;->val$height:I

    if-ge v0, v4, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/display/WifiDisplayController;->-wrap10(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;IZ)V

    .line 1825
    :cond_3
    return-void

    .line 1835
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$35;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1836
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "callback onDisplayConnectionFailed()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get29(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnectionFailed()V

    .line 1838
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap12(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_0

    .line 1846
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$35;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1849
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get29(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$35;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V

    goto/16 :goto_1

    .line 1864
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method
