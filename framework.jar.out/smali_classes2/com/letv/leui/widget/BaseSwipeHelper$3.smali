.class Lcom/letv/leui/widget/BaseSwipeHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/BaseSwipeHelper;->generateRevealAnimate(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/BaseSwipeHelper;

.field final synthetic val$swap:Z

.field final synthetic val$swapRight:Z


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/BaseSwipeHelper;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/BaseSwipeHelper;
    .param p2, "val$swap"    # Z
    .param p3, "val$swapRight"    # Z

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper$3;->this$0:Lcom/letv/leui/widget/BaseSwipeHelper;

    iput-boolean p2, p0, Lcom/letv/leui/widget/BaseSwipeHelper$3;->val$swap:Z

    iput-boolean p3, p0, Lcom/letv/leui/widget/BaseSwipeHelper$3;->val$swapRight:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper$3;->this$0:Lcom/letv/leui/widget/BaseSwipeHelper;

    iget-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper$3;->val$swap:Z

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper$3;->val$swapRight:Z

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeRevealed(ZZ)V

    .line 1095
    return-void
.end method
