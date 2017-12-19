.class Lcom/letv/leui/widget/DragSortGridModification;
.super Ljava/lang/Object;
.source "DragSortGridView.java"


# instance fields
.field private transitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortGridModification;->transitions:Ljava/util/List;

    .line 1143
    return-void
.end method


# virtual methods
.method public addTransition(II)V
    .locals 4
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridModification;->transitions:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1152
    return-void
.end method

.method public getTransitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridModification;->transitions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1158
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridModification;->transitions:Ljava/util/List;

    return-object v0
.end method

.method public hasTransitions()Z
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridModification;->transitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
