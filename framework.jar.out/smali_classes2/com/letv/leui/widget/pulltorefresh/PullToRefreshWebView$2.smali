.class Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "PullToRefreshWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 47
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->onRefreshComplete()V

    .line 46
    :cond_0
    return-void
.end method
