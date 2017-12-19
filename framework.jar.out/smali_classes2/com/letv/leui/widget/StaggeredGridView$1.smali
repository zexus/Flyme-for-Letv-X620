.class Lcom/letv/leui/widget/StaggeredGridView$1;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 468
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$1;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$1;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->-set4(Lcom/letv/leui/widget/StaggeredGridView;Z)Z

    .line 479
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 475
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 471
    return-void
.end method
