.class public Lcom/letv/leui/widget/picker/WheelRecycle;
.super Ljava/lang/Object;
.source "WheelRecycle.java"


# instance fields
.field private emptyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private wheel:Lcom/letv/leui/widget/picker/WheelView;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/picker/WheelView;)V
    .locals 0
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/letv/leui/widget/picker/WheelRecycle;->wheel:Lcom/letv/leui/widget/picker/WheelView;

    .line 28
    return-void
.end method

.method private addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez p2, :cond_0

    .line 99
    new-instance p2, Ljava/util/LinkedList;

    .end local p2    # "cache":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 102
    .restart local p2    # "cache":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-object p2
.end method

.method private getCachedView(Ljava/util/List;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 131
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 132
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 133
    .local v0, "view":Landroid/view/View;
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 134
    return-object v0

    .line 136
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-object v3
.end method

.method private recycleView(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 112
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelRecycle;->wheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/WheelView;->getViewAdapter()Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 113
    .local v0, "count":I
    if-ltz p2, :cond_0

    if-lt p2, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelRecycle;->wheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/WheelView;->isCyclic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    :cond_1
    :goto_0
    if-gez p2, :cond_3

    .line 118
    add-int/2addr p2, v0

    goto :goto_0

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelRecycle;->emptyItems:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/letv/leui/widget/picker/WheelRecycle;->addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/picker/WheelRecycle;->emptyItems:Ljava/util/List;

    .line 111
    :goto_1
    return-void

    .line 120
    :cond_3
    rem-int/2addr p2, v0

    .line 121
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelRecycle;->items:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/letv/leui/widget/picker/WheelRecycle;->addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/picker/WheelRecycle;->items:Ljava/util/List;

    goto :goto_1
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelRecycle;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelRecycle;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelRecycle;->emptyItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelRecycle;->emptyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    :cond_1
    return-void
.end method

.method public getEmptyItem()Landroid/view/View;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelRecycle;->emptyItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/picker/WheelRecycle;->getCachedView(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelRecycle;->items:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/picker/WheelRecycle;->getCachedView(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public recycleItems(Landroid/widget/LinearLayout;ILcom/letv/leui/widget/picker/ItemsRange;)I
    .locals 6
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "firstItem"    # I
    .param p3, "range"    # Lcom/letv/leui/widget/picker/ItemsRange;

    .prologue
    .line 43
    move v3, p2

    .line 44
    .local v3, "index":I
    invoke-virtual {p3}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v1

    .line 45
    .local v1, "first":I
    invoke-virtual {p3}, Lcom/letv/leui/widget/picker/ItemsRange;->getLast()I

    move-result v4

    .line 47
    .local v4, "last":I
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 48
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 49
    invoke-virtual {p3, v3}, Lcom/letv/leui/widget/picker/ItemsRange;->contains(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 50
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/letv/leui/widget/picker/WheelRecycle;->recycleView(Landroid/view/View;I)V

    .line 51
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 52
    if-nez v2, :cond_0

    .line 53
    add-int/lit8 p2, p2, 0x1

    .line 58
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 60
    :cond_2
    return p2
.end method
