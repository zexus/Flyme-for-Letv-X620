.class Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/MedianCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorHistogram"
.end annotation


# instance fields
.field colorArray:[I

.field countArray:[I


# direct methods
.method constructor <init>([I)V
    .locals 8
    .param p1, "pixelsOrig"    # [I

    .prologue
    const/4 v6, 0x0

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    .line 398
    iput-object v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    .line 406
    array-length v0, p1

    .line 407
    .local v0, "N":I
    new-array v5, v0, [I

    .line 408
    .local v5, "pixelsCpy":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 410
    aget v6, p1, v2

    const v7, 0xffffff

    and-int/2addr v6, v7

    aput v6, v5, v2

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    :cond_0
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 415
    const/4 v3, -0x1

    .line 416
    .local v3, "k":I
    const/4 v1, -0x1

    .line 417
    .local v1, "curColor":I
    const/4 v2, 0x0

    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 418
    aget v6, v5, v2

    if-eq v6, v1, :cond_1

    .line 419
    add-int/lit8 v3, v3, 0x1

    .line 420
    aget v1, v5, v2

    .line 417
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 423
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .line 426
    .local v4, "nColors":I
    new-array v6, v4, [I

    iput-object v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    .line 427
    new-array v6, v4, [I

    iput-object v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    .line 428
    const/4 v3, -0x1

    .line 429
    const/4 v1, -0x1

    .line 430
    const/4 v2, 0x0

    :goto_2
    array-length v6, v5

    if-ge v2, v6, :cond_4

    .line 431
    aget v6, v5, v2

    if-eq v6, v1, :cond_3

    .line 432
    add-int/lit8 v3, v3, 0x1

    .line 433
    aget v1, v5, v2

    .line 434
    iget-object v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    aput v1, v6, v3

    .line 435
    iget-object v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    const/4 v7, 0x1

    aput v7, v6, v3

    .line 430
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 437
    :cond_3
    iget-object v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    aget v7, v6, v3

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v3

    goto :goto_3

    .line 405
    :cond_4
    return-void
.end method

.method constructor <init>([I[I)V
    .locals 1
    .param p1, "color"    # [I
    .param p2, "count"    # [I

    .prologue
    const/4 v0, 0x0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    .line 398
    iput-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    .line 401
    iput-object p2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    .line 402
    iput-object p1, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    .line 400
    return-void
.end method


# virtual methods
.method public getColor(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 459
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    aget v0, v0, p1

    return v0
.end method

.method public getColorArray()[I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    return-object v0
.end method

.method public getCount(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 463
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    aget v0, v0, p1

    return v0
.end method

.method public getCountArray()[I
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    return-object v0
.end method

.method public getNumberOfColors()I
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    if-nez v0, :cond_0

    .line 452
    const/4 v0, 0x0

    return v0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    array-length v0, v0

    return v0
.end method
