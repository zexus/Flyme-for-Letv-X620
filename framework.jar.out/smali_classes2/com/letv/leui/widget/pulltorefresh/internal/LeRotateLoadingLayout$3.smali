.class Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;
.super Ljava/lang/Object;
.source "LeRotateLoadingLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->startDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const v4, 0xffffff

    const/high16 v7, 0x42480000    # 50.0f

    .line 322
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 323
    .local v2, "value":Ljava/lang/Float;
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get6(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 324
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get7(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Canvas;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 325
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    const v4, 0x3f99999a    # 1.2f

    div-float v1, v3, v4

    .line 326
    .local v1, "radius":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 327
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get3(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    move-result-object v3

    sget-object v4, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->WHITE:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    if-ne v3, v4, :cond_0

    .line 328
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get10(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Paint;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    :goto_1
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get7(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Canvas;

    move-result-object v4

    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get12(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v3, v5

    add-float v5, v7, v3

    .line 333
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get12(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v3, v6

    sub-float v3, v7, v3

    .line 334
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v6}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get10(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Paint;

    move-result-object v6

    .line 332
    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get10(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Paint;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v4}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get2(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 336
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iget-object v3, v3, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v4}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get6(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 321
    return-void
.end method
