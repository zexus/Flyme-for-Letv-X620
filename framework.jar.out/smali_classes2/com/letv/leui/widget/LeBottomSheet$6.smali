.class Lcom/letv/leui/widget/LeBottomSheet$6;
.super Ljava/lang/Object;
.source "LeBottomSheet.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeBottomSheet;->setStyleForTopSlideinListView(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/AdapterView$OnItemClickListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeBottomSheet;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeBottomSheet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet$6;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 675
    iget-object v3, p0, Lcom/letv/leui/widget/LeBottomSheet$6;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v3}, Lcom/letv/leui/widget/LeBottomSheet;->-get18(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 677
    iget-object v3, p0, Lcom/letv/leui/widget/LeBottomSheet$6;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v3}, Lcom/letv/leui/widget/LeBottomSheet;->-get21(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 678
    iget-object v3, p0, Lcom/letv/leui/widget/LeBottomSheet$6;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v3}, Lcom/letv/leui/widget/LeBottomSheet;->-get15(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet$6;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v4}, Lcom/letv/leui/widget/LeBottomSheet;->-get15(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v6, v5, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 679
    .local v2, "mView":Landroid/view/View;
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 680
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 679
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 682
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v0, v3

    .line 683
    .local v0, "height":F
    iget-object v3, p0, Lcom/letv/leui/widget/LeBottomSheet$6;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v3}, Lcom/letv/leui/widget/LeBottomSheet;->-get15(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 684
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v3, 0x40b00000    # 5.5f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 685
    iget-object v3, p0, Lcom/letv/leui/widget/LeBottomSheet$6;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v3}, Lcom/letv/leui/widget/LeBottomSheet;->-get15(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    .end local v0    # "height":F
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "mView":Landroid/view/View;
    :cond_0
    return-void
.end method
