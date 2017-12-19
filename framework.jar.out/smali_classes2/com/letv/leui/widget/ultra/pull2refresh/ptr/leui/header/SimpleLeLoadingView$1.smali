.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView$1;
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
    .line 261
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    move-object v1, p1

    .line 264
    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 265
    .local v1, "objectAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    .line 266
    .local v0, "holder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    if-eqz v0, :cond_0

    .line 267
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 263
    :cond_0
    return-void
.end method
