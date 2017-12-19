.class Lcom/letv/leui/widget/LeBasePopupWindow$1;
.super Ljava/lang/Object;
.source "LeBasePopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeBasePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeBasePopupWindow;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeBasePopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeBasePopupWindow;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow$1;->this$0:Lcom/letv/leui/widget/LeBasePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow$1;->this$0:Lcom/letv/leui/widget/LeBasePopupWindow;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow$1;->this$0:Lcom/letv/leui/widget/LeBasePopupWindow;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->show()V

    .line 50
    :cond_0
    return-void
.end method
