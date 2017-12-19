.class public abstract Lcom/letv/leui/widget/DragSortAbstractGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "DragSortAbstractGridAdapter.java"

# interfaces
.implements Lcom/letv/leui/widget/DragSortGridAdapterInterface;


# static fields
.field public static final INVALID_ID:I = -0x1


# instance fields
.field private mIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nextStableId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/DragSortAbstractGridAdapter;->nextStableId:I

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortAbstractGridAdapter;->mIdMap:Ljava/util/HashMap;

    .line 8
    return-void
.end method


# virtual methods
.method protected addAllStableId(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, "item":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DragSortAbstractGridAdapter;->addStableId(Ljava/lang/Object;)V

    goto :goto_0

    .line 39
    .end local v0    # "item":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected addStableId(Ljava/lang/Object;)V
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortAbstractGridAdapter;->mIdMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/letv/leui/widget/DragSortAbstractGridAdapter;->nextStableId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/letv/leui/widget/DragSortAbstractGridAdapter;->nextStableId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method protected clearStableIdMap()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortAbstractGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 64
    return-void
.end method

.method public final getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 53
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortAbstractGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 54
    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2

    .line 56
    :cond_1
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortAbstractGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "item":Ljava/lang/Object;
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortAbstractGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    return-wide v2
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method protected removeStableID(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortAbstractGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method
