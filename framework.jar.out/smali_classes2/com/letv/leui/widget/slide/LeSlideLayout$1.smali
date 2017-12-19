.class Lcom/letv/leui/widget/slide/LeSlideLayout$1;
.super Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;
.source "LeSlideLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/slide/LeSlideLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/slide/LeSlideLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get11(Lcom/letv/leui/widget/slide/LeSlideLayout;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->clamp(III)I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get11(Lcom/letv/leui/widget/slide/LeSlideLayout;)I

    move-result v0

    return v0
.end method

.method public onViewDragStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 312
    invoke-super {p0, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 313
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get9(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get9(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;->onStateChanged(I)V

    .line 315
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 311
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 317
    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get2(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 318
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get2(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-nez v0, :cond_4

    .line 320
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get9(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get9(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;->onOpened()V

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get0(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get3(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 325
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0, v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-set0(Lcom/letv/leui/widget/slide/LeSlideLayout;Landroid/view/View;)Landroid/view/View;

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-wrap1(Lcom/letv/leui/widget/slide/LeSlideLayout;)V

    goto :goto_0

    .line 330
    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get9(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get9(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;->onClosed()V

    goto :goto_0

    .line 334
    :pswitch_2
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-wrap0(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-set0(Lcom/letv/leui/widget/slide/LeSlideLayout;Landroid/view/View;)Landroid/view/View;

    .line 335
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get0(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 337
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-wrap2(Lcom/letv/leui/widget/slide/LeSlideLayout;)V

    .line 338
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get3(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get10(Lcom/letv/leui/widget/slide/LeSlideLayout;)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 339
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get2(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get12(Lcom/letv/leui/widget/slide/LeSlideLayout;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    goto/16 :goto_0

    .line 341
    :cond_5
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get4(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeViewDragHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->abort()V

    goto/16 :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 301
    invoke-super/range {p0 .. p5}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 302
    int-to-float v1, p2

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v2}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get11(Lcom/letv/leui/widget/slide/LeSlideLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v1

    .line 303
    .local v0, "percent":F
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get9(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get9(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;->onSlideChange(F)V

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get0(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get3(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v2}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get10(Lcom/letv/leui/widget/slide/LeSlideLayout;)F

    move-result v2

    neg-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 300
    :cond_1
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 7
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/4 v6, 0x0

    .line 275
    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 278
    .local v1, "left":I
    const/4 v3, 0x0

    .line 279
    .local v3, "settleLeft":I
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v4}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v5}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get1(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getDistanceThreshold()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 280
    .local v2, "leftThreshold":I
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v5}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get1(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getVelocityThreshold()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    const/4 v0, 0x1

    .line 282
    .local v0, "isVerticalSwiping":Z
    :goto_0
    cmpl-float v4, p2, v6

    if-lez v4, :cond_4

    .line 283
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v5}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get1(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getVelocityThreshold()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    if-eqz v0, :cond_3

    .line 285
    :cond_0
    if-le v1, v2, :cond_1

    .line 286
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v4}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get11(Lcom/letv/leui/widget/slide/LeSlideLayout;)I

    move-result v3

    .line 295
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v4}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get4(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeViewDragHelper;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->settleCapturedViewAt(II)Z

    .line 296
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v4}, Lcom/letv/leui/widget/slide/LeSlideLayout;->invalidate()V

    .line 274
    return-void

    .line 280
    .end local v0    # "isVerticalSwiping":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isVerticalSwiping":Z
    goto :goto_0

    .line 284
    :cond_3
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v4}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get11(Lcom/letv/leui/widget/slide/LeSlideLayout;)I

    move-result v3

    goto :goto_1

    .line 289
    :cond_4
    cmpl-float v4, p2, v6

    if-nez v4, :cond_1

    .line 290
    if-le v1, v2, :cond_1

    .line 291
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v4}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get11(Lcom/letv/leui/widget/slide/LeSlideLayout;)I

    move-result v3

    goto :goto_1
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 259
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get1(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->isEdgeOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get4(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeViewDragHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v2}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get5(Lcom/letv/leui/widget/slide/LeSlideLayout;)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->isEdgeTouched(II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get7(Lcom/letv/leui/widget/slide/LeSlideLayout;)Z

    move-result v0

    .line 260
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v2}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get2(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    :goto_1
    return v0

    .line 259
    :cond_0
    const/4 v0, 0x1

    .local v0, "edgeCase":Z
    goto :goto_0

    .line 260
    .end local v0    # "edgeCase":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
