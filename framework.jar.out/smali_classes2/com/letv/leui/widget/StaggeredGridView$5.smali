.class Lcom/letv/leui/widget/StaggeredGridView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/StaggeredGridView;->getFadeOutAnimationsForStaleViews()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/StaggeredGridView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p2, "val$view"    # Landroid/view/View;

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$5;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iput-object p2, p0, Lcom/letv/leui/widget/StaggeredGridView$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1493
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1494
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$5;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/StaggeredGridView;->-get8(Lcom/letv/leui/widget/StaggeredGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$5;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->removeViewInLayout(Landroid/view/View;)V

    .line 1500
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1501
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1502
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1503
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$5;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/StaggeredGridView;->-get16(Lcom/letv/leui/widget/StaggeredGridView;)Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1492
    return-void

    .line 1497
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$5;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
