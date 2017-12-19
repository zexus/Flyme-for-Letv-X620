.class final Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LayoutRecord"
.end annotation


# instance fields
.field public column:I

.field public height:I

.field public id:J

.field private mMargins:[I

.field public span:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->id:J

    .line 357
    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;-><init>()V

    return-void
.end method

.method private final ensureMargins()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    .line 368
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->mMargins:[I

    .line 364
    :cond_0
    return-void
.end method


# virtual methods
.method public final getMarginAbove(I)I
    .locals 2
    .param p1, "col"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    return v0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getMarginBelow(I)I
    .locals 2
    .param p1, "col"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x0

    return v0

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final setMarginAbove(II)V
    .locals 2
    .param p1, "col"    # I
    .param p2, "margin"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 388
    return-void

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->ensureMargins()V

    .line 391
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    aput p2, v0, v1

    .line 386
    return-void
.end method

.method public final setMarginBelow(II)V
    .locals 2
    .param p1, "col"    # I
    .param p2, "margin"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 396
    return-void

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->ensureMargins()V

    .line 399
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    .line 394
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LayoutRecord{c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 405
    const-string/jumbo v3, " s="

    .line 404
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 405
    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 404
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-eqz v2, :cond_1

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " margins[above, below]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->mMargins:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->mMargins:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->mMargins:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 411
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    .end local v0    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
