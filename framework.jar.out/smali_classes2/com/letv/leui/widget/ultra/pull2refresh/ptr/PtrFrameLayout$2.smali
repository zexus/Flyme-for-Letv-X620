.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$2;
.super Ljava/lang/Object;
.source "PtrFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->refreshComplete()V
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
    .line 629
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$2;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$2;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->-wrap2(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    .line 631
    return-void
.end method
