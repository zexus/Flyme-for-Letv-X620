.class Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LeRotateLoadingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->startDismiss()V
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
    .line 339
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$4;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 343
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$4;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->resetImageHeader()V

    .line 344
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$4;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iget-object v0, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$4;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iget-object v0, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;->refreshHeaderCompleteInternal()V

    .line 341
    :cond_0
    return-void
.end method
