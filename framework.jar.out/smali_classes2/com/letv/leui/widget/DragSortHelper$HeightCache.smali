.class Lcom/letv/leui/widget/DragSortHelper$HeightCache;
.super Ljava/lang/Object;
.source "DragSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/DragSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeightCache"
.end annotation


# instance fields
.field private mMap:Landroid/util/SparseIntArray;

.field private mMaxSize:I

.field private mOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/letv/leui/widget/DragSortHelper;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/DragSortHelper;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/letv/leui/widget/DragSortHelper;
    .param p2, "size"    # I

    .prologue
    .line 545
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->mMap:Landroid/util/SparseIntArray;

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->mOrder:Ljava/util/ArrayList;

    .line 548
    iput p2, p0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->mMaxSize:I

    .line 545
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, -0x1

    .line 555
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 556
    .local v0, "currHeight":I
    if-eq v0, p2, :cond_1

    .line 557
    if-ne v0, v2, :cond_2

    .line 558
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->mMaxSize:I

    if-ne v1, v2, :cond_0

    .line 560
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->mMap:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->mOrder:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 566
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 567
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->mOrder:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_1
    return-void

    .line 564
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->mOrder:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 577
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->mOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 575
    return-void
.end method

.method public get(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 572
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->mMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method
