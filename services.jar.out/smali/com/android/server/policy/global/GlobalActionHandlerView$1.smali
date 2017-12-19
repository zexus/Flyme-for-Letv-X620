.class Lcom/android/server/policy/global/GlobalActionHandlerView$1;
.super Ljava/lang/Object;
.source "GlobalActionHandlerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionHandlerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionHandlerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionHandlerView;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-wrap0(Lcom/android/server/policy/global/GlobalActionHandlerView;I)V

    .line 273
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get3(Lcom/android/server/policy/global/GlobalActionHandlerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->setTriAlpha(I)V

    .line 271
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get4(Lcom/android/server/policy/global/GlobalActionHandlerView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    iget-boolean v0, v0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mCancel:Z

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get4(Lcom/android/server/policy/global/GlobalActionHandlerView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 266
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get4(Lcom/android/server/policy/global/GlobalActionHandlerView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 258
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 253
    return-void
.end method
