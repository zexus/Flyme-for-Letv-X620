.class public Lcom/letv/leui/util/LeAlignSpan;
.super Landroid/text/style/CharacterStyle;
.source "LeAlignSpan.java"


# static fields
.field public static final TYPE_END:I = 0x2

.field public static final TYPE_START:I = 0x1


# instance fields
.field public mPadding:F

.field public mType:I

.field public spanEnd:I

.field public spanStart:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/util/LeAlignSpan;->mType:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/util/LeAlignSpan;->mPadding:F

    .line 17
    iput p1, p0, Lcom/letv/leui/util/LeAlignSpan;->mType:I

    .line 18
    iput p2, p0, Lcom/letv/leui/util/LeAlignSpan;->spanStart:I

    .line 19
    iput p3, p0, Lcom/letv/leui/util/LeAlignSpan;->spanEnd:I

    .line 16
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 22
    return-void
.end method
