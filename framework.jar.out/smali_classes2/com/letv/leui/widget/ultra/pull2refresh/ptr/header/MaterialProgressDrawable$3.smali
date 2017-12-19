.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$3;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

.field final synthetic val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;
    .param p2, "val$ring"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$3;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$3;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$3;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 355
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$3;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 356
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$3;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 357
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$3;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->-get3(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$3;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-static {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->-get2(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 353
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 361
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 349
    return-void
.end method
