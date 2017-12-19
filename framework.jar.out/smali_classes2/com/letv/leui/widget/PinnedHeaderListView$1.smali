.class Lcom/letv/leui/widget/PinnedHeaderListView$1;
.super Ljava/lang/Object;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/PinnedHeaderListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/PinnedHeaderListView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/PinnedHeaderListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/PinnedHeaderListView;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/letv/leui/widget/PinnedHeaderListView$1;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

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
    .line 37
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$1;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v0}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get0(Lcom/letv/leui/widget/PinnedHeaderListView;)Lcom/letv/leui/widget/PinnedSectionAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$1;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v0}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get0(Lcom/letv/leui/widget/PinnedHeaderListView;)Lcom/letv/leui/widget/PinnedSectionAdapter;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/PinnedSectionAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 36
    :cond_0
    return-void
.end method
