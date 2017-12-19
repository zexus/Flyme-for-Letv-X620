.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$1;
.super Ljava/lang/Object;
.source "PtrFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->setRefreshCompleteHook(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 490
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "mRefreshCompleteHook resume."

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->-wrap1(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;Z)V

    .line 489
    return-void
.end method
