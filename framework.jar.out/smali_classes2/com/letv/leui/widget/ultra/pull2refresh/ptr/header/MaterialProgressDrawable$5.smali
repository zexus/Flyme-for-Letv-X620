.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$5;
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
    .line 394
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$5;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$5;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 401
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$5;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 408
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$5;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 409
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$5;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$5;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 410
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$5;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$5;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-static {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->-get4(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->-set0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;F)F

    .line 406
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$5;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->-set0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;F)F

    .line 396
    return-void
.end method
