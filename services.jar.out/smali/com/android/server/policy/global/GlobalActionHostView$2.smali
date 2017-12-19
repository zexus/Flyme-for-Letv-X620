.class Lcom/android/server/policy/global/GlobalActionHostView$2;
.super Ljava/lang/Object;
.source "GlobalActionHostView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/global/GlobalActionHostView;->onSwapToBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionHostView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionHostView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionHostView;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHostView$2;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView$2;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v0, v0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-interface {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->shutdown()V

    .line 567
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView$2;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHostView;->removeAllViews()V

    .line 565
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView$2;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v0, v0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-interface {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->shutdown()V

    .line 561
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView$2;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHostView;->removeAllViews()V

    .line 559
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 555
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 551
    return-void
.end method
