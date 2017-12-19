.class Lcom/letv/leui/widget/LeItemView$DropdownPopup$5$1;
.super Ljava/lang/Object;
.source "LeItemView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeItemView$DropdownPopup$5;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/letv/leui/widget/LeItemView$DropdownPopup$5;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeItemView$DropdownPopup$5;)V
    .locals 0
    .param p1, "this$2"    # Lcom/letv/leui/widget/LeItemView$DropdownPopup$5;

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$5$1;->this$2:Lcom/letv/leui/widget/LeItemView$DropdownPopup$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1050
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$5$1;->this$2:Lcom/letv/leui/widget/LeItemView$DropdownPopup$5;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$5;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeItemView;->-get1(Lcom/letv/leui/widget/LeItemView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$5$1;->this$2:Lcom/letv/leui/widget/LeItemView$DropdownPopup$5;

    iget-object v1, v1, Lcom/letv/leui/widget/LeItemView$DropdownPopup$5;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1045
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1054
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1041
    return-void
.end method
