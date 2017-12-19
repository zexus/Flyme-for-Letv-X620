.class Lcom/letv/leui/widget/LeBottomSheet$5;
.super Ljava/lang/Object;
.source "LeBottomSheet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$itemListener:Landroid/widget/AdapterView$OnItemClickListener;

.field final synthetic val$keyName:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeBottomSheet;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeBottomSheet;
    .param p2, "val$keyName"    # [Ljava/lang/String;
    .param p3, "val$itemListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet$5;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    iput-object p2, p0, Lcom/letv/leui/widget/LeBottomSheet$5;->val$keyName:[Ljava/lang/String;

    iput-object p3, p0, Lcom/letv/leui/widget/LeBottomSheet$5;->val$itemListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$5;->val$keyName:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 658
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$5;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0, p3}, Lcom/letv/leui/widget/LeBottomSheet;->-set1(Lcom/letv/leui/widget/LeBottomSheet;I)I

    .line 659
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$5;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get1(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->notifyDataSetChanged()V

    .line 666
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$5;->val$itemListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 656
    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$5;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get9(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$5;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get9(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$5;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get1(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$5;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get9(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$5;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get9(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
