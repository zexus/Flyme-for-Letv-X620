.class Lcom/android/server/policy/global/CancelButton$1;
.super Lcom/android/server/policy/global/CircleButton$ClickableControlListener;
.source "CancelButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/global/CancelButton;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/CancelButton;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/CancelButton;Lcom/android/server/policy/global/CircleButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/CancelButton;
    .param p2, "this$0_1"    # Lcom/android/server/policy/global/CircleButton;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/server/policy/global/CancelButton$1;->this$0:Lcom/android/server/policy/global/CancelButton;

    invoke-direct {p0, p2}, Lcom/android/server/policy/global/CircleButton$ClickableControlListener;-><init>(Lcom/android/server/policy/global/CircleButton;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton$ClickableControlListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 169
    iget-object v0, p0, Lcom/android/server/policy/global/CancelButton$1;->this$0:Lcom/android/server/policy/global/CancelButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/CancelButton;->setClickable(Z)V

    .line 167
    return-void
.end method
