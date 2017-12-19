.class Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LeRotateLoadingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$1;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 282
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$1;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-set0(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;Z)Z

    .line 283
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$1;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iput-boolean v2, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->cancelAnimator:Z

    .line 284
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$1;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get5(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$1;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v0, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-set1(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;Z)Z

    .line 288
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$1;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-wrap0(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V

    .line 280
    :cond_0
    return-void
.end method
