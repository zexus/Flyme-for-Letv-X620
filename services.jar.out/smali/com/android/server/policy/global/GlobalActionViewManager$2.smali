.class Lcom/android/server/policy/global/GlobalActionViewManager$2;
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
    .line 261
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewManager$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->-wrap0(Lcom/android/server/policy/global/GlobalActionViewManager;)V

    .line 274
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->-wrap0(Lcom/android/server/policy/global/GlobalActionViewManager;)V

    .line 269
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 279
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 264
    return-void
.end method
