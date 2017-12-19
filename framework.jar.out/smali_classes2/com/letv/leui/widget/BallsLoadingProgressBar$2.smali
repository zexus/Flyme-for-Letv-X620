.class Lcom/letv/leui/widget/BallsLoadingProgressBar$2;
.super Lcom/letv/leui/widget/BallsLoadingProgressBar$EmptyAnimatorListener;
.source "BallsLoadingProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/BallsLoadingProgressBar;->createBeginAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;Lcom/letv/leui/widget/BallsLoadingProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/BallsLoadingProgressBar;
    .param p2, "this$0_1"    # Lcom/letv/leui/widget/BallsLoadingProgressBar;

    .prologue
    .line 105
    iput-object p2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$2;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/BallsLoadingProgressBar$EmptyAnimatorListener;-><init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$2;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    invoke-static {v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->-wrap0(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    .line 117
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$2;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    invoke-static {v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->-get0(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 115
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$2;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->-set0(Lcom/letv/leui/widget/BallsLoadingProgressBar;Z)Z

    .line 109
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$2;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    invoke-static {v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->-get4(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$2;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    invoke-static {v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->-get4(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;->onLoadStart()V

    .line 107
    :cond_0
    return-void
.end method
