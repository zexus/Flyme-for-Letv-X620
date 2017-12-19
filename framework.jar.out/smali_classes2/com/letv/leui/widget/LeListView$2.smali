.class Lcom/letv/leui/widget/LeListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LeListView.java"


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

.field final synthetic val$dismissPosition:I

.field final synthetic val$dismissView:Landroid/view/View;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListView;Landroid/view/View;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeListView;
    .param p2, "val$dismissView"    # Landroid/view/View;
    .param p3, "val$dismissPosition"    # I
    .param p4, "val$originalHeight"    # I

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    iput-object p2, p0, Lcom/letv/leui/widget/LeListView$2;->val$dismissView:Landroid/view/View;

    iput p3, p0, Lcom/letv/leui/widget/LeListView$2;->val$dismissPosition:I

    iput p4, p0, Lcom/letv/leui/widget/LeListView$2;->val$originalHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 1031
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->-get2(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/SwipeListViewHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->-get2(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/SwipeListViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListView$2;->val$dismissView:Landroid/view/View;

    iget v2, p0, Lcom/letv/leui/widget/LeListView$2;->val$dismissPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/SwipeListViewHelper;->onDismissAnimationEnd(Landroid/view/View;I)V

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    invoke-static {v0, v3}, Lcom/letv/leui/widget/LeListView;->-set1(Lcom/letv/leui/widget/LeListView;Z)Z

    .line 1036
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->-get0(Lcom/letv/leui/widget/LeListView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/LeListView;->-set0(Lcom/letv/leui/widget/LeListView;I)I

    .line 1037
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->-get0(Lcom/letv/leui/widget/LeListView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    iget v1, p0, Lcom/letv/leui/widget/LeListView$2;->val$originalHeight:I

    invoke-static {v0, v1}, Lcom/letv/leui/widget/LeListView;->-wrap0(Lcom/letv/leui/widget/LeListView;I)V

    .line 1030
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->-get2(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/SwipeListViewHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->-get2(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/SwipeListViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListView$2;->val$dismissView:Landroid/view/View;

    iget v2, p0, Lcom/letv/leui/widget/LeListView$2;->val$dismissPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/SwipeListViewHelper;->onDismissAnimationStart(Landroid/view/View;I)V

    .line 1024
    :cond_0
    return-void
.end method
