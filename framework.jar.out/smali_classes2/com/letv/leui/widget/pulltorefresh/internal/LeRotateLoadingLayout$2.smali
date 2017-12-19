.class Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;
.super Ljava/lang/Object;
.source "LeRotateLoadingLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->initAnimator()V
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
    .line 298
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iget-boolean v0, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->cancelAnimator:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get4(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;->getAngle()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get4(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;->setAngle(F)V

    .line 303
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get4(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;->getAngle()F

    move-result v1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-set2(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;F)F

    .line 304
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get0(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get8(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get4(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;->getAngle()F

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get11(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get9(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 308
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iget-object v0, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->-get8(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 300
    return-void
.end method
