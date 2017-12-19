.class public Lcom/letv/leui/util/DominantColorFinder;
.super Ljava/lang/Object;
.source "DominantColorFinder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final NUM_COLORS:I = 0x10


# instance fields
.field private final mPalette:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

.field private final mWeightedPalette:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;


# direct methods
.method static synthetic -wrap0(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;F)F
    .locals 1
    .param p0, "node"    # Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .param p1, "maxCount"    # F

    .prologue
    invoke-static {p0, p1}, Lcom/letv/leui/util/DominantColorFinder;->calculateWeight(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;F)F

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/letv/leui/util/DominantColorFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/letv/leui/util/DominantColorFinder;->-assertionsDisabled:Z

    .line 10
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 17
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/util/DominantColorFinder;-><init>(Landroid/graphics/Bitmap;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "colorNumber"    # I

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 22
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 24
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "rgbPixels":[I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 25
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 27
    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    .line 28
    const/4 p2, 0x4

    .line 31
    :cond_0
    new-instance v8, Lcom/letv/leui/util/MedianCutQuantizer;

    invoke-direct {v8, v1, p2}, Lcom/letv/leui/util/MedianCutQuantizer;-><init>([II)V

    .line 33
    .local v8, "mcq":Lcom/letv/leui/util/MedianCutQuantizer;
    invoke-virtual {v8}, Lcom/letv/leui/util/MedianCutQuantizer;->getQuantizedColors()[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/util/DominantColorFinder;->mPalette:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .line 34
    iget-object v0, p0, Lcom/letv/leui/util/DominantColorFinder;->mPalette:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    invoke-static {v0}, Lcom/letv/leui/util/DominantColorFinder;->weight([Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/util/DominantColorFinder;->mWeightedPalette:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .line 20
    return-void
.end method

.method public static final calculateColorfulness(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)F
    .locals 3
    .param p0, "node"    # Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->getHsv()[F

    move-result-object v0

    .line 121
    .local v0, "hsv":[F
    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v2, v0, v2

    mul-float/2addr v1, v2

    return v1
.end method

.method private static calculateWeight(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;F)F
    .locals 3
    .param p0, "node"    # Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .param p1, "maxCount"    # F

    .prologue
    .line 113
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 114
    invoke-static {p0}, Lcom/letv/leui/util/DominantColorFinder;->calculateColorfulness(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 115
    invoke-virtual {p0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->getCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 113
    invoke-static {v0}, Lcom/letv/leui/util/DominantColorFinder;->weightedAverage([F)F

    move-result v0

    return v0
.end method

.method private static weight([Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .locals 7
    .param p0, "palette"    # [Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .prologue
    const/4 v4, 0x0

    .line 84
    array-length v5, p0

    invoke-static {p0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .line 85
    .local v0, "copy":[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    aget-object v5, p0, v4

    invoke-virtual {v5}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->getCount()I

    move-result v5

    int-to-float v3, v5

    .line 87
    .local v3, "tmaxCount":F
    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 88
    .local v2, "node":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    invoke-virtual {v2}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->getCount()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v3

    if-lez v6, :cond_0

    .line 89
    invoke-virtual {v2}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->getCount()I

    move-result v6

    int-to-float v3, v6

    .line 87
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "node":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    :cond_1
    move v1, v3

    .line 94
    .local v1, "maxCount":F
    new-instance v4, Lcom/letv/leui/util/DominantColorFinder$1;

    invoke-direct {v4, v1}, Lcom/letv/leui/util/DominantColorFinder$1;-><init>(F)V

    invoke-static {v0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 109
    return-object v0
.end method

.method public static varargs weightedAverage([F)F
    .locals 7
    .param p0, "values"    # [F

    .prologue
    const/4 v5, 0x0

    .line 125
    sget-boolean v6, Lcom/letv/leui/util/DominantColorFinder;->-assertionsDisabled:Z

    if-nez v6, :cond_1

    array-length v6, p0

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 127
    :cond_1
    const/4 v1, 0x0

    .line 128
    .local v1, "sum":F
    const/4 v2, 0x0

    .line 130
    .local v2, "sumWeight":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_2

    .line 131
    aget v3, p0, v0

    .line 132
    .local v3, "value":F
    add-int/lit8 v5, v0, 0x1

    aget v4, p0, v5

    .line 134
    .local v4, "weight":F
    mul-float v5, v3, v4

    add-float/2addr v1, v5

    .line 135
    add-float/2addr v2, v4

    .line 130
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 138
    .end local v3    # "value":F
    .end local v4    # "weight":F
    :cond_2
    div-float v5, v1, v2

    return v5
.end method


# virtual methods
.method public getDominantColor()I
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/letv/leui/util/DominantColorFinder;->mWeightedPalette:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->getRgb()I

    move-result v0

    return v0
.end method

.method public getDominantColorExcludeBlack()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v3, p0, Lcom/letv/leui/util/DominantColorFinder;->mWeightedPalette:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 59
    .local v0, "colorNode":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    invoke-virtual {v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->getRgb()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/letv/leui/util/DominantColorFinder;->isBlack(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->getRgb()I

    move-result v1

    return v1

    .line 57
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "colorNode":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/util/DominantColorFinder;->mWeightedPalette:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->getRgb()I

    move-result v1

    return v1
.end method

.method public getDominantColorExcludeWhite()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v3, p0, Lcom/letv/leui/util/DominantColorFinder;->mWeightedPalette:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 49
    .local v0, "colorNode":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    invoke-virtual {v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->getRgb()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/letv/leui/util/DominantColorFinder;->isWhite(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->getRgb()I

    move-result v1

    return v1

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "colorNode":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/util/DominantColorFinder;->mWeightedPalette:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->getRgb()I

    move-result v1

    return v1
.end method

.method public getDominantColorList()[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/letv/leui/util/DominantColorFinder;->mWeightedPalette:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    iget-object v2, p0, Lcom/letv/leui/util/DominantColorFinder;->mWeightedPalette:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .line 39
    .local v0, "copy":[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    return-object v0
.end method

.method isBlack(I)Z
    .locals 4
    .param p1, "rgb"    # I

    .prologue
    const/16 v3, 0xa

    .line 75
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 76
    .local v2, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 77
    .local v1, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 79
    .local v0, "b":I
    if-gt v2, v3, :cond_0

    if-gt v1, v3, :cond_0

    if-gt v0, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isWhite(I)Z
    .locals 4
    .param p1, "rgb"    # I

    .prologue
    const/16 v3, 0xf4

    .line 67
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 68
    .local v2, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 69
    .local v1, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 71
    .local v0, "b":I
    if-lt v2, v3, :cond_0

    if-lt v1, v3, :cond_0

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
