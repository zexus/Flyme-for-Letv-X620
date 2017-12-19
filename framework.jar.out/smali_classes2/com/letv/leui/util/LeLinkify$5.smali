.class final Lcom/letv/leui/util/LeLinkify$5;
.super Ljava/lang/Object;
.source "LeLinkify.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/util/LeLinkify;->pruneOverlaps(Ljava/util/ArrayList;)V
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
        "Lcom/letv/leui/util/LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/letv/leui/util/LinkSpec;Lcom/letv/leui/util/LinkSpec;)I
    .locals 4
    .param p1, "a"    # Lcom/letv/leui/util/LinkSpec;
    .param p2, "b"    # Lcom/letv/leui/util/LinkSpec;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 677
    iget v0, p1, Lcom/letv/leui/util/LinkSpec;->start:I

    iget v1, p2, Lcom/letv/leui/util/LinkSpec;->start:I

    if-ge v0, v1, :cond_0

    .line 678
    return v2

    .line 681
    :cond_0
    iget v0, p1, Lcom/letv/leui/util/LinkSpec;->start:I

    iget v1, p2, Lcom/letv/leui/util/LinkSpec;->start:I

    if-le v0, v1, :cond_1

    .line 682
    return v3

    .line 685
    :cond_1
    iget v0, p1, Lcom/letv/leui/util/LinkSpec;->end:I

    iget v1, p2, Lcom/letv/leui/util/LinkSpec;->end:I

    if-ge v0, v1, :cond_2

    .line 686
    return v3

    .line 689
    :cond_2
    iget v0, p1, Lcom/letv/leui/util/LinkSpec;->end:I

    iget v1, p2, Lcom/letv/leui/util/LinkSpec;->end:I

    if-le v0, v1, :cond_3

    .line 690
    return v2

    .line 693
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 676
    check-cast p1, Lcom/letv/leui/util/LinkSpec;

    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Lcom/letv/leui/util/LinkSpec;

    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/util/LeLinkify$5;->compare(Lcom/letv/leui/util/LinkSpec;Lcom/letv/leui/util/LinkSpec;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 697
    const/4 v0, 0x0

    return v0
.end method
