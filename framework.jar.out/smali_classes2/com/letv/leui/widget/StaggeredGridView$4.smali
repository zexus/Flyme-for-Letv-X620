.class Lcom/letv/leui/widget/StaggeredGridView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/StaggeredGridView;->populate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$4;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1341
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1342
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$4;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->-set1(Lcom/letv/leui/widget/StaggeredGridView;Z)Z

    .line 1343
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$4;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/StaggeredGridView;->requestLayout()V

    .line 1340
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1336
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1337
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$4;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->-set1(Lcom/letv/leui/widget/StaggeredGridView;Z)Z

    .line 1335
    return-void
.end method
