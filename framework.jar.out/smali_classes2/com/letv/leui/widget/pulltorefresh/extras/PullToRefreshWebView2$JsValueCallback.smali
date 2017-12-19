.class final Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2$JsValueCallback;
.super Ljava/lang/Object;
.source "PullToRefreshWebView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JsValueCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2$JsValueCallback;->this$0:Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isReadyForPullDownResponse(Z)V
    .locals 1
    .param p1, "response"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2$JsValueCallback;->this$0:Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->-get0(Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 141
    return-void
.end method

.method public isReadyForPullUpResponse(Z)V
    .locals 1
    .param p1, "response"    # Z

    .prologue
    .line 138
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2$JsValueCallback;->this$0:Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;->-get1(Lcom/letv/leui/widget/pulltorefresh/extras/PullToRefreshWebView2;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 137
    return-void
.end method
