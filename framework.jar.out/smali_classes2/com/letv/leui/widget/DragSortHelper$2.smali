.class Lcom/letv/leui/widget/DragSortHelper$2;
.super Landroid/database/DataSetObserver;
.source "DragSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/DragSortHelper;->setAdapter(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/DragSortHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/DragSortHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    .line 1899
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper$2;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$2;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->-get3(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$2;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortHelper;->cancelDrag()V

    .line 1900
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 1908
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper$2;->cancel()V

    .line 1907
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 1913
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper$2;->cancel()V

    .line 1912
    return-void
.end method
