.class Lcom/android/server/policy/global/GlobalActionHandlerView$3;
.super Ljava/lang/Object;
.source "GlobalActionHandlerView.java"

# interfaces
.implements Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionHandlerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionHandlerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionHandlerView;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getEndTranslationY()I
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get0(Lcom/android/server/policy/global/GlobalActionHandlerView;)Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;->getHostHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getRegionHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getInitTranslationY()I
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get1(Lcom/android/server/policy/global/GlobalActionHandlerView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getRegionHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTranslationX()F
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    return v0
.end method

.method public getTranslationY()F
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 494
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->setAlpha(F)V

    .line 489
    return-void
.end method

.method public setTranslationX(F)V
    .locals 2
    .param p1, "translationX"    # F

    .prologue
    .line 483
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 484
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    float-to-int v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 485
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    return-void
.end method

.method public setTranslationY(F)V
    .locals 6
    .param p1, "translationY"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 459
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v3}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 460
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v3}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v4}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get1(Lcom/android/server/policy/global/GlobalActionHandlerView;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 461
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v3}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get0(Lcom/android/server/policy/global/GlobalActionHandlerView;)Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;->setAlaphaWhenDrag(F)V

    .line 469
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v3}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get1(Lcom/android/server/policy/global/GlobalActionHandlerView;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    .line 470
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v3}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get0(Lcom/android/server/policy/global/GlobalActionHandlerView;)Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;->setBlackGrident(F)V

    .line 477
    :goto_1
    float-to-int v3, p1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 478
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/global/GlobalActionHandlerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    return-void

    .line 463
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v3}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get0(Lcom/android/server/policy/global/GlobalActionHandlerView;)Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;->getThreshold()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v4}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get1(Lcom/android/server/policy/global/GlobalActionHandlerView;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v1, v3

    .line 464
    .local v1, "maxDistance":F
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v3}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v4}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get1(Lcom/android/server/policy/global/GlobalActionHandlerView;)I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 465
    .local v0, "currentDistance":F
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v3}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get0(Lcom/android/server/policy/global/GlobalActionHandlerView;)Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;

    move-result-object v3

    div-float v4, v0, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v4, v5, v4

    invoke-interface {v3, v4}, Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;->setAlaphaWhenDrag(F)V

    goto :goto_0

    .line 472
    .end local v0    # "currentDistance":F
    .end local v1    # "maxDistance":F
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v3}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get0(Lcom/android/server/policy/global/GlobalActionHandlerView;)Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;->getHostHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v4}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get1(Lcom/android/server/policy/global/GlobalActionHandlerView;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v1, v3

    .line 473
    .restart local v1    # "maxDistance":F
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v3}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v4}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get1(Lcom/android/server/policy/global/GlobalActionHandlerView;)I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 474
    .restart local v0    # "currentDistance":F
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;->this$0:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-static {v3}, Lcom/android/server/policy/global/GlobalActionHandlerView;->-get0(Lcom/android/server/policy/global/GlobalActionHandlerView;)Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;

    move-result-object v3

    div-float v4, v0, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v4, v5, v4

    invoke-interface {v3, v4}, Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;->setBlackGrident(F)V

    goto :goto_1
.end method
