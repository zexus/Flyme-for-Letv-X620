.class final Lcom/letv/leui/util/LeResolveUtils$1;
.super Ljava/lang/Object;
.source "LeResolveUtils.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/util/LeResolveUtils;->gvShowAnim(ILandroid/widget/LinearLayout;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mGvAnimLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "val$mGvAnimLayout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/letv/leui/util/LeResolveUtils$1;->val$mGvAnimLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 223
    .local v0, "marginBottom":I
    iget-object v2, p0, Lcom/letv/leui/util/LeResolveUtils$1;->val$mGvAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 224
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 225
    iget-object v2, p0, Lcom/letv/leui/util/LeResolveUtils$1;->val$mGvAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    return-void
.end method
