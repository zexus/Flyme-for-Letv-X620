.class Lcom/android/server/policy/global/GlobalActionSwipeHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalActionSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/global/GlobalActionSwipeHelper;->snapChild(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

.field final synthetic val$animView:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionSwipeHelper;Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper;
    .param p2, "val$animView"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper$3;->this$0:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    iput-object p2, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper$3;->val$animView:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper$3;->val$animView:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->setAlpha(F)V

    .line 386
    return-void
.end method
