.class public abstract Lcom/letv/leui/widget/DragSortBaseGridAdapter;
.super Lcom/letv/leui/widget/DragSortAbstractGridAdapter;
.source "DragSortBaseGridAdapter.java"


# instance fields
.field private mColumnCount:I

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "columnCount"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortAbstractGridAdapter;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    .line 15
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mContext:Landroid/content/Context;

    .line 16
    iput p2, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mColumnCount:I

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "columnCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortAbstractGridAdapter;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    .line 20
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mContext:Landroid/content/Context;

    .line 21
    iput p3, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mColumnCount:I

    .line 22
    invoke-direct {p0, p2}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->init(Ljava/util/List;)V

    .line 19
    return-void
.end method

.method private init(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->addAllStableId(Ljava/util/List;)V

    .line 27
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->addStableId(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->addStableId(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method

.method public add(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->addAllStableId(Ljava/util/List;)V

    .line 57
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    .line 55
    return-void
.end method

.method public canReorder(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->clearStableIdMap()V

    .line 39
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    .line 37
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mColumnCount:I

    return v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->removeStableID(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method

.method public reorderItems(II)V
    .locals 1
    .param p1, "originalPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/letv/leui/widget/DragSortGridUtils;->reorder(Ljava/util/ArrayList;II)V

    .line 93
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    .line 90
    :cond_0
    return-void
.end method

.method public set(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->clear()V

    .line 33
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->init(Ljava/util/List;)V

    .line 34
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    .line 31
    return-void
.end method

.method public setColumnCount(I)V
    .locals 0
    .param p1, "columnCount"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mColumnCount:I

    .line 86
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    .line 84
    return-void
.end method
