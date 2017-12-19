.class Lcom/letv/leui/widget/LeBubbleView$1;
.super Lcom/letv/leui/widget/LeStateColorDrawable;
.source "LeBubbleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeBubbleView;->initContent(FIIFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeBubbleView;

.field final synthetic val$backgroundColor:I


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeBubbleView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeBubbleView;
    .param p2, "$anonymous0"    # I
    .param p3, "val$backgroundColor"    # I

    .prologue
    .line 205
    iput-object p1, p0, Lcom/letv/leui/widget/LeBubbleView$1;->this$0:Lcom/letv/leui/widget/LeBubbleView;

    iput p3, p0, Lcom/letv/leui/widget/LeBubbleView$1;->val$backgroundColor:I

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/LeStateColorDrawable;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected onIsPressed(Z)V
    .locals 3
    .param p1, "isPressed"    # Z

    .prologue
    .line 208
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleView$1;->this$0:Lcom/letv/leui/widget/LeBubbleView;

    iget-object v1, v1, Lcom/letv/leui/widget/LeBubbleView;->conRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeRoundRectDrawable2;

    .line 209
    .local v0, "conRlBackground":Lcom/letv/leui/widget/LeRoundRectDrawable2;
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeBubbleView$1;->this$0:Lcom/letv/leui/widget/LeBubbleView;

    iget v2, v2, Lcom/letv/leui/widget/LeBubbleView;->pressBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleView$1;->this$0:Lcom/letv/leui/widget/LeBubbleView;

    iget-object v1, v1, Lcom/letv/leui/widget/LeBubbleView;->arrowImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBubbleView$1;->this$0:Lcom/letv/leui/widget/LeBubbleView;

    iget-object v2, v2, Lcom/letv/leui/widget/LeBubbleView;->pressDrawable:Lcom/letv/leui/widget/TintedBitmapDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleView$1;->this$0:Lcom/letv/leui/widget/LeBubbleView;

    iget-object v1, v1, Lcom/letv/leui/widget/LeBubbleView;->conRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 219
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleView$1;->this$0:Lcom/letv/leui/widget/LeBubbleView;

    iget-object v1, v1, Lcom/letv/leui/widget/LeBubbleView;->arrowImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 207
    return-void

    .line 214
    :cond_0
    invoke-virtual {v0}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/widget/LeBubbleView$1;->val$backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleView$1;->this$0:Lcom/letv/leui/widget/LeBubbleView;

    iget-object v1, v1, Lcom/letv/leui/widget/LeBubbleView;->arrowImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBubbleView$1;->this$0:Lcom/letv/leui/widget/LeBubbleView;

    iget-object v2, v2, Lcom/letv/leui/widget/LeBubbleView;->norDrawable:Lcom/letv/leui/widget/TintedBitmapDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
