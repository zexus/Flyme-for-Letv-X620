.class final Lcom/letv/leui/util/DominantColorFinder$1;
.super Ljava/lang/Object;
.source "DominantColorFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/util/DominantColorFinder;->weight([Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$maxCount:F


# direct methods
.method constructor <init>(F)V
    .locals 0
    .param p1, "val$maxCount"    # F

    .prologue
    .line 94
    iput p1, p0, Lcom/letv/leui/util/DominantColorFinder$1;->val$maxCount:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I
    .locals 3
    .param p1, "lhs"    # Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .param p2, "rhs"    # Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .prologue
    .line 97
    iget v2, p0, Lcom/letv/leui/util/DominantColorFinder$1;->val$maxCount:F

    invoke-static {p1, v2}, Lcom/letv/leui/util/DominantColorFinder;->-wrap0(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;F)F

    move-result v0

    .line 98
    .local v0, "lhsWeight":F
    iget v2, p0, Lcom/letv/leui/util/DominantColorFinder$1;->val$maxCount:F

    invoke-static {p2, v2}, Lcom/letv/leui/util/DominantColorFinder;->-wrap0(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;F)F

    move-result v1

    .line 100
    .local v1, "rhsWeight":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 101
    const/4 v2, 0x1

    return v2

    .line 102
    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 103
    const/4 v2, -0x1

    return v2

    .line 105
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 96
    check-cast p1, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/util/DominantColorFinder$1;->compare(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v0

    return v0
.end method
