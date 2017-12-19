.class Lcom/android/server/policy/global/GlobalActionViewManager$1;
.super Ljava/lang/Object;
.source "GlobalActionViewManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionViewManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionViewManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionViewManager;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewManager$1;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$1;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->showLocked()V

    .line 133
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$1;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->showLocked()V

    .line 128
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 138
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 124
    return-void
.end method
