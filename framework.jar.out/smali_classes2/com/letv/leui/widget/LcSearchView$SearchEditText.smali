.class Lcom/letv/leui/widget/LcSearchView$SearchEditText;
.super Landroid/widget/EditText;
.source "LcSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LcSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchEditText"
.end annotation


# instance fields
.field private mSearchView:Lcom/letv/leui/widget/LcSearchView;

.field final synthetic this$0:Lcom/letv/leui/widget/LcSearchView;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/LcSearchView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LcSearchView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 833
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->this$0:Lcom/letv/leui/widget/LcSearchView;

    .line 834
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 833
    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LcSearchView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LcSearchView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 837
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->this$0:Lcom/letv/leui/widget/LcSearchView;

    .line 838
    invoke-direct {p0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 837
    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LcSearchView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LcSearchView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 841
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->this$0:Lcom/letv/leui/widget/LcSearchView;

    .line 843
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 842
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 868
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 869
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->mSearchView:Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LcSearchView;->onTextFocusChanged()V

    .line 867
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 856
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 857
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->mSearchView:Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LcSearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 860
    const-string/jumbo v2, "input_method"

    .line 859
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 861
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 855
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method setSearchView(Lcom/letv/leui/widget/LcSearchView;)V
    .locals 0
    .param p1, "searchView"    # Lcom/letv/leui/widget/LcSearchView;

    .prologue
    .line 847
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->mSearchView:Lcom/letv/leui/widget/LcSearchView;

    .line 846
    return-void
.end method
