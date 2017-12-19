.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$3;
.super Ljava/lang/Object;
.source "MaterialHeader.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->setPtrFrameLayout(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

.field final synthetic val$mPtrUIHandlerHook:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;
    .param p2, "val$mPtrUIHandlerHook"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$3;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    iput-object p2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$3;->val$mPtrUIHandlerHook:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$3;->val$mPtrUIHandlerHook:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->resume()V

    .line 64
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 69
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 59
    return-void
.end method
