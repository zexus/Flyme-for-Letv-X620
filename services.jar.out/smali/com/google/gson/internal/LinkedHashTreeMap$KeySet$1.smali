.class Lcom/google/gson/internal/LinkedHashTreeMap$KeySet$1;
.super Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/LinkedHashTreeMap",
        "<TK;TV;>.",
        "LinkedTreeMapIterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;Lcom/google/gson/internal/LinkedHashTreeMap;)V
    .locals 1

    .prologue
    .line 832
    .local p1, "this$1":Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.KeySet;"
    .local p2, "this$0":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$KeySet$1;->this$1:Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap;Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedHashTreeMap$KeySet$1;->nextNode()Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method
