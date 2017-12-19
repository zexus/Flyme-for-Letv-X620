.class Lcom/letv/leui/widget/LeItemView$2;
.super Ljava/lang/Object;
.source "LeItemView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeItemView;->onDismissAnimate(Landroid/view/View;Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeItemView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/letv/leui/widget/LeItemView$2;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 728
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$2;->this$0:Lcom/letv/leui/widget/LeItemView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/letv/leui/widget/LeItemView;->isAnimate:Z

    .line 723
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 733
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$2;->this$0:Lcom/letv/leui/widget/LeItemView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/widget/LeItemView;->isAnimate:Z

    .line 718
    return-void
.end method
