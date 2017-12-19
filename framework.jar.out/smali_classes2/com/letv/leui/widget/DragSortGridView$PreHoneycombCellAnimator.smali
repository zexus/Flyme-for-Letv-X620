.class Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;
.super Ljava/lang/Object;
.source "DragSortGridView.java"

# interfaces
.implements Lcom/letv/leui/widget/DragSortGridView$SwitchCellAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/DragSortGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreHoneycombCellAnimator"
.end annotation


# instance fields
.field private mDeltaX:I

.field private mDeltaY:I

.field final synthetic this$0:Lcom/letv/leui/widget/DragSortGridView;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/DragSortGridView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/DragSortGridView;
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 759
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    iput p2, p0, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;->mDeltaX:I

    .line 761
    iput p3, p0, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;->mDeltaY:I

    .line 759
    return-void
.end method


# virtual methods
.method public animateSwitchCell(II)V
    .locals 3
    .param p1, "originalPosition"    # I
    .param p2, "targetPosition"    # I

    .prologue
    .line 766
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->-get6(Lcom/letv/leui/widget/DragSortGridView;)I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;->mDeltaY:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->-set5(Lcom/letv/leui/widget/DragSortGridView;I)I

    .line 767
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->-get5(Lcom/letv/leui/widget/DragSortGridView;)I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;->mDeltaX:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->-set4(Lcom/letv/leui/widget/DragSortGridView;I)I

    .line 765
    return-void
.end method
