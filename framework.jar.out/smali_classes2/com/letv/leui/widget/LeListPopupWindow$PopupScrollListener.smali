.class Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "LeListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/LeListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeListPopupWindow;

    .prologue
    .line 876
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/LeListPopupWindow;Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeListPopupWindow;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;-><init>(Lcom/letv/leui/widget/LeListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 878
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 883
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPopupWindow;->-get3(Lcom/letv/leui/widget/LeListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-static {v1}, Lcom/letv/leui/widget/LeListPopupWindow;->-get4(Lcom/letv/leui/widget/LeListPopupWindow;)Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 886
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPopupWindow;->-get4(Lcom/letv/leui/widget/LeListPopupWindow;)Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;->run()V

    goto :goto_0
.end method
