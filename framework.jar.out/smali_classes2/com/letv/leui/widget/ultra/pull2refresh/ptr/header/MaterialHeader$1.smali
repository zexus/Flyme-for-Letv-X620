.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;
.super Landroid/view/animation/Animation;
.source "MaterialHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->-set0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;F)F

    .line 27
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->-get0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    invoke-static {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->-get1(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setAlpha(I)V

    .line 28
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->invalidate()V

    .line 25
    return-void
.end method
