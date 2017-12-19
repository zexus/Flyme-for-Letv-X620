.class Lcom/letv/leui/widget/DragSortGridView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragSortGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/DragSortGridView;->animateBounds(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/DragSortGridView;

.field final synthetic val$mobileView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/DragSortGridView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/DragSortGridView;
    .param p2, "val$mobileView"    # Landroid/view/View;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView$5;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iput-object p2, p0, Lcom/letv/leui/widget/DragSortGridView$5;->val$mobileView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$5;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->-set0(Lcom/letv/leui/widget/DragSortGridView;Z)Z

    .line 611
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$5;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->-wrap5(Lcom/letv/leui/widget/DragSortGridView;)V

    .line 612
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$5;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView$5;->val$mobileView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->-wrap3(Lcom/letv/leui/widget/DragSortGridView;Landroid/view/View;)V

    .line 609
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$5;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->-set0(Lcom/letv/leui/widget/DragSortGridView;Z)Z

    .line 605
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$5;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->-wrap5(Lcom/letv/leui/widget/DragSortGridView;)V

    .line 603
    return-void
.end method
