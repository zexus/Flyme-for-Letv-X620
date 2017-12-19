.class Lcom/letv/leui/widget/LeActionBarBottomSlider$3;
.super Ljava/lang/Object;
.source "LeActionBarBottomSlider.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeActionBarBottomSlider;->setStyle(Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

.field final synthetic val$adapter:Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;

.field final synthetic val$listener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeActionBarBottomSlider;Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeActionBarBottomSlider;
    .param p2, "val$adapter"    # Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;
    .param p3, "val$listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$3;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    iput-object p2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$3;->val$adapter:Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;

    iput-object p3, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$3;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

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
    .line 150
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$3;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-static {v0, p3}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->-set0(Lcom/letv/leui/widget/LeActionBarBottomSlider;I)I

    .line 151
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$3;->val$adapter:Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->notifyDataSetChanged()V

    .line 152
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$3;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 149
    return-void
.end method
