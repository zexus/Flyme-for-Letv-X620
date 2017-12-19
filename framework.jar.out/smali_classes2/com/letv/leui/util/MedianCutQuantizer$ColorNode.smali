.class public Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/MedianCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorNode"
.end annotation


# instance fields
.field private final blu:I

.field private final cnt:I

.field private final grn:I

.field private hsv:[F

.field private final red:I


# direct methods
.method static synthetic -get0(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->blu:I

    return v0
.end method

.method static synthetic -get1(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->cnt:I

    return v0
.end method

.method static synthetic -get2(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->grn:I

    return v0
.end method

.method static synthetic -get3(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->red:I

    return v0
.end method

.method constructor <init>(II)V
    .locals 1
    .param p1, "rgb"    # I
    .param p2, "cnt"    # I

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->red:I

    .line 159
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->grn:I

    .line 160
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->blu:I

    .line 161
    iput p2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->cnt:I

    .line 157
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 0
    .param p1, "red"    # I
    .param p2, "grn"    # I
    .param p3, "blu"    # I
    .param p4, "cnt"    # I

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p1, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->red:I

    .line 166
    iput p2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->grn:I

    .line 167
    iput p3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->blu:I

    .line 168
    iput p4, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->cnt:I

    .line 164
    return-void
.end method


# virtual methods
.method distance2(III)I
    .locals 5
    .param p1, "red"    # I
    .param p2, "grn"    # I
    .param p3, "blu"    # I

    .prologue
    .line 190
    iget v3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->red:I

    sub-int v2, v3, p1

    .line 191
    .local v2, "dr":I
    iget v3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->grn:I

    sub-int v1, v3, p2

    .line 192
    .local v1, "dg":I
    iget v3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->blu:I

    sub-int v0, v3, p3

    .line 193
    .local v0, "db":I
    mul-int v3, v2, v2

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    mul-int v4, v0, v0

    add-int/2addr v3, v4

    return v3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->cnt:I

    return v0
.end method

.method public getHsv()[F
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->hsv:[F

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->hsv:[F

    .line 178
    iget v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->red:I

    iget v1, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->grn:I

    iget v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->blu:I

    iget-object v3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->hsv:[F

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->hsv:[F

    return-object v0
.end method

.method public getRgb()I
    .locals 3

    .prologue
    .line 172
    iget v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->red:I

    iget v1, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->grn:I

    iget v2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->blu:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v1, " #"

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->getRgb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    const-string/jumbo v1, ". count: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    iget v1, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->cnt:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
