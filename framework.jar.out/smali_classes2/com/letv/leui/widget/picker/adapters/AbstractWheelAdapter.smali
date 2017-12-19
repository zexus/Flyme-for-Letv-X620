.class public abstract Lcom/letv/leui/widget/picker/adapters/AbstractWheelAdapter;
.super Ljava/lang/Object;
.source "AbstractWheelAdapter.java"

# interfaces
.implements Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;


# instance fields
.field private datasetObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method protected notifyDataChangedEvent()V
    .locals 3

    .prologue
    .line 42
    iget-object v2, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 44
    .local v0, "observer":Landroid/database/DataSetObserver;
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    .line 41
    .end local v0    # "observer":Landroid/database/DataSetObserver;
    .end local v1    # "observer$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected notifyDataInvalidatedEvent()V
    .locals 3

    .prologue
    .line 53
    iget-object v2, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 55
    .local v0, "observer":Landroid/database/DataSetObserver;
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onInvalidated()V

    goto :goto_0

    .line 52
    .end local v0    # "observer":Landroid/database/DataSetObserver;
    .end local v1    # "observer$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    return-void
.end method
