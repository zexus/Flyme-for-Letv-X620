.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SimpleLeLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->preDisappearAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView$2;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 285
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView$2;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->resetOriginals()V

    .line 282
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 278
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView$2;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;

    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->-get0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->pause()V

    .line 276
    return-void
.end method
