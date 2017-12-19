.class Lcom/letv/leui/widget/LeGlowDelegate$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LeGlowDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeGlowDelegate;->startAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeGlowDelegate;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeGlowDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeGlowDelegate;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/letv/leui/widget/LeGlowDelegate$1;->this$0:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 117
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate$1;->this$0:Lcom/letv/leui/widget/LeGlowDelegate;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/widget/LeGlowDelegate;->isPressAnimEnd:Z

    .line 118
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate$1;->this$0:Lcom/letv/leui/widget/LeGlowDelegate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeGlowDelegate;->startAnimation(I)V

    .line 115
    return-void
.end method
