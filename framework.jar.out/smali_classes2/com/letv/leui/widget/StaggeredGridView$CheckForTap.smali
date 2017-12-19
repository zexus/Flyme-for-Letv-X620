.class final Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    .line 3406
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3408
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v4}, Lcom/letv/leui/widget/StaggeredGridView;->-get19(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 3409
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/letv/leui/widget/StaggeredGridView;->-set10(Lcom/letv/leui/widget/StaggeredGridView;I)I

    .line 3410
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v5}, Lcom/letv/leui/widget/StaggeredGridView;->-get14(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v5

    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v6}, Lcom/letv/leui/widget/StaggeredGridView;->-get7(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3411
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3407
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 3413
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v4}, Lcom/letv/leui/widget/StaggeredGridView;->-get3(Lcom/letv/leui/widget/StaggeredGridView;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3414
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 3415
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3416
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v4, v8}, Lcom/letv/leui/widget/StaggeredGridView;->setPressed(Z)V

    .line 3417
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/StaggeredGridView;->layoutChildren(Z)V

    .line 3418
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v5}, Lcom/letv/leui/widget/StaggeredGridView;->-get14(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lcom/letv/leui/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 3419
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/StaggeredGridView;->refreshDrawableState()V

    .line 3421
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 3422
    .local v3, "longPressTimeout":I
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/StaggeredGridView;->isLongClickable()Z

    move-result v2

    .line 3424
    .local v2, "longClickable":Z
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v4, v4, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 3425
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v4, v4, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3426
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_2

    .line 3427
    if-eqz v2, :cond_4

    .line 3428
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3435
    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    .line 3436
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v4}, Lcom/letv/leui/widget/StaggeredGridView;->-get15(Lcom/letv/leui/widget/StaggeredGridView;)Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_3

    .line 3437
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    new-instance v5, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-direct {v5, v6, v7}, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;-><init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;)V

    invoke-static {v4, v5}, Lcom/letv/leui/widget/StaggeredGridView;->-set5(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;)Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    .line 3439
    :cond_3
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v4}, Lcom/letv/leui/widget/StaggeredGridView;->-get15(Lcom/letv/leui/widget/StaggeredGridView;)Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 3440
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v5}, Lcom/letv/leui/widget/StaggeredGridView;->-get15(Lcom/letv/leui/widget/StaggeredGridView;)Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/letv/leui/widget/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3430
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    .line 3442
    :cond_5
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v4, v9}, Lcom/letv/leui/widget/StaggeredGridView;->-set10(Lcom/letv/leui/widget/StaggeredGridView;I)I

    goto/16 :goto_0

    .line 3445
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_6
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v4, v9}, Lcom/letv/leui/widget/StaggeredGridView;->-set10(Lcom/letv/leui/widget/StaggeredGridView;I)I

    goto/16 :goto_0
.end method
