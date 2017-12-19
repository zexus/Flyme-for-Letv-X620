.class Lcom/letv/leui/widget/LeActionBarBottomSlider$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LeActionBarBottomSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeActionBarBottomSlider;->doExitAnimation()V
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
    .line 223
    iput-object p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 233
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->-get2(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Lcom/letv/leui/widget/LeTransLinearLayout;

    move-result-object v0

    new-instance v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;-><init>(Lcom/letv/leui/widget/LeActionBarBottomSlider$7;)V

    .line 242
    const-wide/16 v2, 0x14

    .line 233
    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/LeTransLinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 227
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->-get2(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Lcom/letv/leui/widget/LeTransLinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTransLinearLayout;->setIntercept(Z)V

    .line 225
    return-void
.end method
