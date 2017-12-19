.class Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$3;
.super Ljava/lang/Object;
.source "LeListPreferenceView.java"

# interfaces
.implements Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;-><init>(Lcom/letv/leui/widget/LeListPreferenceView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 687
    iget-object v2, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->isAbove()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->-set0(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;Z)Z

    .line 688
    iget-object v2, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    invoke-static {v2}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->-get1(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 689
    iget-object v2, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    invoke-static {v2}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->-get1(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 692
    .local v1, "arrowView":Landroid/view/View;
    iget-object v2, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v3, v2, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v3, Lcom/letv/leui/widget/LeListPreferenceView;->animateDrawable:Landroid/graphics/drawable/Drawable;

    .line 695
    iget-object v2, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    invoke-static {v2}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->-get0(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 696
    const-string/jumbo v2, "rotation"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 700
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    :goto_0
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 701
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 703
    iget-object v2, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v2}, Lcom/letv/leui/widget/LeListPreferenceView;->-get0(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 704
    iget-object v2, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v2}, Lcom/letv/leui/widget/LeListPreferenceView;->-get0(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 707
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "arrowView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 708
    iget-object v2, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v3}, Lcom/letv/leui/widget/LeListPreferenceView;->-get0(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 686
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void

    .line 698
    .restart local v1    # "arrowView":Landroid/view/View;
    :cond_2
    const-string/jumbo v2, "rotation"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_0

    .line 696
    :array_0
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data

    .line 698
    :array_1
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
    .end array-data
.end method
