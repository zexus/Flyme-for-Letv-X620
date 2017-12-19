.class Lcom/letv/leui/widget/BaseSwipeHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/BaseSwipeHelper;->generateDismissAnimate(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/BaseSwipeHelper;

.field final synthetic val$swap:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/BaseSwipeHelper;ZLandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/BaseSwipeHelper;
    .param p2, "val$swap"    # Z
    .param p3, "val$view"    # Landroid/view/View;

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper$2;->this$0:Lcom/letv/leui/widget/BaseSwipeHelper;

    iput-boolean p2, p0, Lcom/letv/leui/widget/BaseSwipeHelper$2;->val$swap:Z

    iput-object p3, p0, Lcom/letv/leui/widget/BaseSwipeHelper$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper$2;->this$0:Lcom/letv/leui/widget/BaseSwipeHelper;

    iget-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper$2;->val$swap:Z

    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeDismissed(ZLandroid/view/View;)V

    .line 1055
    return-void
.end method
