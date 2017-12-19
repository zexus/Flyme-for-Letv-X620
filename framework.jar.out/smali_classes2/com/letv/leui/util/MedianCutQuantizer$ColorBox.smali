.class Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/MedianCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColorBox"
.end annotation


# instance fields
.field bmax:I

.field bmin:I

.field count:I

.field gmax:I

.field gmin:I

.field level:I

.field lower:I

.field rmax:I

.field rmin:I

.field final synthetic this$0:Lcom/letv/leui/util/MedianCutQuantizer;

.field upper:I


# direct methods
.method constructor <init>(Lcom/letv/leui/util/MedianCutQuantizer;III)V
    .locals 2
    .param p1, "this$0"    # Lcom/letv/leui/util/MedianCutQuantizer;
    .param p2, "lower"    # I
    .param p3, "upper"    # I
    .param p4, "level"    # I

    .prologue
    const/4 v1, 0x0

    .line 215
    iput-object p1, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->this$0:Lcom/letv/leui/util/MedianCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput v1, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->lower:I

    .line 208
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->upper:I

    .line 210
    iput v1, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->count:I

    .line 216
    iput p2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->lower:I

    .line 217
    iput p3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->upper:I

    .line 218
    iput p4, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->level:I

    .line 219
    invoke-virtual {p0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->trim()V

    .line 215
    return-void
.end method


# virtual methods
.method colorCount()I
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->upper:I

    iget v1, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->lower:I

    sub-int/2addr v0, v1

    return v0
.end method

.method findMedian(Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;)I
    .locals 7
    .param p1, "dim"    # Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    .prologue
    .line 304
    iget-object v3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->this$0:Lcom/letv/leui/util/MedianCutQuantizer;

    invoke-static {v3}, Lcom/letv/leui/util/MedianCutQuantizer;->-get0(Lcom/letv/leui/util/MedianCutQuantizer;)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-result-object v3

    iget v4, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->lower:I

    iget v5, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->upper:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p1, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;->comparator:Ljava/util/Comparator;

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 306
    iget v3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->count:I

    div-int/lit8 v0, v3, 0x2

    .line 308
    .local v0, "half":I
    iget v1, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->lower:I

    .local v1, "median":I
    const/4 v2, 0x0

    .local v2, "nPixels":I
    :goto_0
    iget v3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->upper:I

    if-ge v1, v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->this$0:Lcom/letv/leui/util/MedianCutQuantizer;

    invoke-static {v3}, Lcom/letv/leui/util/MedianCutQuantizer;->-get0(Lcom/letv/leui/util/MedianCutQuantizer;)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->-get1(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v3

    add-int/2addr v2, v3

    .line 310
    if-lt v2, v0, :cond_1

    .line 314
    :cond_0
    return v1

    .line 308
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getAverageColor()Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .locals 18

    .prologue
    .line 318
    const/4 v11, 0x0

    .line 319
    .local v11, "rSum":I
    const/4 v8, 0x0

    .line 320
    .local v8, "gSum":I
    const/4 v5, 0x0

    .line 321
    .local v5, "bSum":I
    const/4 v10, 0x0

    .line 322
    .local v10, "n":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->lower:I

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->upper:I

    if-gt v9, v14, :cond_0

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->this$0:Lcom/letv/leui/util/MedianCutQuantizer;

    invoke-static {v14}, Lcom/letv/leui/util/MedianCutQuantizer;->-get0(Lcom/letv/leui/util/MedianCutQuantizer;)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-result-object v14

    aget-object v6, v14, v9

    .line 324
    .local v6, "ci":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    invoke-static {v6}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->-get1(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v7

    .line 325
    .local v7, "cnt":I
    invoke-static {v6}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->-get3(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v14

    mul-int/2addr v14, v7

    add-int/2addr v11, v14

    .line 326
    invoke-static {v6}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->-get2(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v14

    mul-int/2addr v14, v7

    add-int/2addr v8, v14

    .line 327
    invoke-static {v6}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->-get0(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v14

    mul-int/2addr v14, v7

    add-int/2addr v5, v14

    .line 328
    add-int/2addr v10, v7

    .line 322
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 330
    .end local v6    # "ci":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .end local v7    # "cnt":I
    :cond_0
    int-to-double v12, v10

    .line 331
    .local v12, "nd":D
    int-to-double v14, v11

    div-double/2addr v14, v12

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v4, v14

    .line 332
    .local v4, "avgRed":I
    int-to-double v14, v8

    div-double/2addr v14, v12

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v3, v14

    .line 333
    .local v3, "avgGrn":I
    int-to-double v14, v5

    div-double/2addr v14, v12

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v2, v14

    .line 334
    .local v2, "avgBlu":I
    new-instance v14, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    invoke-direct {v14, v4, v3, v2, v10}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;-><init>(IIII)V

    return-object v14
.end method

.method getLongestColorDimension()Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;
    .locals 5

    .prologue
    .line 288
    iget v3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->rmax:I

    iget v4, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->rmin:I

    sub-int v2, v3, v4

    .line 289
    .local v2, "rLength":I
    iget v3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->gmax:I

    iget v4, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->gmin:I

    sub-int v1, v3, v4

    .line 290
    .local v1, "gLength":I
    iget v3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->bmax:I

    iget v4, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->bmin:I

    sub-int v0, v3, v4

    .line 291
    .local v0, "bLength":I
    if-lt v0, v2, :cond_0

    if-lt v0, v1, :cond_0

    .line 292
    sget-object v3, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;->BLUE:Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    return-object v3

    .line 293
    :cond_0
    if-lt v1, v2, :cond_1

    if-lt v1, v0, :cond_1

    .line 294
    sget-object v3, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;->GREEN:Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    return-object v3

    .line 296
    :cond_1
    sget-object v3, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;->RED:Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    return-object v3
.end method

.method splitBox()Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    .locals 7

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->colorCount()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 267
    const/4 v4, 0x0

    return-object v4

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->getLongestColorDimension()Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    move-result-object v0

    .line 273
    .local v0, "dim":Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;
    invoke-virtual {p0, v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->findMedian(Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;)I

    move-result v1

    .line 277
    .local v1, "med":I
    iget v4, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->level:I

    add-int/lit8 v3, v4, 0x1

    .line 278
    .local v3, "nextLevel":I
    new-instance v2, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;

    iget-object v4, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->this$0:Lcom/letv/leui/util/MedianCutQuantizer;

    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->upper:I

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;-><init>(Lcom/letv/leui/util/MedianCutQuantizer;III)V

    .line 279
    .local v2, "newBox":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    iput v1, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->upper:I

    .line 280
    iput v3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->level:I

    .line 281
    invoke-virtual {p0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->trim()V

    .line 282
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " lower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->lower:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " upper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->upper:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " rmin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->rmin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " rmax="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->rmax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " gmin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->gmin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " gmax="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->gmax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bmin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->bmin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bmax="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->bmax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bmin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->bmin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bmax="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->bmax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    return-object v0
.end method

.method trim()V
    .locals 7

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 228
    iput v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->rmin:I

    .line 229
    iput v5, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->rmax:I

    .line 230
    iput v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->gmin:I

    .line 231
    iput v5, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->gmax:I

    .line 232
    iput v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->bmin:I

    .line 233
    iput v5, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->bmax:I

    .line 234
    iput v5, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->count:I

    .line 235
    iget v3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->lower:I

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->upper:I

    if-gt v3, v5, :cond_6

    .line 236
    iget-object v5, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->this$0:Lcom/letv/leui/util/MedianCutQuantizer;

    invoke-static {v5}, Lcom/letv/leui/util/MedianCutQuantizer;->-get0(Lcom/letv/leui/util/MedianCutQuantizer;)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-result-object v5

    aget-object v1, v5, v3

    .line 237
    .local v1, "color":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    iget v5, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->count:I

    invoke-static {v1}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->-get1(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->count:I

    .line 238
    invoke-static {v1}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->-get3(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v4

    .line 239
    .local v4, "r":I
    invoke-static {v1}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->-get2(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v2

    .line 240
    .local v2, "g":I
    invoke-static {v1}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->-get0(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v0

    .line 241
    .local v0, "b":I
    iget v5, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->rmax:I

    if-le v4, v5, :cond_0

    .line 242
    iput v4, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->rmax:I

    .line 244
    :cond_0
    iget v5, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->rmin:I

    if-ge v4, v5, :cond_1

    .line 245
    iput v4, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->rmin:I

    .line 247
    :cond_1
    iget v5, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->gmax:I

    if-le v2, v5, :cond_2

    .line 248
    iput v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->gmax:I

    .line 250
    :cond_2
    iget v5, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->gmin:I

    if-ge v2, v5, :cond_3

    .line 251
    iput v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->gmin:I

    .line 253
    :cond_3
    iget v5, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->bmax:I

    if-le v0, v5, :cond_4

    .line 254
    iput v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->bmax:I

    .line 256
    :cond_4
    iget v5, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->bmin:I

    if-ge v0, v5, :cond_5

    .line 257
    iput v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->bmin:I

    .line 235
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "b":I
    .end local v1    # "color":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .end local v2    # "g":I
    .end local v4    # "r":I
    :cond_6
    return-void
.end method
