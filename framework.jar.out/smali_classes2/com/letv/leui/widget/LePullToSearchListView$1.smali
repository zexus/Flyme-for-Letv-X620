.class Lcom/letv/leui/widget/LePullToSearchListView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LePullToSearchListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LePullToSearchListView;->doAnimation(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LePullToSearchListView;

.field final synthetic val$isShowHeader:Z


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LePullToSearchListView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LePullToSearchListView;
    .param p2, "val$isShowHeader"    # Z

    .prologue
    .line 216
    iput-object p1, p0, Lcom/letv/leui/widget/LePullToSearchListView$1;->this$0:Lcom/letv/leui/widget/LePullToSearchListView;

    iput-boolean p2, p0, Lcom/letv/leui/widget/LePullToSearchListView$1;->val$isShowHeader:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 220
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView$1;->this$0:Lcom/letv/leui/widget/LePullToSearchListView;

    invoke-static {v0}, Lcom/letv/leui/widget/LePullToSearchListView;->-get1(Lcom/letv/leui/widget/LePullToSearchListView;)Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePullToSearchListView$1;->val$isShowHeader:Z

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView$1;->this$0:Lcom/letv/leui/widget/LePullToSearchListView;

    invoke-static {v0}, Lcom/letv/leui/widget/LePullToSearchListView;->-get1(Lcom/letv/leui/widget/LePullToSearchListView;)Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;->showSearchBar()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView$1;->this$0:Lcom/letv/leui/widget/LePullToSearchListView;

    invoke-static {v0}, Lcom/letv/leui/widget/LePullToSearchListView;->-get1(Lcom/letv/leui/widget/LePullToSearchListView;)Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;->hideSearchBar()V

    goto :goto_0
.end method
