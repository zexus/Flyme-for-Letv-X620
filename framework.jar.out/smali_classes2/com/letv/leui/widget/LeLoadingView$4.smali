.class Lcom/letv/leui/widget/LeLoadingView$4;
.super Lcom/letv/leui/widget/LeLoadingView$EmptyAnimatorListener;
.source "LeLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeLoadingView;->disappearAnim(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeLoadingView;

.field final synthetic val$disappearedCallBack:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeLoadingView;Lcom/letv/leui/widget/LeLoadingView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeLoadingView;
    .param p2, "this$0_1"    # Lcom/letv/leui/widget/LeLoadingView;
    .param p3, "val$disappearedCallBack"    # Ljava/lang/Runnable;

    .prologue
    .line 212
    iput-object p2, p0, Lcom/letv/leui/widget/LeLoadingView$4;->this$0:Lcom/letv/leui/widget/LeLoadingView;

    iput-object p3, p0, Lcom/letv/leui/widget/LeLoadingView$4;->val$disappearedCallBack:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeLoadingView$EmptyAnimatorListener;-><init>(Lcom/letv/leui/widget/LeLoadingView;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-super {p0, p1}, Lcom/letv/leui/widget/LeLoadingView$EmptyAnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 223
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingView$4;->this$0:Lcom/letv/leui/widget/LeLoadingView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeLoadingView;->-get2(Lcom/letv/leui/widget/LeLoadingView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 224
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingView$4;->this$0:Lcom/letv/leui/widget/LeLoadingView;

    invoke-static {v0, v1}, Lcom/letv/leui/widget/LeLoadingView;->-set0(Lcom/letv/leui/widget/LeLoadingView;Z)Z

    .line 225
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingView$4;->this$0:Lcom/letv/leui/widget/LeLoadingView;

    invoke-static {v0, v1}, Lcom/letv/leui/widget/LeLoadingView;->-set3(Lcom/letv/leui/widget/LeLoadingView;Z)Z

    .line 226
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingView$4;->this$0:Lcom/letv/leui/widget/LeLoadingView;

    invoke-static {v0, v1}, Lcom/letv/leui/widget/LeLoadingView;->-set2(Lcom/letv/leui/widget/LeLoadingView;Z)Z

    .line 227
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingView$4;->this$0:Lcom/letv/leui/widget/LeLoadingView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeLoadingView;->-get0(Lcom/letv/leui/widget/LeLoadingView;)Lcom/letv/leui/widget/LeLoadingView$LeLoadingAnimListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingView$4;->this$0:Lcom/letv/leui/widget/LeLoadingView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeLoadingView;->-get0(Lcom/letv/leui/widget/LeLoadingView;)Lcom/letv/leui/widget/LeLoadingView$LeLoadingAnimListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/letv/leui/widget/LeLoadingView$LeLoadingAnimListener;->onLoadFinished()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingView$4;->val$disappearedCallBack:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingView$4;->val$disappearedCallBack:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 221
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/letv/leui/widget/LeLoadingView$EmptyAnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 217
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingView$4;->this$0:Lcom/letv/leui/widget/LeLoadingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/LeLoadingView;->-set3(Lcom/letv/leui/widget/LeLoadingView;Z)Z

    .line 215
    return-void
.end method
