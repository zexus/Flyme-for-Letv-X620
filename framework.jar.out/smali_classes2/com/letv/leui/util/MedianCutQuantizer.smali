.class public Lcom/letv/leui/util/MedianCutQuantizer;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;,
        Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;,
        Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;,
        Lcom/letv/leui/util/MedianCutQuantizer$redComparator;,
        Lcom/letv/leui/util/MedianCutQuantizer$grnComparator;,
        Lcom/letv/leui/util/MedianCutQuantizer$bluComparator;,
        Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private imageColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

.field private quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/util/MedianCutQuantizer;)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer;->imageColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/letv/leui/util/MedianCutQuantizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/MedianCutQuantizer;->LOG_TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>([II)V
    .locals 1
    .param p1, "pixels"    # [I
    .param p2, "Kmax"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer;->imageColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .line 42
    iput-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer;->quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/util/MedianCutQuantizer;->findRepresentativeColors([II)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer;->quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .line 44
    return-void
.end method

.method private averageColors(Ljava/util/List;)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;",
            ">;)[",
            "Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "colorBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 139
    .local v4, "n":I
    new-array v0, v4, [Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .line 140
    .local v0, "avgColors":[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    const/4 v3, 0x0

    .line 141
    .local v3, "i":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "box$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;

    .line 142
    .local v1, "box":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    invoke-virtual {v1}, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->getAverageColor()Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-result-object v5

    aput-object v5, v0, v3

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "box":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    :cond_0
    return-object v0
.end method

.method private findBoxToSplit(Ljava/util/List;)Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;",
            ">;)",
            "Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "colorBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;>;"
    const/4 v2, 0x0

    .line 125
    .local v2, "boxToSplit":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    const v3, 0x7fffffff

    .line 126
    .local v3, "minLevel":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "boxToSplit":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    .local v1, "box$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;

    .line 127
    .local v0, "box":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    invoke-virtual {v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->colorCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 128
    iget v4, v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->level:I

    if-ge v4, v3, :cond_0

    .line 129
    move-object v2, v0

    .line 130
    .local v2, "boxToSplit":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    iget v3, v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->level:I

    goto :goto_0

    .line 134
    .end local v0    # "box":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    .end local v2    # "boxToSplit":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public countQuantizedColors()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer;->quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    array-length v0, v0

    return v0
.end method

.method findClosestColor(I)Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .locals 2
    .param p1, "rgb"    # I

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/letv/leui/util/MedianCutQuantizer;->findClosestColorIndex(I)I

    move-result v0

    .line 101
    .local v0, "idx":I
    iget-object v1, p0, Lcom/letv/leui/util/MedianCutQuantizer;->quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    aget-object v1, v1, v0

    return-object v1
.end method

.method findClosestColorIndex(I)I
    .locals 9
    .param p1, "rgb"    # I

    .prologue
    .line 105
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 106
    .local v7, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 107
    .local v3, "grn":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 108
    .local v0, "blu":I
    const/4 v6, 0x0

    .line 109
    .local v6, "minIdx":I
    const v5, 0x7fffffff

    .line 110
    .local v5, "minDistance":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v8, p0, Lcom/letv/leui/util/MedianCutQuantizer;->quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    array-length v8, v8

    if-ge v4, v8, :cond_1

    .line 111
    iget-object v8, p0, Lcom/letv/leui/util/MedianCutQuantizer;->quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    aget-object v1, v8, v4

    .line 112
    .local v1, "color":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    invoke-virtual {v1, v7, v3, v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->distance2(III)I

    move-result v2

    .line 113
    .local v2, "d2":I
    if-ge v2, v5, :cond_0

    .line 114
    move v5, v2

    .line 115
    move v6, v4

    .line 110
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "color":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .end local v2    # "d2":I
    :cond_1
    return v6
.end method

.method findRepresentativeColors([II)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .locals 16
    .param p1, "pixels"    # [I
    .param p2, "Kmax"    # I

    .prologue
    .line 57
    new-instance v3, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;-><init>([I)V

    .line 58
    .local v3, "colorHist":Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;
    invoke-virtual {v3}, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->getNumberOfColors()I

    move-result v1

    .line 59
    .local v1, "K":I
    const/4 v11, 0x0

    .line 61
    .local v11, "rCols":[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    new-array v13, v1, [Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/util/MedianCutQuantizer;->imageColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .line 62
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_0

    .line 63
    invoke-virtual {v3, v6}, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->getColor(I)I

    move-result v12

    .line 64
    .local v12, "rgb":I
    invoke-virtual {v3, v6}, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->getCount(I)I

    move-result v2

    .line 65
    .local v2, "cnt":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/util/MedianCutQuantizer;->imageColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    new-instance v14, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    invoke-direct {v14, v12, v2}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;-><init>(II)V

    aput-object v14, v13, v6

    .line 62
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "cnt":I
    .end local v12    # "rgb":I
    :cond_0
    move/from16 v0, p2

    if-gt v1, v0, :cond_1

    .line 70
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/util/MedianCutQuantizer;->imageColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .line 89
    .local v11, "rCols":[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    :goto_1
    return-object v11

    .line 72
    .local v11, "rCols":[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    :cond_1
    new-instance v7, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;

    add-int/lit8 v13, v1, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14, v13, v15}, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;-><init>(Lcom/letv/leui/util/MedianCutQuantizer;III)V

    .line 73
    .local v7, "initialBox":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v4, "colorSet":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;>;"
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    const/4 v8, 0x1

    .line 76
    .local v8, "k":I
    const/4 v5, 0x0

    .line 77
    .local v5, "done":Z
    :goto_2
    move/from16 v0, p2

    if-ge v8, v0, :cond_2

    if-eqz v5, :cond_3

    .line 87
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/letv/leui/util/MedianCutQuantizer;->averageColors(Ljava/util/List;)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-result-object v11

    .local v11, "rCols":[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    goto :goto_1

    .line 78
    .local v11, "rCols":[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/letv/leui/util/MedianCutQuantizer;->findBoxToSplit(Ljava/util/List;)Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;

    move-result-object v10

    .line 79
    .local v10, "nextBox":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    if-eqz v10, :cond_4

    .line 80
    invoke-virtual {v10}, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->splitBox()Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;

    move-result-object v9

    .line 81
    .local v9, "newBox":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 84
    .end local v9    # "newBox":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    :cond_4
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public getQuantizedColors()[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer;->quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    return-object v0
.end method

.method listColorNodes([Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)V
    .locals 7
    .param p1, "nodes"    # [Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .prologue
    .line 388
    const/4 v1, 0x0

    .line 389
    .local v1, "i":I
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 390
    .local v0, "color":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    sget-object v4, Lcom/letv/leui/util/MedianCutQuantizer;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Color Node #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    add-int/lit8 v1, v1, 0x1

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "color":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    :cond_0
    return-void
.end method

.method public quantizeImage([I)V
    .locals 5
    .param p1, "pixels"    # [I

    .prologue
    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 94
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/letv/leui/util/MedianCutQuantizer;->findClosestColor(I)Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-result-object v0

    .line 95
    .local v0, "color":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    invoke-static {v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->-get3(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v2

    invoke-static {v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->-get2(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v3

    invoke-static {v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->-get0(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, p1, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "color":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    :cond_0
    return-void
.end method
