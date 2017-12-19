.class final Lcom/letv/leui/widget/slide/LeSlidePager$1;
.super Ljava/lang/Object;
.source "LeSlidePager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/slide/LeSlidePager;
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
        "Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .param p2, "rhs"    # Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .prologue
    .line 84
    iget v0, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget v1, p2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 83
    check-cast p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/slide/LeSlidePager$1;->compare(Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;)I

    move-result v0

    return v0
.end method
