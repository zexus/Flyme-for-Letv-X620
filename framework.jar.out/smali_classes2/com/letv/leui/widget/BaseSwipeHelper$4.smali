.class Lcom/letv/leui/widget/BaseSwipeHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/BaseSwipeHelper;->generateSwitchAnimate(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/BaseSwipeHelper;

.field final synthetic val$isSwitched:Z


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/BaseSwipeHelper;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/BaseSwipeHelper;
    .param p2, "val$isSwitched"    # Z

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper$4;->this$0:Lcom/letv/leui/widget/BaseSwipeHelper;

    iput-boolean p2, p0, Lcom/letv/leui/widget/BaseSwipeHelper$4;->val$isSwitched:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper$4;->this$0:Lcom/letv/leui/widget/BaseSwipeHelper;

    iget-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper$4;->val$isSwitched:Z

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitched(Z)V

    .line 1124
    return-void
.end method
