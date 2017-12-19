.class public Lcom/letv/leui/widget/LeOverflowTab;
.super Landroid/widget/RelativeLayout;
.source "LeOverflowTab.java"


# instance fields
.field private mFloatView:Landroid/view/View;

.field private mNormalView:Landroid/view/View;

.field mScaleAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method private startScaleAnimation()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeOverflowTab;->cancelScaleAnimation()V

    .line 67
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeOverflowTab;->createScaleAnimation()V

    .line 68
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverflowTab;->mScaleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 65
    return-void
.end method


# virtual methods
.method public cancelScaleAnimation()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverflowTab;->mScaleAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverflowTab;->mScaleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 82
    :cond_0
    return-void
.end method

.method public createScaleAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v5, 0x2

    .line 72
    iget-object v2, p0, Lcom/letv/leui/widget/LeOverflowTab;->mFloatView:Landroid/view/View;

    const-string/jumbo v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 73
    .local v0, "scaleX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 75
    iget-object v2, p0, Lcom/letv/leui/widget/LeOverflowTab;->mFloatView:Landroid/view/View;

    const-string/jumbo v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 76
    .local v1, "scaleY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 78
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/LeOverflowTab;->mScaleAnimatorSet:Landroid/animation/AnimatorSet;

    .line 79
    iget-object v2, p0, Lcom/letv/leui/widget/LeOverflowTab;->mScaleAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 71
    return-void

    .line 72
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 75
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeOverflowTab;->setClickable(Z)V

    .line 30
    return-void
.end method

.method public setFloatMode(Z)V
    .locals 3
    .param p1, "floatMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverflowTab;->mNormalView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverflowTab;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-direct {p0}, Lcom/letv/leui/widget/LeOverflowTab;->startScaleAnimation()V

    .line 53
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverflowTab;->mNormalView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverflowTab;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFloatView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/letv/leui/widget/LeOverflowTab;->mFloatView:Landroid/view/View;

    .line 43
    return-void
.end method

.method public setNormalView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverflowTab;->mNormalView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverflowTab;->mNormalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeOverflowTab;->removeView(Landroid/view/View;)V

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/LeOverflowTab;->mNormalView:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverflowTab;->mNormalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeOverflowTab;->addView(Landroid/view/View;)V

    .line 35
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeOverflowTab;->setFloatMode(Z)V

    .line 48
    return-void
.end method
