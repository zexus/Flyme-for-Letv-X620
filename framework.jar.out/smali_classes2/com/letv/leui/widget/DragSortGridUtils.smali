.class public Lcom/letv/leui/widget/DragSortGridUtils;
.super Ljava/lang/Object;
.source "DragSortGridUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getViewX(Landroid/view/View;)F
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static getViewY(Landroid/view/View;)F
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static reorder(Ljava/util/ArrayList;II)V
    .locals 1
    .param p1, "indexFrom"    # I
    .param p2, "indexTwo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 17
    .local v0, "obj":Ljava/lang/Object;
    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 15
    return-void
.end method

.method public static swap(Ljava/util/ArrayList;II)V
    .locals 2
    .param p1, "firstIndex"    # I
    .param p2, "secondIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 29
    .local v0, "firstObject":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 30
    .local v1, "secondObject":Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method
