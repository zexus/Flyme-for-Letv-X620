.class Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$1;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onRefreshing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 0

    .prologue
    .line 709
    .local p1, "this$0":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$1;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothScrollFinished()V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$1;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-wrap0(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V

    .line 711
    return-void
.end method
