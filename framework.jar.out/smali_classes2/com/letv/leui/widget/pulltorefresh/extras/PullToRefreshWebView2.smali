.class public Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;
.super Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;
.source "PullToRefreshWebView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2$JsValueCallback;
    }
.end annotation


# static fields
.field static final DEF_JS_READY_PULL_DOWN_CALL:Ljava/lang/String; = "javascript:isReadyForPullDown();"

.field static final DEF_JS_READY_PULL_UP_CALL:Ljava/lang/String; = "javascript:isReadyForPullUp();"

.field static final JS_INTERFACE_PKG:Ljava/lang/String; = "ptr"


# instance fields
.field private final mIsReadyForPullDown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsReadyForPullUp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mJsCallback:Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2$JsValueCallback;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->mIsReadyForPullDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->mIsReadyForPullUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->mIsReadyForPullDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->mIsReadyForPullUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->mIsReadyForPullDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->mIsReadyForPullUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->mIsReadyForPullDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->mIsReadyForPullUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    return-void
.end method


# virtual methods
.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 89
    .local v2, "webView":Landroid/webkit/WebView;
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->mRefreshableViewLayout:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 91
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->mRefreshableViewLayout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 92
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    .line 93
    check-cast v1, Landroid/webkit/WebView;

    .end local v1    # "view":Landroid/view/View;
    return-object v1

    .line 95
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "Refreshable View is not a WebView"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;

    move-result-object v2

    .line 102
    .local v2, "webView":Landroid/webkit/WebView;
    new-instance v3, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2$JsValueCallback;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2$JsValueCallback;-><init>(Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;)V

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->mJsCallback:Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2$JsValueCallback;

    .line 103
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->mJsCallback:Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2$JsValueCallback;

    const-string/jumbo v4, "ptr"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    return-object v2
.end method

.method protected isReadyForPullEnd()Z
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:isReadyForPullUp();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->mIsReadyForPullUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullStart()Z
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:isReadyForPullDown();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->mIsReadyForPullDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
