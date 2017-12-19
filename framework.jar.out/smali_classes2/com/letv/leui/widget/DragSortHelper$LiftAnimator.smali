.class Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;
.super Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;
.source "DragSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/DragSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiftAnimator"
.end annotation


# instance fields
.field private mFinalDragDeltaY:F

.field private mInitDragDeltaY:F

.field final synthetic this$0:Lcom/letv/leui/widget/DragSortHelper;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/DragSortHelper;FI)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/DragSortHelper;
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    .line 885
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    .line 886
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;-><init>(Lcom/letv/leui/widget/DragSortHelper;FI)V

    .line 885
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->-get1(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;->mInitDragDeltaY:F

    .line 892
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->-get8(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;->mFinalDragDeltaY:F

    .line 890
    return-void
.end method

.method public onUpdate(FF)V
    .locals 4
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 897
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->-get3(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 898
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;->cancel()V

    .line 896
    :goto_0
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;->mFinalDragDeltaY:F

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;->mInitDragDeltaY:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortHelper;->-set1(Lcom/letv/leui/widget/DragSortHelper;I)I

    .line 901
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->-get5(Lcom/letv/leui/widget/DragSortHelper;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v1}, Lcom/letv/leui/widget/DragSortHelper;->-get16(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v2}, Lcom/letv/leui/widget/DragSortHelper;->-get1(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 902
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortHelper;->-wrap0(Lcom/letv/leui/widget/DragSortHelper;Z)V

    goto :goto_0
.end method
