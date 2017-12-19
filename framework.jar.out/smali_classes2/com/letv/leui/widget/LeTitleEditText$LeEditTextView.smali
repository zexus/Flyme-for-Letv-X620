.class public Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;
.super Lcom/letv/leui/widget/LeAutoFillEditText;
.source "LeTitleEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeTitleEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeEditTextView"
.end annotation


# instance fields
.field private mLeTitleEditText:Lcom/letv/leui/widget/LeTitleEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 815
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeAutoFillEditText;-><init>(Landroid/content/Context;)V

    .line 814
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 819
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeAutoFillEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 818
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 824
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeAutoFillEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 823
    return-void
.end method

.method private isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 835
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 857
    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeAutoFillEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 858
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->mLeTitleEditText:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeTitleEditText;->onTextFocusChanged()V

    .line 856
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 888
    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/LeAutoFillEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 844
    invoke-super {p0, p1}, Lcom/letv/leui/widget/LeAutoFillEditText;->onWindowFocusChanged(Z)V

    .line 846
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->mLeTitleEditText:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeTitleEditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 848
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 849
    const-string/jumbo v2, "input_method"

    .line 848
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 850
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 843
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method setEditTextView(Lcom/letv/leui/widget/LeTitleEditText;)V
    .locals 0
    .param p1, "editView"    # Lcom/letv/leui/widget/LeTitleEditText;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->mLeTitleEditText:Lcom/letv/leui/widget/LeTitleEditText;

    .line 827
    return-void
.end method
