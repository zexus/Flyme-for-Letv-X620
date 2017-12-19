.class Lcom/letv/leui/widget/ModifiedGallery$2;
.super Ljava/lang/Object;
.source "ModifiedGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/ModifiedGallery;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/ModifiedGallery;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/ModifiedGallery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/ModifiedGallery;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/letv/leui/widget/ModifiedGallery$2;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 630
    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery$2;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    iget-object v3, p0, Lcom/letv/leui/widget/ModifiedGallery$2;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v3}, Lcom/letv/leui/widget/ModifiedGallery;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 631
    .local v0, "lastView":Landroid/view/View;
    const/4 v1, 0x0

    .line 632
    .local v1, "scrollAmount":I
    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery$2;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v2}, Lcom/letv/leui/widget/ModifiedGallery;->-get3(Lcom/letv/leui/widget/ModifiedGallery;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 633
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/widget/ModifiedGallery$2;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v3}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 634
    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery$2;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v2}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v1, v2, v3

    .line 642
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery$2;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/letv/leui/widget/ModifiedGallery;->-set2(Lcom/letv/leui/widget/ModifiedGallery;I)I

    .line 644
    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery$2;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v2}, Lcom/letv/leui/widget/ModifiedGallery;->-get4(Lcom/letv/leui/widget/ModifiedGallery;)I

    move-result v2

    if-eq v2, v5, :cond_1

    if-eqz v1, :cond_1

    .line 645
    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery$2;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v2, v5}, Lcom/letv/leui/widget/ModifiedGallery;->reportScrollStateChange(I)V

    .line 648
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery$2;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v2}, Lcom/letv/leui/widget/ModifiedGallery;->-get2(Lcom/letv/leui/widget/ModifiedGallery;)Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->startUsingDistance(I)V

    .line 629
    return-void

    .line 637
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/widget/ModifiedGallery$2;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v3}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/ModifiedGallery$2;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v4}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 638
    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery$2;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v2}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/widget/ModifiedGallery$2;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v3}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_0
.end method
