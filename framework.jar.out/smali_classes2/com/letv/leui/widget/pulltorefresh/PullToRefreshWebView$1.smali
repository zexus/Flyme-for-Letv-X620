.class final Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$1;
.super Ljava/lang/Object;
.source "PullToRefreshWebView.java"

# interfaces
.implements Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase",
            "<",
            "Landroid/webkit/WebView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "refreshView":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<Landroid/webkit/WebView;>;"
    invoke-virtual {p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 37
    return-void
.end method
