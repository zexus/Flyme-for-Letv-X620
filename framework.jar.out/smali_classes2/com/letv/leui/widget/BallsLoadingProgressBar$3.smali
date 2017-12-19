.class Lcom/letv/leui/widget/BallsLoadingProgressBar$3;
.super Lcom/letv/leui/widget/BallsLoadingProgressBar$EmptyAnimatorListener;
.source "BallsLoadingProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/BallsLoadingProgressBar;->createAnimStep2()V
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
    .line 137
    iput-object p2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/BallsLoadingProgressBar$EmptyAnimatorListener;-><init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    invoke-static {v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->-get3(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    invoke-static {v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->-wrap1(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    .line 142
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    invoke-static {v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->-get0(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 139
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    invoke-static {v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->-wrap0(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    .line 145
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    invoke-static {v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->-get0(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method
