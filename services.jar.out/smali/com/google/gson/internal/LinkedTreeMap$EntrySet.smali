.class Lcom/google/gson/internal/LinkedTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gson/internal/LinkedTreeMap;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 0

    .prologue
    .line 557
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    .local p1, "this$0":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 588
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->clear()V

    .line 587
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    .line 571
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;

    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;-><init>(Lcom/google/gson/internal/LinkedTreeMap$EntrySet;Lcom/google/gson/internal/LinkedTreeMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 575
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 576
    return v2

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 580
    .local v0, "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-nez v0, :cond_1

    .line 581
    return v2

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 584
    return v3
.end method

.method public size()I
    .locals 1

    .prologue
    .line 559
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method
