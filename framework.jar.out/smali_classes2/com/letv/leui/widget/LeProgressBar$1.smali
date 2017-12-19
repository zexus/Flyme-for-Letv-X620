.class Lcom/letv/leui/widget/LeProgressBar$1;
.super Ljava/lang/Object;
.source "LeProgressBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeProgressBar;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeProgressBar;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeProgressBar;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/letv/leui/widget/LeProgressBar$1;->this$0:Lcom/letv/leui/widget/LeProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 165
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar$1;->this$0:Lcom/letv/leui/widget/LeProgressBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    .line 166
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar$1;->this$0:Lcom/letv/leui/widget/LeProgressBar;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeProgressBar;->invalidate()V

    .line 164
    return-void
.end method
