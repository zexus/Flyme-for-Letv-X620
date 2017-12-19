.class Lcom/letv/leui/widget/StaggeredGridView$3;
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
    .line 1318
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$3;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1326
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1327
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$3;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->-set11(Lcom/letv/leui/widget/StaggeredGridView;Z)Z

    .line 1325
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1321
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1322
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$3;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->-set11(Lcom/letv/leui/widget/StaggeredGridView;Z)Z

    .line 1320
    return-void
.end method
