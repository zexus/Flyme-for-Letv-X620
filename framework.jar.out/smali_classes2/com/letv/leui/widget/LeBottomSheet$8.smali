.class Lcom/letv/leui/widget/LeBottomSheet$8;
.super Ljava/lang/Object;
.source "LeBottomSheet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZLandroid/view/View$OnClickListener;)V
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
    .line 808
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet$8;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 811
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$8;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0, p3}, Lcom/letv/leui/widget/LeBottomSheet;->-set1(Lcom/letv/leui/widget/LeBottomSheet;I)I

    .line 812
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$8;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get13(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$8;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get11(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$8;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->-set2(Lcom/letv/leui/widget/LeBottomSheet;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$8;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get11(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 817
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$8;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get11(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$8;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get1(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->notifyDataSetChanged()V

    .line 810
    return-void

    .line 819
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$8;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get11(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
