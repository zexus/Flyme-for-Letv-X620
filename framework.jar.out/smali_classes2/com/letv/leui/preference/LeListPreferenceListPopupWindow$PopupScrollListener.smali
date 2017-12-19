.class Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "LeListPreferenceListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    .prologue
    .line 1781
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupScrollListener;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupScrollListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupScrollListener;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)V

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
    .line 1783
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1788
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupScrollListener;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1787
    :cond_0
    :goto_0
    return-void

    .line 1789
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupScrollListener;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->-get2(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupScrollListener;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->-get1(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupScrollListener;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->-get4(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1791
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupScrollListener;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->-get4(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->run()V

    goto :goto_0
.end method
