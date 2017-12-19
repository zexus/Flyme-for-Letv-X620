.class Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;
.super Ljava/lang/Object;
.source "DragSortGridView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimateSwitchViewOnPreDrawListener"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private final mOriginalPosition:I

.field private final mTargetPosition:I

.field final synthetic this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->-assertionsDisabled:Z

    .line 840
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;
    .param p2, "originalPosition"    # I
    .param p3, "targetPosition"    # I

    .prologue
    .line 844
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    iput p2, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mOriginalPosition:I

    .line 846
    iput p3, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mTargetPosition:I

    .line 844
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 851
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v2, v2, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/DragSortGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 853
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v2, v2, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v2}, Lcom/letv/leui/widget/DragSortGridView;->-get6(Lcom/letv/leui/widget/DragSortGridView;)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    invoke-static {v4}, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->-get1(Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/letv/leui/widget/DragSortGridView;->-set5(Lcom/letv/leui/widget/DragSortGridView;I)I

    .line 854
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v2, v2, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v2}, Lcom/letv/leui/widget/DragSortGridView;->-get5(Lcom/letv/leui/widget/DragSortGridView;)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    invoke-static {v4}, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->-get0(Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/letv/leui/widget/DragSortGridView;->-set4(Lcom/letv/leui/widget/DragSortGridView;I)I

    .line 856
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v2, v2, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget v3, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mOriginalPosition:I

    iget v4, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mTargetPosition:I

    invoke-static {v2, v3, v4}, Lcom/letv/leui/widget/DragSortGridView;->-wrap0(Lcom/letv/leui/widget/DragSortGridView;II)V

    .line 858
    sget-boolean v2, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v2, v2, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v2}, Lcom/letv/leui/widget/DragSortGridView;->-get4(Lcom/letv/leui/widget/DragSortGridView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v2, v0

    goto :goto_0

    .line 859
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v2, v2, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v2}, Lcom/letv/leui/widget/DragSortGridView;->-get4(Lcom/letv/leui/widget/DragSortGridView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 860
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v2, v2, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v3, v3, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v4, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v4, v4, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v4}, Lcom/letv/leui/widget/DragSortGridView;->-get3(Lcom/letv/leui/widget/DragSortGridView;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/letv/leui/widget/DragSortGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/letv/leui/widget/DragSortGridView;->-set1(Lcom/letv/leui/widget/DragSortGridView;Landroid/view/View;)Landroid/view/View;

    .line 861
    sget-boolean v2, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v2, v2, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v2}, Lcom/letv/leui/widget/DragSortGridView;->-get4(Lcom/letv/leui/widget/DragSortGridView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 862
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->-get4(Lcom/letv/leui/widget/DragSortGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 863
    return v1
.end method
