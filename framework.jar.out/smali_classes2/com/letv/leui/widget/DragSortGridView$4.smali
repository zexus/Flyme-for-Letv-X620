.class Lcom/letv/leui/widget/DragSortGridView$4;
.super Ljava/lang/Object;
.source "DragSortGridView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/DragSortGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/DragSortGridView;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView$4;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 598
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$4;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortGridView;->invalidate()V

    .line 597
    return-void
.end method
