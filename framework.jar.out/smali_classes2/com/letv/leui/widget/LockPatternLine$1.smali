.class Lcom/letv/leui/widget/LockPatternLine$1;
.super Ljava/lang/Object;
.source "LockPatternLine.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LockPatternLine;->getMoveAnim(Ljava/util/List;Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LockPatternLine;

.field final synthetic val$listener:Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LockPatternLine;Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LockPatternLine;
    .param p2, "val$listener"    # Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternLine$1;->this$0:Lcom/letv/leui/widget/LockPatternLine;

    iput-object p2, p0, Lcom/letv/leui/widget/LockPatternLine$1;->val$listener:Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 211
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 207
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternLine$1;->this$0:Lcom/letv/leui/widget/LockPatternLine;

    invoke-static {v1}, Lcom/letv/leui/widget/LockPatternLine;->-get2(Lcom/letv/leui/widget/LockPatternLine;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/letv/leui/widget/LockPatternLine;->-set1(Lcom/letv/leui/widget/LockPatternLine;I)I

    .line 217
    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternLine$1;->val$listener:Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternLine$1;->val$listener:Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;

    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternLine$1;->this$0:Lcom/letv/leui/widget/LockPatternLine;

    invoke-static {v2}, Lcom/letv/leui/widget/LockPatternLine;->-get0(Lcom/letv/leui/widget/LockPatternLine;)Lcom/letv/leui/widget/LockMovePoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/letv/leui/widget/LockMovePoint;->getMoveX()F

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/widget/LockPatternLine$1;->this$0:Lcom/letv/leui/widget/LockPatternLine;

    invoke-static {v3}, Lcom/letv/leui/widget/LockPatternLine;->-get0(Lcom/letv/leui/widget/LockPatternLine;)Lcom/letv/leui/widget/LockMovePoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/LockMovePoint;->getMoveY()F

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine$1;->this$0:Lcom/letv/leui/widget/LockPatternLine;

    invoke-static {v4}, Lcom/letv/leui/widget/LockPatternLine;->-get2(Lcom/letv/leui/widget/LockPatternLine;)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;->onErrorLineAnim(FFI)V

    .line 221
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternLine$1;->this$0:Lcom/letv/leui/widget/LockPatternLine;

    invoke-static {v1}, Lcom/letv/leui/widget/LockPatternLine;->-get1(Lcom/letv/leui/widget/LockPatternLine;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternLine$1;->this$0:Lcom/letv/leui/widget/LockPatternLine;

    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternLine$1;->this$0:Lcom/letv/leui/widget/LockPatternLine;

    invoke-static {v1}, Lcom/letv/leui/widget/LockPatternLine;->-get1(Lcom/letv/leui/widget/LockPatternLine;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/letv/leui/widget/LockPatternLine$1;->this$0:Lcom/letv/leui/widget/LockPatternLine;

    invoke-static {v3}, Lcom/letv/leui/widget/LockPatternLine;->-get2(Lcom/letv/leui/widget/LockPatternLine;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LockMovePoint;

    invoke-static {v2, v1}, Lcom/letv/leui/widget/LockPatternLine;->-set0(Lcom/letv/leui/widget/LockPatternLine;Lcom/letv/leui/widget/LockMovePoint;)Lcom/letv/leui/widget/LockMovePoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternLine$1;->this$0:Lcom/letv/leui/widget/LockPatternLine;

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine$1;->this$0:Lcom/letv/leui/widget/LockPatternLine;

    invoke-static {v0}, Lcom/letv/leui/widget/LockPatternLine;->-get1(Lcom/letv/leui/widget/LockPatternLine;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternLine$1;->this$0:Lcom/letv/leui/widget/LockPatternLine;

    invoke-static {v2}, Lcom/letv/leui/widget/LockPatternLine;->-get2(Lcom/letv/leui/widget/LockPatternLine;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LockMovePoint;

    invoke-static {v1, v0}, Lcom/letv/leui/widget/LockPatternLine;->-set0(Lcom/letv/leui/widget/LockPatternLine;Lcom/letv/leui/widget/LockMovePoint;)Lcom/letv/leui/widget/LockMovePoint;

    .line 202
    return-void
.end method
