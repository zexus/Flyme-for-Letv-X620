.class Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout$1;
.super Ljava/lang/Object;
.source "LeFooterRotateLoadingLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->refreshingImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout$1;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 30
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout$1;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    iget-boolean v0, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->cancelAnimator:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout$1;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    iget-object v0, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout$1;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    iget-object v0, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;->refreshFooterCompleteInternal()V

    .line 35
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 25
    return-void
.end method
