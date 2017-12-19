.class public Lcom/letv/leui/widget/LeWordIterator;
.super Ljava/lang/Object;
.source "LeWordIterator.java"


# static fields
.field private static final WINDOW_WIDTH:I = 0x32


# instance fields
.field private mIterator:Ljava/text/BreakIterator;

.field private mOffsetShift:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeWordIterator;-><init>(Ljava/util/Locale;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeWordIterator;->mIterator:Ljava/text/BreakIterator;

    .line 50
    return-void
.end method

.method private checkOffsetIsValid(I)V
    .locals 4
    .param p1, "shiftedOffset"    # I

    .prologue
    .line 139
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeWordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/widget/LeWordIterator;->mOffsetShift:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    const-string/jumbo v2, ". Valid range is ["

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    iget v2, p0, Lcom/letv/leui/widget/LeWordIterator;->mOffsetShift:I

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    const-string/jumbo v2, ", "

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/letv/leui/widget/LeWordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/LeWordIterator;->mOffsetShift:I

    add-int/2addr v2, v3

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    const-string/jumbo v2, "]"

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    return-void
.end method

.method private isAfterLetterOrDigit(I)Z
    .locals 3
    .param p1, "shiftedOffset"    # I

    .prologue
    const/4 v2, 0x1

    .line 123
    if-lt p1, v2, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointBefore(I)I

    move-result v0

    .line 125
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 127
    .end local v0    # "codePoint":I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isOnLetterOrDigit(I)Z
    .locals 3
    .param p1, "shiftedOffset"    # I

    .prologue
    const/4 v2, 0x0

    .line 131
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 133
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 135
    .end local v0    # "codePoint":I
    :cond_0
    return v2
.end method


# virtual methods
.method public getBeginning(I)I
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 75
    iget v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mOffsetShift:I

    sub-int v0, p1, v1

    .line 76
    .local v0, "shiftedOffset":I
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeWordIterator;->checkOffsetIsValid(I)V

    .line 78
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeWordIterator;->isOnLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mOffsetShift:I

    add-int/2addr v1, v0

    return v1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeWordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    return v1

    .line 85
    :cond_1
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeWordIterator;->isAfterLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeWordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    return v1

    .line 89
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public getEnd(I)I
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 105
    iget v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mOffsetShift:I

    sub-int v0, p1, v1

    .line 106
    .local v0, "shiftedOffset":I
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeWordIterator;->checkOffsetIsValid(I)V

    .line 108
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeWordIterator;->isAfterLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mOffsetShift:I

    add-int/2addr v1, v0

    return v1

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeWordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    return v1

    .line 115
    :cond_1
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeWordIterator;->isOnLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeWordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    return v1

    .line 119
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public setCharSequence(Ljava/lang/CharSequence;II)V
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 55
    add-int/lit8 v1, p2, -0x32

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mOffsetShift:I

    .line 56
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v2, p3, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 58
    .local v0, "windowEnd":I
    iget v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mOffsetShift:I

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mString:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/letv/leui/widget/LeWordIterator;->mIterator:Ljava/text/BreakIterator;

    iget-object v2, p0, Lcom/letv/leui/widget/LeWordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 54
    return-void
.end method
