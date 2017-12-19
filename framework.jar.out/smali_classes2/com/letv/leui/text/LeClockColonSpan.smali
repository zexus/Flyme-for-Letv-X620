.class public Lcom/letv/leui/text/LeClockColonSpan;
.super Landroid/text/style/TypefaceSpan;
.source "LeClockColonSpan.java"


# instance fields
.field private mBaseLineOffset:I

.field private mTextSize:F


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/os/Parcel;)V

    .line 15
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/letv/leui/text/LeClockColonSpan;->mTextSize:F

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/text/LeClockColonSpan;->mBaseLineOffset:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/letv/leui/text/LeClockColonSpan;->mTextSize:F

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "family"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 15
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/letv/leui/text/LeClockColonSpan;->mTextSize:F

    .line 17
    return-void
.end method


# virtual methods
.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x1a

    return v0
.end method

.method public setBaseLineOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/letv/leui/text/LeClockColonSpan;->mBaseLineOffset:I

    .line 32
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/letv/leui/text/LeClockColonSpan;->mTextSize:F

    .line 36
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 42
    iget v0, p0, Lcom/letv/leui/text/LeClockColonSpan;->mBaseLineOffset:I

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 43
    iget v0, p0, Lcom/letv/leui/text/LeClockColonSpan;->mTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 44
    iget v0, p0, Lcom/letv/leui/text/LeClockColonSpan;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 47
    :cond_0
    invoke-super {p0, p1}, Landroid/text/style/TypefaceSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 41
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 52
    iget v0, p0, Lcom/letv/leui/text/LeClockColonSpan;->mBaseLineOffset:I

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 53
    iget v0, p0, Lcom/letv/leui/text/LeClockColonSpan;->mTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 54
    iget v0, p0, Lcom/letv/leui/text/LeClockColonSpan;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 56
    :cond_0
    invoke-super {p0, p1}, Landroid/text/style/TypefaceSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 51
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Landroid/text/style/TypefaceSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    iget v0, p0, Lcom/letv/leui/text/LeClockColonSpan;->mBaseLineOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/letv/leui/text/LeClockColonSpan;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 60
    return-void
.end method
