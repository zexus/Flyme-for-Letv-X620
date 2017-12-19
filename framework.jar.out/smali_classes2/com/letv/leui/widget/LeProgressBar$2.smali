.class Lcom/letv/leui/widget/LeProgressBar$2;
.super Ljava/lang/Object;
.source "LeProgressBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeProgressBar;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeProgressBar;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeProgressBar;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/letv/leui/widget/LeProgressBar$2;->this$0:Lcom/letv/leui/widget/LeProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 182
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar$2;->this$0:Lcom/letv/leui/widget/LeProgressBar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/letv/leui/widget/LeProgressBar;->isAnimated:Z

    .line 177
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 187
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar$2;->this$0:Lcom/letv/leui/widget/LeProgressBar;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/widget/LeProgressBar;->isAnimated:Z

    .line 172
    return-void
.end method
