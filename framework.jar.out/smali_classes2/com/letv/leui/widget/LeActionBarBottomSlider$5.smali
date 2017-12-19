.class Lcom/letv/leui/widget/LeActionBarBottomSlider$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LeActionBarBottomSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeActionBarBottomSlider;->doEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeActionBarBottomSlider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeActionBarBottomSlider;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$5;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 201
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$5;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->-set1(Lcom/letv/leui/widget/LeActionBarBottomSlider;Z)Z

    .line 202
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$5;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->-get2(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Lcom/letv/leui/widget/LeTransLinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTransLinearLayout;->setIntercept(Z)V

    .line 199
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 194
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$5;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->-get2(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Lcom/letv/leui/widget/LeTransLinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTransLinearLayout;->setVisibility(I)V

    .line 192
    return-void
.end method
