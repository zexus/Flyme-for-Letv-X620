.class Lcom/letv/leui/widget/LeListPreferenceView$5;
.super Ljava/lang/Object;
.source "LeListPreferenceView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeListPreferenceView;->onDismissAnimate(Landroid/view/View;Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeListPreferenceView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListPreferenceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeListPreferenceView;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView$5;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 585
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$5;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/letv/leui/widget/LeListPreferenceView;->isAnimate:Z

    .line 580
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 590
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$5;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/widget/LeListPreferenceView;->isAnimate:Z

    .line 575
    return-void
.end method
