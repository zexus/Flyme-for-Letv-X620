.class public Lcom/android/server/policy/global/CircleButton$ClickableControlListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircleButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/CircleButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ClickableControlListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/CircleButton;


# direct methods
.method protected constructor <init>(Lcom/android/server/policy/global/CircleButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/CircleButton;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/server/policy/global/CircleButton$ClickableControlListener;->this$0:Lcom/android/server/policy/global/CircleButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 368
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton$ClickableControlListener;->this$0:Lcom/android/server/policy/global/CircleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/CircleButton;->setClickable(Z)V

    .line 367
    return-void
.end method
