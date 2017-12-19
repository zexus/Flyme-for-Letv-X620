.class Lcom/letv/leui/widget/LockPatternRing$EmptyAnimatorListener;
.super Ljava/lang/Object;
.source "LockPatternRing.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LockPatternRing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmptyAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LockPatternRing;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LockPatternRing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LockPatternRing;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternRing$EmptyAnimatorListener;->this$0:Lcom/letv/leui/widget/LockPatternRing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 289
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 284
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 294
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 279
    return-void
.end method
