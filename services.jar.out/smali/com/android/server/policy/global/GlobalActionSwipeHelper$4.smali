.class Lcom/android/server/policy/global/GlobalActionSwipeHelper$4;
.super Ljava/lang/Object;
.source "GlobalActionSwipeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$canAnimViewBeDismissed:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionSwipeHelper;ZLcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper;
    .param p2, "val$canAnimViewBeDismissed"    # Z
    .param p3, "val$animView"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper$4;->this$0:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    iput-boolean p2, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper$4;->val$canAnimViewBeDismissed:Z

    iput-object p3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper$4;->val$animView:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 393
    return-void
.end method
