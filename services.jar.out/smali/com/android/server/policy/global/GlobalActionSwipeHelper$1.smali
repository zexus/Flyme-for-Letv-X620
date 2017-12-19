.class Lcom/android/server/policy/global/GlobalActionSwipeHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalActionSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/global/GlobalActionSwipeHelper;->swipeToBottom(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionSwipeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionSwipeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper$1;->this$0:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper$1;->this$0:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->-get0(Lcom/android/server/policy/global/GlobalActionSwipeHelper;)Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->onSwapToBottom()V

    .line 352
    return-void
.end method
