.class Lcom/letv/leui/text/LeFloatingToolbar$2;
.super Ljava/lang/Object;
.source "LeFloatingToolbar.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/text/LeFloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/text/LeFloatingToolbar;


# direct methods
.method constructor <init>(Lcom/letv/leui/text/LeFloatingToolbar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/text/LeFloatingToolbar;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/letv/leui/text/LeFloatingToolbar$2;->this$0:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$2;->this$0:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->-get0(Lcom/letv/leui/text/LeFloatingToolbar;)Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$2;->this$0:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->-get0(Lcom/letv/leui/text/LeFloatingToolbar;)Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    move-result-object v0

    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->-wrap0(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$2;->this$0:Lcom/letv/leui/text/LeFloatingToolbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/text/LeFloatingToolbar;->-set0(Lcom/letv/leui/text/LeFloatingToolbar;Z)Z

    .line 80
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$2;->this$0:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->updateLayout()Lcom/letv/leui/text/LeFloatingToolbar;

    .line 77
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
