.class Lcom/android/server/policy/global/GlobalActionHostView$1$2;
.super Ljava/lang/Object;
.source "GlobalActionHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/global/GlobalActionHostView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/global/GlobalActionHostView$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionHostView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/global/GlobalActionHostView$1;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHostView$1$2;->this$1:Lcom/android/server/policy/global/GlobalActionHostView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView$1$2;->this$1:Lcom/android/server/policy/global/GlobalActionHostView$1;

    iget-object v0, v0, Lcom/android/server/policy/global/GlobalActionHostView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v0, v0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-interface {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->hiddenWindow()V

    .line 415
    return-void
.end method
