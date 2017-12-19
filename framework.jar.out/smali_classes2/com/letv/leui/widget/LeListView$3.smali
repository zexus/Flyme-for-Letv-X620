.class Lcom/letv/leui/widget/LeListView$3;
.super Ljava/lang/Object;
.source "LeListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeListView;->performDismiss(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeListView;

.field final synthetic val$dismissView:Landroid/view/View;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListView;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeListView;
    .param p2, "val$lp"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "val$dismissView"    # Landroid/view/View;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/letv/leui/widget/LeListView$3;->this$0:Lcom/letv/leui/widget/LeListView;

    iput-object p2, p0, Lcom/letv/leui/widget/LeListView$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lcom/letv/leui/widget/LeListView$3;->val$dismissView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/letv/leui/widget/LeListView$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1048
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$3;->val$dismissView:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/widget/LeListView$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1046
    return-void
.end method
