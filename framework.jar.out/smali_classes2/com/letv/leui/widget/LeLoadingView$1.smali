.class Lcom/letv/leui/widget/LeLoadingView$1;
.super Lcom/letv/leui/widget/LeLoadingView$EmptyAnimatorListener;
.source "LeLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeLoadingView;->appearAnim(IILjava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeLoadingView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeLoadingView;Lcom/letv/leui/widget/LeLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeLoadingView;
    .param p2, "this$0_1"    # Lcom/letv/leui/widget/LeLoadingView;

    .prologue
    .line 149
    iput-object p2, p0, Lcom/letv/leui/widget/LeLoadingView$1;->this$0:Lcom/letv/leui/widget/LeLoadingView;

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeLoadingView$EmptyAnimatorListener;-><init>(Lcom/letv/leui/widget/LeLoadingView;)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    move-object v1, p1

    .line 152
    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 153
    .local v1, "objectAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    .line 154
    .local v0, "holder":Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    if-eqz v0, :cond_0

    .line 155
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 151
    :cond_0
    return-void
.end method
