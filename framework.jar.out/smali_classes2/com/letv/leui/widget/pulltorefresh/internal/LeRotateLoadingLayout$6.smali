.class Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;
.super Ljava/lang/Object;
.source "LeRotateLoadingLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->drawLeArrow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

.field final synthetic val$arrowHolder:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;
    .param p2, "val$arrowHolder"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iput-object p2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;->val$arrowHolder:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 493
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get1(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Lcom/letv/leui/widget/LeArrowShape;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get7(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 495
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get7(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get13(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get11(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get9(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 496
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get1(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Lcom/letv/leui/widget/LeArrowShape;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get7(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get10(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;->val$arrowHolder:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    invoke-virtual {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;->getAngle()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/LeArrowShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 497
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iget-object v0, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get6(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 498
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get7(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 492
    :cond_0
    return-void
.end method
