.class Lcom/letv/leui/preference/LeListPreference$7;
.super Ljava/lang/Object;
.source "LeListPreference.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeListPreference;->onDismissAnimate(Landroid/view/View;Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    .line 786
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$7;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 798
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$7;->this$0:Lcom/letv/leui/preference/LeListPreference;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/letv/leui/preference/LeListPreference;->isAnimate:Z

    .line 793
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 803
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 789
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$7;->this$0:Lcom/letv/leui/preference/LeListPreference;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/preference/LeListPreference;->isAnimate:Z

    .line 788
    return-void
.end method
