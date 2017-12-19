.class Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private mUrlPadding:I

.field private mUrlSelected:Z

.field private mWidths:[F

.field private final mWorkPaint:Lcom/letv/leui/text/LeTextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    .line 51
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/letv/leui/text/LeTextPaint;

    invoke-direct {v0}, Lcom/letv/leui/text/LeTextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Lcom/letv/leui/text/LeTextPaint;

    .line 69
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 68
    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 71
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 70
    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 73
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 72
    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    .line 51
    return-void
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "needWidth"    # Z

    .prologue
    .line 399
    iget v1, p0, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move/from16 v0, p4

    if-ne v1, v0, :cond_1

    .line 400
    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    neg-float v13, v1

    .line 401
    .local v13, "w":F
    add-float v7, p5, v13

    .line 402
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 401
    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    .line 403
    return v13

    .line 399
    .end local v13    # "w":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 407
    :cond_1
    const/4 v11, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    .line 406
    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v1

    return v1
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 19
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "contextStart"    # I
    .param p6, "contextEnd"    # I
    .param p7, "runIsRtl"    # Z
    .param p8, "x"    # F
    .param p9, "y"    # I

    .prologue
    .line 1066
    sget-boolean v2, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 1067
    const-string/jumbo v2, "Text-drawTextRun"

    const-wide/16 v8, 0x8

    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1069
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_2

    .line 1070
    sub-int v5, p4, p3

    .line 1071
    .local v5, "count":I
    sub-int v7, p6, p5

    .line 1072
    .local v7, "contextCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    .line 1073
    move/from16 v0, p9

    int-to-float v9, v0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v8, p8

    move/from16 v10, p7

    move-object/from16 v11, p2

    .line 1072
    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1079
    .end local v5    # "count":I
    .end local v7    # "contextCount":I
    :goto_0
    sget-boolean v2, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v2, :cond_1

    .line 1080
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1065
    :cond_1
    return-void

    .line 1075
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v18, v0

    .line 1076
    .local v18, "delta":I
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v10, v18, p3

    add-int v11, v18, p4

    .line 1077
    add-int v12, v18, p5

    add-int v13, v18, p6

    move/from16 v0, p9

    int-to-float v15, v0

    move-object/from16 v8, p1

    move/from16 v14, p8

    move/from16 v16, p7

    move-object/from16 v17, p2

    .line 1076
    invoke-virtual/range {v8 .. v17}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 1
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "wp"    # Landroid/text/TextPaint;

    .prologue
    .line 694
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Ljava/lang/CharSequence;)V

    .line 692
    return-void
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Ljava/lang/CharSequence;)V
    .locals 6
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "wp"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 699
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 700
    .local v1, "previousTop":I
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 701
    .local v2, "previousAscent":I
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 702
    .local v3, "previousDescent":I
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 703
    .local v4, "previousBottom":I
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 705
    .local v5, "previousLeading":I
    invoke-virtual {p1, p2, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    .line 707
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 698
    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .locals 23
    .param p1, "runIndex"    # I
    .param p2, "runStart"    # I
    .param p3, "runLimit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "after"    # Z

    .prologue
    .line 626
    if-ltz p1, :cond_0

    if-eqz p6, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    :goto_0
    move/from16 v0, p5

    if-ne v0, v3, :cond_3

    .line 630
    :cond_0
    if-eqz p6, :cond_2

    .line 631
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v3, v5

    return v3

    .line 626
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 633
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v3, v5

    return v3

    .line 636
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mWorkPaint:Lcom/letv/leui/text/LeTextPaint;

    .line 637
    .local v2, "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 639
    move/from16 v4, p2

    .line 641
    .local v4, "spanStart":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_5

    .line 642
    move/from16 v20, p3

    .line 678
    .local v20, "spanLimit":I
    :cond_4
    if-eqz p4, :cond_b

    const/4 v6, 0x1

    .line 679
    .local v6, "dir":I
    :goto_1
    if-eqz p6, :cond_c

    const/4 v8, 0x0

    .line 680
    .local v8, "cursorOpt":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v3, :cond_d

    .line 681
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    sub-int v5, v20, v4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->getTextRunCursor([CIIIII)I

    move-result v3

    return v3

    .line 644
    .end local v6    # "dir":I
    .end local v8    # "cursorOpt":I
    .end local v20    # "spanLimit":I
    :cond_5
    if-eqz p6, :cond_6

    add-int/lit8 v22, p5, 0x1

    .line 645
    .local v22, "target":I
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v17, v3, p3

    .line 647
    .local v17, "limit":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    .line 648
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    .line 647
    move/from16 v0, v17

    invoke-interface {v3, v5, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 648
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    .line 647
    sub-int v20, v3, v5

    .line 649
    .restart local v20    # "spanLimit":I
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_7

    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    .line 656
    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, v20

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    .line 655
    invoke-interface {v3, v5, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 657
    .local v21, "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 659
    .restart local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v21

    array-length v3, v0

    if-lez v3, :cond_4

    .line 660
    const/16 v18, 0x0

    .line 661
    .local v18, "replacement":Landroid/text/style/ReplacementSpan;
    const/16 v16, 0x0

    .end local v18    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v16, "j":I
    :goto_5
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_9

    .line 662
    aget-object v19, v21, v16

    .line 663
    .local v19, "span":Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_8

    move-object/from16 v18, v19

    .line 664
    check-cast v18, Landroid/text/style/ReplacementSpan;

    .line 661
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 644
    .end local v16    # "j":I
    .end local v17    # "limit":I
    .end local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    .end local v20    # "spanLimit":I
    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v22    # "target":I
    :cond_6
    move/from16 v22, p5

    .restart local v22    # "target":I
    goto :goto_3

    .line 652
    .restart local v17    # "limit":I
    .restart local v20    # "spanLimit":I
    :cond_7
    move/from16 v4, v20

    goto :goto_4

    .line 666
    .restart local v16    # "j":I
    .restart local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    .restart local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_6

    .line 670
    .end local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_9
    if-eqz v18, :cond_4

    .line 673
    if-eqz p6, :cond_a

    .end local v20    # "spanLimit":I
    :goto_7
    return v20

    .restart local v20    # "spanLimit":I
    :cond_a
    move/from16 v20, v4

    goto :goto_7

    .line 678
    .end local v16    # "j":I
    .end local v17    # "limit":I
    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v22    # "target":I
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "dir":I
    goto/16 :goto_1

    .line 679
    :cond_c
    const/4 v8, 0x2

    .restart local v8    # "cursorOpt":I
    goto/16 :goto_2

    .line 684
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v11, v3, v4

    .line 685
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v3, v20

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v14, v3, p5

    move-object v9, v2

    move v13, v6

    move v15, v8

    .line 684
    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v3

    .line 685
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    .line 684
    sub-int/2addr v3, v5

    return v3
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 24
    .param p1, "replacement"    # Landroid/text/style/ReplacementSpan;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "runIsRtl"    # Z
    .param p6, "c"    # Landroid/graphics/Canvas;
    .param p7, "x"    # F
    .param p8, "top"    # I
    .param p9, "y"    # I
    .param p10, "bottom"    # I
    .param p11, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p12, "needWidth"    # Z

    .prologue
    .line 836
    const/16 v23, 0x0

    .line 838
    .local v23, "ret":F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v1, p3

    .line 839
    .local v4, "textStart":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v1, p4

    .line 841
    .local v5, "textLimit":I
    if-nez p12, :cond_0

    if-eqz p6, :cond_2

    if-eqz p5, :cond_2

    .line 842
    :cond_0
    const/4 v7, 0x0

    .line 843
    .local v7, "previousTop":I
    const/4 v8, 0x0

    .line 844
    .local v8, "previousAscent":I
    const/4 v9, 0x0

    .line 845
    .local v9, "previousDescent":I
    const/4 v10, 0x0

    .line 846
    .local v10, "previousBottom":I
    const/4 v11, 0x0

    .line 848
    .local v11, "previousLeading":I
    if-eqz p11, :cond_6

    const/16 v22, 0x1

    .line 850
    .local v22, "needUpdateMetrics":Z
    :goto_0
    if-eqz v22, :cond_1

    .line 851
    move-object/from16 v0, p11

    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 852
    move-object/from16 v0, p11

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 853
    move-object/from16 v0, p11

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 854
    move-object/from16 v0, p11

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 855
    move-object/from16 v0, p11

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 858
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v0, v1

    move/from16 v23, v0

    .line 860
    if-eqz v22, :cond_2

    move-object/from16 v6, p11

    .line 861
    invoke-static/range {v6 .. v11}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 866
    .end local v7    # "previousTop":I
    .end local v8    # "previousAscent":I
    .end local v9    # "previousDescent":I
    .end local v10    # "previousBottom":I
    .end local v11    # "previousLeading":I
    .end local v22    # "needUpdateMetrics":Z
    :cond_2
    if-eqz p6, :cond_4

    .line 867
    if-eqz p5, :cond_3

    .line 868
    sub-float p7, p7, v23

    .line 870
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p10

    move-object/from16 v21, p2

    invoke-virtual/range {v12 .. v21}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 874
    :cond_4
    if-eqz p5, :cond_5

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    .end local v23    # "ret":F
    :cond_5
    return v23

    .line 848
    .restart local v7    # "previousTop":I
    .restart local v8    # "previousAscent":I
    .restart local v9    # "previousDescent":I
    .restart local v10    # "previousBottom":I
    .restart local v11    # "previousLeading":I
    .restart local v23    # "ret":F
    :cond_6
    const/16 v22, 0x0

    .restart local v22    # "needUpdateMetrics":Z
    goto :goto_0
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 40
    .param p1, "start"    # I
    .param p2, "measureLimit"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "c"    # Landroid/graphics/Canvas;
    .param p6, "x"    # F
    .param p7, "top"    # I
    .param p8, "y"    # I
    .param p9, "bottom"    # I
    .param p10, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p11, "needWidth"    # Z

    .prologue
    .line 901
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Lcom/letv/leui/text/LeTextPaint;

    .line 903
    .local v3, "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 904
    if-eqz p10, :cond_0

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p10

    invoke-static {v0, v3, v2}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Ljava/lang/CharSequence;)V

    .line 908
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 911
    .end local v3    # "wp":Landroid/text/TextPaint;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v2, :cond_4

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Lcom/letv/leui/text/LeTextPaint;

    .line 913
    .restart local v3    # "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 914
    move/from16 v5, p2

    .line 916
    .local v5, "mlimit":I
    if-nez p11, :cond_2

    move/from16 v0, p2

    if-ge v5, v0, :cond_3

    :cond_2
    const/4 v15, 0x1

    :goto_0
    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    .line 915
    invoke-direct/range {v2 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    return v2

    .line 916
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 920
    .end local v3    # "wp":Landroid/text/TextPaint;
    .end local v5    # "mlimit":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-static {v2}, Lcom/letv/leui/text/LeSelection;->getURLSpanPos(Ljava/lang/CharSequence;)I

    move-result v37

    .line 923
    .local v37, "urlPos":I
    const/16 v30, 0x0

    .line 926
    .local v30, "previoudsReplacement":Landroid/text/style/ReplacementSpan;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/TextLine;->mStart:I

    add-int v9, v9, p3

    invoke-virtual {v2, v4, v6, v9}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 927
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/TextLine;->mStart:I

    add-int v9, v9, p3

    invoke-virtual {v2, v4, v6, v9}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 934
    move/from16 v29, p6

    .line 935
    .local v29, "originalX":F
    move/from16 v13, p1

    .end local v30    # "previoudsReplacement":Landroid/text/style/ReplacementSpan;
    .local v13, "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v13, v0, :cond_1e

    .line 938
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/TextLine;->mWorkPaint:Lcom/letv/leui/text/LeTextPaint;

    .line 940
    .local v8, "wp":Lcom/letv/leui/text/LeTextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v2}, Lcom/letv/leui/text/LeTextPaint;->set(Landroid/text/TextPaint;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v13

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p3

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    .line 943
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    .line 942
    sub-int v23, v2, v4

    .line 944
    .local v23, "inext":I
    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 946
    .restart local v5    # "mlimit":I
    const/4 v7, 0x0

    .line 948
    .local v7, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v11, 0x0

    .end local v7    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v11, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v11, v2, :cond_8

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v11

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v11

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v13

    if-gt v2, v4, :cond_6

    .line 948
    :cond_5
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 953
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    aget-object v32, v2, v11

    .line 954
    .local v32, "span":Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v32

    instance-of v2, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_7

    move-object/from16 v7, v32

    .line 955
    check-cast v7, Landroid/text/style/ReplacementSpan;

    .local v7, "replacement":Landroid/text/style/ReplacementSpan;
    goto :goto_3

    .line 959
    .end local v7    # "replacement":Landroid/text/style/ReplacementSpan;
    :cond_7
    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_3

    .line 969
    .end local v32    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_8
    if-eqz v7, :cond_c

    move-object/from16 v0, v30

    if-eq v0, v7, :cond_c

    .line 970
    move-object/from16 v30, v7

    .line 971
    .local v30, "previoudsReplacement":Landroid/text/style/ReplacementSpan;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v2, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    sub-int v9, v2, v4

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v2, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    sub-int v10, v2, v4

    .line 973
    if-nez p11, :cond_9

    move/from16 v0, p2

    if-ge v5, v0, :cond_b

    :cond_9
    const/16 v18, 0x1

    :goto_4
    move-object/from16 v6, p0

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move-object/from16 v17, p10

    .line 971
    invoke-direct/range {v6 .. v18}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    .end local v11    # "j":I
    .end local v13    # "i":I
    move-result v2

    add-float p6, p6, v2

    .line 935
    .end local v30    # "previoudsReplacement":Landroid/text/style/ReplacementSpan;
    :cond_a
    move/from16 v13, v23

    .restart local v13    # "i":I
    goto/16 :goto_1

    .line 973
    .restart local v11    # "j":I
    .restart local v30    # "previoudsReplacement":Landroid/text/style/ReplacementSpan;
    :cond_b
    const/16 v18, 0x0

    goto :goto_4

    .line 978
    .end local v30    # "previoudsReplacement":Landroid/text/style/ReplacementSpan;
    :cond_c
    move v11, v13

    :goto_5
    if-ge v11, v5, :cond_a

    .line 980
    const/16 v24, 0x0

    .line 981
    .local v24, "isHandleLeURLSpan":Z
    const/16 v26, 0x0

    .local v26, "isUrlStartline":Z
    const/16 v25, 0x0

    .line 982
    .local v25, "isUrlEndline":Z
    const/16 v39, 0x0

    .local v39, "urlSpanStart":I
    const/16 v38, 0x0

    .line 983
    .local v38, "urlSpanEnd":I
    const/16 v36, 0x0

    .local v36, "urlExtraPaddingStart":F
    const/16 v35, 0x0

    .line 985
    .local v35, "urlExtraPaddingEnd":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v6, v5

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    .line 986
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    .line 985
    sub-int v12, v2, v4

    .line 988
    .local v12, "jnext":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v2}, Lcom/letv/leui/text/LeTextPaint;->set(Landroid/text/TextPaint;)V

    .line 989
    const/16 v27, 0x0

    .local v27, "k":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v27

    if-ge v0, v2, :cond_13

    .line 991
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v27

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v12

    if-ge v2, v4, :cond_d

    .line 992
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v27

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v11

    if-gt v2, v4, :cond_e

    .line 989
    :cond_d
    :goto_7
    add-int/lit8 v27, v27, 0x1

    goto :goto_6

    .line 994
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/CharacterStyle;

    aget-object v31, v2, v27

    .line 997
    .local v31, "span":Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v31

    instance-of v2, v0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    if-eqz v2, :cond_12

    .line 998
    const/16 v24, 0x1

    move-object/from16 v28, v31

    .line 999
    check-cast v28, Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    .line 1000
    .local v28, "leURLSpan":Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mUrlSelected:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v27

    move/from16 v0, v37

    if-ne v0, v2, :cond_11

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v2}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->updateDrawState(Lcom/letv/leui/text/LeTextPaint;Z)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v39, v2, v27

    move/from16 v34, v39

    .line 1002
    .local v34, "spanStart":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v38, v2, v27

    move/from16 v33, v38

    .line 1003
    .local v33, "spanEnd":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v11

    move/from16 v0, v34

    if-gt v2, v0, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v12

    move/from16 v0, v34

    if-lt v2, v0, :cond_f

    .line 1004
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v0, v34

    if-gt v2, v0, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    add-int/2addr v2, v4

    move/from16 v0, v34

    if-ge v0, v2, :cond_f

    .line 1005
    const/16 v26, 0x1

    .line 1008
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v11

    move/from16 v0, v33

    if-gt v2, v0, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v12

    move/from16 v0, v33

    if-lt v2, v0, :cond_10

    .line 1009
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v0, v33

    if-ge v2, v0, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    add-int/2addr v2, v4

    move/from16 v0, v33

    if-gt v0, v2, :cond_10

    .line 1010
    const/16 v25, 0x1

    .line 1013
    :cond_10
    move-object/from16 v0, v28

    iget v0, v0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->extraPaddingEnd:F

    move/from16 v36, v0

    .line 1014
    move-object/from16 v0, v28

    iget v0, v0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->extraPaddingEnd:F

    move/from16 v35, v0

    goto/16 :goto_7

    .line 1000
    .end local v33    # "spanEnd":I
    .end local v34    # "spanStart":I
    :cond_11
    const/4 v2, 0x0

    goto :goto_8

    .line 1016
    .end local v28    # "leURLSpan":Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    :cond_12
    const/16 v24, 0x0

    .line 1017
    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto/16 :goto_7

    .line 1023
    .end local v31    # "span":Landroid/text/style/CharacterStyle;
    :cond_13
    if-eqz v24, :cond_16

    .line 1024
    if-eqz v26, :cond_14

    .line 1025
    if-eqz p4, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mUrlPadding:I

    neg-int v2, v2

    int-to-float v2, v2

    sub-float v2, v2, v36

    :goto_9
    add-float p6, p6, v2

    .line 1028
    :cond_14
    if-nez p11, :cond_15

    move/from16 v0, p2

    if-ge v12, v0, :cond_1b

    :cond_15
    const/16 v22, 0x1

    :goto_a
    move-object/from16 v9, p0

    move-object v10, v8

    move/from16 v14, v23

    move/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    move/from16 v20, p9

    move-object/from16 v21, p10

    .line 1027
    invoke-direct/range {v9 .. v22}, Landroid/text/TextLine;->handleUnderline(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    .line 1033
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    if-ge v12, v2, :cond_17

    .line 1034
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/letv/leui/text/LeTextPaint;->setHyphenEdit(I)V

    .line 1037
    :cond_17
    if-nez p11, :cond_18

    move/from16 v0, p2

    if-ge v12, v0, :cond_1c

    :cond_18
    const/16 v22, 0x1

    :goto_b
    move-object/from16 v9, p0

    move-object v10, v8

    move/from16 v14, v23

    move/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    move/from16 v20, p9

    move-object/from16 v21, p10

    .line 1036
    invoke-direct/range {v9 .. v22}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float p6, p6, v2

    .line 1041
    if-eqz v24, :cond_19

    if-eqz v25, :cond_19

    move/from16 v0, p2

    if-ge v12, v0, :cond_19

    .line 1042
    if-eqz p4, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mUrlPadding:I

    neg-int v2, v2

    int-to-float v2, v2

    sub-float v2, v2, v35

    :goto_c
    add-float p6, p6, v2

    .line 978
    :cond_19
    move v11, v12

    goto/16 :goto_5

    .line 1025
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mUrlPadding:I

    int-to-float v2, v2

    add-float v2, v2, v36

    goto :goto_9

    .line 1028
    :cond_1b
    const/16 v22, 0x0

    goto :goto_a

    .line 1037
    :cond_1c
    const/16 v22, 0x0

    goto :goto_b

    .line 1042
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mUrlPadding:I

    int-to-float v2, v2

    add-float v2, v2, v35

    goto :goto_c

    .line 1048
    .end local v5    # "mlimit":I
    .end local v8    # "wp":Lcom/letv/leui/text/LeTextPaint;
    .end local v11    # "j":I
    .end local v12    # "jnext":I
    .end local v23    # "inext":I
    .end local v24    # "isHandleLeURLSpan":Z
    .end local v25    # "isUrlEndline":Z
    .end local v26    # "isUrlStartline":Z
    .end local v27    # "k":I
    .end local v35    # "urlExtraPaddingEnd":F
    .end local v36    # "urlExtraPaddingStart":F
    .end local v38    # "urlSpanEnd":I
    .end local v39    # "urlSpanStart":I
    :cond_1e
    sub-float v2, p6, v29

    return v2
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 21
    .param p1, "wp"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "runIsRtl"    # Z
    .param p7, "c"    # Landroid/graphics/Canvas;
    .param p8, "x"    # F
    .param p9, "top"    # I
    .param p10, "y"    # I
    .param p11, "bottom"    # I
    .param p12, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p13, "needWidth"    # Z

    .prologue
    .line 745
    if-eqz p12, :cond_0

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p12

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Ljava/lang/CharSequence;)V

    .line 750
    :cond_0
    sub-int v20, p3, p2

    .line 752
    .local v20, "runLen":I
    if-nez v20, :cond_1

    .line 753
    const/4 v2, 0x0

    return v2

    .line 756
    :cond_1
    const/16 v19, 0x0

    .line 758
    .local v19, "ret":F
    if-nez p13, :cond_2

    if-eqz p7, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-nez v2, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v2, :cond_9

    .line 759
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_a

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Landroid/text/TextPaint;->getRunAdvance([CIIIIZI)F

    move-result v19

    .line 769
    :cond_3
    :goto_1
    if-eqz p7, :cond_7

    .line 770
    if-eqz p6, :cond_4

    .line 771
    sub-float p8, p8, v19

    .line 774
    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-eqz v2, :cond_5

    .line 775
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v17

    .line 776
    .local v17, "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v18

    .line 778
    .local v18, "previousStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 779
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 780
    move/from16 v0, p9

    int-to-float v4, v0

    add-float v5, p8, v19

    move/from16 v0, p11

    int-to-float v6, v0

    move-object/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 782
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 783
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 786
    .end local v17    # "previousColor":I
    .end local v18    # "previousStyle":Landroid/graphics/Paint$Style;
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v2, :cond_6

    .line 788
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v2, v2, p10

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    const v5, 0x3de38e39

    mul-float/2addr v3, v5

    add-float v4, v2, v3

    .line 790
    .local v4, "underlineTop":F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v17

    .line 791
    .restart local v17    # "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v18

    .line 792
    .restart local v18    # "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v16

    .line 794
    .local v16, "previousAntiAlias":Z
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 795
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 797
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 798
    add-float v5, p8, v19

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineThickness:F

    add-float v6, v4, v2

    move-object/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 800
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 801
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 802
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 806
    .end local v4    # "underlineTop":F
    .end local v16    # "previousAntiAlias":Z
    .end local v17    # "previousColor":I
    .end local v18    # "previousStyle":Landroid/graphics/Paint$Style;
    :cond_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v14, p10, v2

    move-object/from16 v5, p0

    move-object/from16 v6, p7

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p8

    .line 805
    invoke-direct/range {v5 .. v14}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    .line 809
    :cond_7
    if-eqz p6, :cond_8

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    .end local v19    # "ret":F
    :cond_8
    return v19

    .line 758
    .restart local v19    # "ret":F
    :cond_9
    if-eqz p6, :cond_3

    goto/16 :goto_0

    .line 763
    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/TextLine;->mStart:I

    .line 764
    .local v15, "delta":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v4, v15, p2

    add-int v5, v15, p3

    .line 765
    add-int v6, v15, p4

    add-int v7, v15, p5

    add-int v9, v15, p3

    move-object/from16 v2, p1

    move/from16 v8, p6

    .line 764
    invoke-virtual/range {v2 .. v9}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v19

    goto/16 :goto_1
.end method

.method private handleUnderline(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 25
    .param p1, "wp"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "runIsRtl"    # Z
    .param p7, "c"    # Landroid/graphics/Canvas;
    .param p8, "x"    # F
    .param p9, "top"    # I
    .param p10, "y"    # I
    .param p11, "bottom"    # I
    .param p12, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p13, "needWidth"    # Z

    .prologue
    .line 1179
    if-eqz p12, :cond_0

    .line 1180
    move-object/from16 v0, p12

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1183
    :cond_0
    sub-int v19, p3, p2

    .line 1185
    .local v19, "runLen":I
    if-nez v19, :cond_1

    .line 1186
    const/4 v2, 0x0

    return v2

    .line 1189
    :cond_1
    const/16 v18, 0x0

    .line 1191
    .local v18, "ret":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mWidths:[F

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mWidths:[F

    array-length v2, v2

    move/from16 v0, v19

    if-ge v2, v0, :cond_3

    .line 1192
    :cond_2
    invoke-static/range {v19 .. v19}, Landroid/text/TextLine;->idealFloatArraySize(I)I

    move-result v2

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/TextLine;->mWidths:[F

    .line 1195
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Landroid/text/TextLine;->mStart:I

    .line 1196
    .local v11, "delta":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v4, v11, p2

    .line 1197
    add-int v5, v11, p3

    add-int v6, v11, p4

    add-int v7, v11, p5

    .line 1198
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/TextLine;->mWidths:[F

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move/from16 v8, p6

    .line 1196
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances(Ljava/lang/CharSequence;IIIIZ[FI)F

    move-result v18

    .line 1200
    if-eqz p7, :cond_f

    .line 1201
    if-eqz p6, :cond_4

    .line 1202
    sub-float p8, p8, v18

    .line 1205
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v20

    .line 1206
    .local v20, "textSize":F
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v2, v2, p10

    int-to-float v2, v2

    const v3, 0x3de38e39

    mul-float v3, v3, v20

    add-float v4, v2, v3

    .line 1207
    .local v4, "underlineTop":F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v16

    .line 1208
    .local v16, "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v17

    .line 1209
    .local v17, "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v15

    .line 1210
    .local v15, "previousAntiAlias":Z
    const v2, 0x3d638e39

    mul-float v21, v2, v20

    .line 1211
    .local v21, "underlineThickness":F
    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v13, v2, v20

    .line 1212
    .local v13, "offsetQP":F
    const v2, 0x3eaaaaab

    mul-float v14, v2, v20

    .line 1213
    .local v14, "offsetY":F
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1214
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mWidths:[F

    move-object/from16 v23, v0

    .line 1217
    .local v23, "widths":[F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v12, v0, :cond_e

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v3, v11, p2

    add-int/2addr v3, v12

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v24

    .line 1219
    .local v24, "word":C
    aget v22, v23, v12

    .line 1221
    .local v22, "width":F
    const/16 v2, 0x71

    move/from16 v0, v24

    if-ne v0, v2, :cond_6

    .line 1222
    sub-float v22, v22, v13

    .line 1233
    :cond_5
    :goto_1
    add-float v5, p8, v22

    add-float v6, v4, v21

    move-object/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1234
    const/16 v2, 0x71

    move/from16 v0, v24

    if-ne v0, v2, :cond_b

    .line 1235
    aget v2, v23, v12

    add-float p8, p8, v2

    .line 1217
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1223
    :cond_6
    const/16 v2, 0x70

    move/from16 v0, v24

    if-ne v0, v2, :cond_7

    .line 1224
    add-float p8, p8, v13

    .line 1225
    sub-float v22, v22, v13

    goto :goto_1

    .line 1226
    :cond_7
    const/16 v2, 0x79

    move/from16 v0, v24

    if-ne v0, v2, :cond_8

    .line 1227
    add-float p8, p8, v14

    .line 1228
    sub-float v22, v22, v14

    goto :goto_1

    .line 1229
    :cond_8
    const/16 v2, 0x67

    move/from16 v0, v24

    if-eq v0, v2, :cond_9

    const/16 v2, 0x40

    move/from16 v0, v24

    if-ne v0, v2, :cond_a

    .line 1230
    :cond_9
    :goto_3
    add-float p8, p8, v22

    .line 1231
    goto :goto_2

    .line 1229
    :cond_a
    const/16 v2, 0x6a

    move/from16 v0, v24

    if-ne v0, v2, :cond_5

    goto :goto_3

    .line 1236
    :cond_b
    const/16 v2, 0x70

    move/from16 v0, v24

    if-ne v0, v2, :cond_c

    .line 1237
    aget v2, v23, v12

    sub-float/2addr v2, v13

    add-float p8, p8, v2

    goto :goto_2

    .line 1238
    :cond_c
    const/16 v2, 0x79

    move/from16 v0, v24

    if-ne v0, v2, :cond_d

    .line 1239
    aget v2, v23, v12

    sub-float/2addr v2, v14

    add-float p8, p8, v2

    .line 1240
    sub-float v22, v22, v14

    goto :goto_2

    .line 1242
    :cond_d
    aget v2, v23, v12

    add-float p8, p8, v2

    goto :goto_2

    .line 1246
    .end local v22    # "width":F
    .end local v24    # "word":C
    :cond_e
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1247
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1248
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1251
    .end local v4    # "underlineTop":F
    .end local v12    # "i":I
    .end local v13    # "offsetQP":F
    .end local v14    # "offsetY":F
    .end local v15    # "previousAntiAlias":Z
    .end local v16    # "previousColor":I
    .end local v17    # "previousStyle":Landroid/graphics/Paint$Style;
    .end local v20    # "textSize":F
    .end local v21    # "underlineThickness":F
    .end local v23    # "widths":[F
    :cond_f
    if-eqz p6, :cond_10

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    .end local v18    # "ret":F
    :cond_10
    return v18
.end method

.method public static idealByteArraySize(I)I
    .locals 3
    .param p0, "need"    # I

    .prologue
    const/4 v2, 0x1

    .line 1258
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 1259
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_0

    .line 1260
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    return v1

    .line 1258
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1262
    :cond_1
    return p0
.end method

.method public static idealFloatArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 1269
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/text/TextLine;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 12
    .param p1, "start"    # I
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 425
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method static obtain()Landroid/text/TextLine;
    .locals 5

    .prologue
    .line 84
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v3

    .line 85
    :try_start_0
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v0, v2

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 86
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 87
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v2, v0

    .line 88
    .local v1, "tl":Landroid/text/TextLine;
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 89
    return-object v1

    .end local v1    # "tl":Landroid/text/TextLine;
    :cond_1
    monitor-exit v3

    .line 93
    new-instance v1, Landroid/text/TextLine;

    invoke-direct {v1}, Landroid/text/TextLine;-><init>()V

    .line 97
    .restart local v1    # "tl":Landroid/text/TextLine;
    return-object v1

    .line 84
    .end local v1    # "tl":Landroid/text/TextLine;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 4
    .param p0, "tl"    # Landroid/text/TextLine;

    .prologue
    const/4 v3, 0x0

    .line 108
    iput-object v3, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 109
    iput-object v3, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 110
    iput-object v3, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 111
    iput-object v3, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 112
    iput-object v3, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 113
    iput-object v3, p0, Landroid/text/TextLine;->mChars:[C

    .line 115
    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 116
    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 117
    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 119
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v2

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 121
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 122
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 127
    return-object v3

    .line 120
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "previousTop"    # I
    .param p2, "previousAscent"    # I
    .param p3, "previousDescent"    # I
    .param p4, "previousBottom"    # I
    .param p5, "previousLeading"    # I

    .prologue
    .line 714
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 715
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 716
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 717
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 718
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 713
    return-void
.end method


# virtual methods
.method ascent(I)F
    .locals 7
    .param p1, "pos"    # I

    .prologue
    const/4 v3, 0x0

    .line 1092
    iget-object v4, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v4, :cond_0

    .line 1093
    iget-object v3, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    return v3

    .line 1096
    :cond_0
    iget v4, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr p1, v4

    .line 1097
    iget-object v4, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    add-int/lit8 v5, p1, 0x1

    const-class v6, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v4, p1, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    .line 1098
    .local v1, "spans":[Landroid/text/style/MetricAffectingSpan;
    array-length v4, v1

    if-nez v4, :cond_1

    .line 1099
    iget-object v3, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    return v3

    .line 1102
    :cond_1
    iget-object v2, p0, Landroid/text/TextLine;->mWorkPaint:Lcom/letv/leui/text/LeTextPaint;

    .line 1103
    .local v2, "wp":Landroid/text/TextPaint;
    iget-object v4, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1104
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 1105
    .local v0, "span":Landroid/text/style/MetricAffectingSpan;
    invoke-virtual {v0, v2}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 1104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1107
    .end local v0    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_2
    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    return v3
.end method

.method draw(Landroid/graphics/Canvas;FIII)V
    .locals 25
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "top"    # I
    .param p4, "y"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v2, :cond_1

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v2, v3, :cond_0

    .line 204
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 205
    return-void

    .line 207
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v2, v3, :cond_1

    .line 208
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 209
    return-void

    .line 213
    :cond_1
    const/16 v17, 0x0

    .line 214
    .local v17, "h":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v22, v0

    .line 215
    .local v22, "runs":[I
    const/16 v16, 0x0

    .line 217
    .local v16, "emojiRect":Landroid/graphics/RectF;
    move-object/from16 v0, v22

    array-length v2, v0

    add-int/lit8 v19, v2, -0x2

    .line 218
    .local v19, "lastRunIndex":I
    const/16 v18, 0x0

    .end local v16    # "emojiRect":Landroid/graphics/RectF;
    .local v18, "i":I
    :goto_0
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_10

    .line 219
    aget v21, v22, v18

    .line 220
    .local v21, "runStart":I
    add-int/lit8 v2, v18, 0x1

    aget v2, v22, v2

    const v3, 0x3ffffff

    and-int/2addr v2, v3

    add-int v20, v21, v2

    .line 221
    .local v20, "runLimit":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v0, v20

    if-le v0, v2, :cond_2

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v20, v0

    .line 224
    :cond_2
    add-int/lit8 v2, v18, 0x1

    aget v2, v22, v2

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_8

    const/4 v6, 0x1

    .line 226
    .local v6, "runIsRtl":Z
    :goto_1
    move/from16 v4, v21

    .line 227
    .local v4, "segstart":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_9

    move/from16 v5, v21

    .local v5, "j":I
    :goto_2
    move/from16 v0, v20

    if-gt v5, v0, :cond_f

    .line 228
    const/4 v15, 0x0

    .line 229
    .local v15, "codept":I
    const/4 v13, 0x0

    .line 231
    .local v13, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_3

    move/from16 v0, v20

    if-ge v5, v0, :cond_3

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v15, v2, v5

    .line 233
    const v2, 0xd800

    if-lt v15, v2, :cond_3

    const v2, 0xdc00

    if-ge v15, v2, :cond_3

    add-int/lit8 v2, v5, 0x1

    move/from16 v0, v20

    if-ge v2, v0, :cond_3

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v2, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v15

    .line 235
    sget v2, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v15, v2, :cond_a

    sget v2, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v15, v2, :cond_a

    .line 236
    sget-object v2, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v2, v15}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 244
    .end local v13    # "bm":Landroid/graphics/Bitmap;
    :cond_3
    move/from16 v0, v20

    if-eq v5, v0, :cond_4

    const/16 v2, 0x9

    if-ne v15, v2, :cond_b

    .line 245
    :cond_4
    :goto_3
    add-float v7, p2, v17

    .line 246
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    if-eq v5, v2, :cond_c

    :cond_5
    const/4 v11, 0x1

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 245
    invoke-direct/range {v2 .. v11}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v2

    add-float v17, v17, v2

    .line 248
    const/16 v2, 0x9

    if-ne v15, v2, :cond_d

    .line 249
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    move-result v3

    mul-float v17, v2, v3

    .line 265
    :cond_6
    :goto_5
    add-int/lit8 v4, v5, 0x1

    .line 227
    :cond_7
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 224
    .end local v4    # "segstart":I
    .end local v5    # "j":I
    .end local v6    # "runIsRtl":Z
    .end local v15    # "codept":I
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "runIsRtl":Z
    goto/16 :goto_1

    .line 227
    .restart local v4    # "segstart":I
    :cond_9
    move/from16 v5, v20

    .restart local v5    # "j":I
    goto/16 :goto_2

    .line 237
    .restart local v13    # "bm":Landroid/graphics/Bitmap;
    .restart local v15    # "codept":I
    :cond_a
    const v2, 0xffff

    if-le v15, v2, :cond_3

    .line 238
    add-int/lit8 v5, v5, 0x1

    .line 239
    goto :goto_6

    .line 244
    .end local v13    # "bm":Landroid/graphics/Bitmap;
    :cond_b
    if-eqz v13, :cond_7

    goto :goto_3

    .line 246
    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    .line 250
    :cond_d
    if-eqz v13, :cond_6

    .line 251
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->ascent(I)F

    move-result v14

    .line 252
    .local v14, "bmAscent":F
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v12, v2

    .line 253
    .local v12, "bitmapHeight":F
    neg-float v2, v14

    div-float v23, v2, v12

    .line 254
    .local v23, "scale":F
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v24, v2, v23

    .line 256
    .local v24, "width":F
    if-nez v16, :cond_e

    .line 257
    new-instance v16, Landroid/graphics/RectF;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/RectF;-><init>()V

    .line 259
    :cond_e
    add-float v2, p2, v17

    move/from16 v0, p4

    int-to-float v3, v0

    add-float/2addr v3, v14

    .line 260
    add-float v7, p2, v17

    add-float v7, v7, v24

    move/from16 v0, p4

    int-to-float v8, v0

    .line 259
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 262
    add-float v17, v17, v24

    .line 263
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 218
    .end local v12    # "bitmapHeight":F
    .end local v14    # "bmAscent":F
    .end local v15    # "codept":I
    .end local v23    # "scale":F
    .end local v24    # "width":F
    :cond_f
    add-int/lit8 v18, v18, 0x2

    goto/16 :goto_0

    .line 201
    .end local v4    # "segstart":I
    .end local v5    # "j":I
    .end local v6    # "runIsRtl":Z
    .end local v20    # "runLimit":I
    .end local v21    # "runStart":I
    :cond_10
    return-void
.end method

.method getOffsetToLeftRightOf(IZ)I
    .locals 28
    .param p1, "cursor"    # I
    .param p2, "toLeft"    # Z

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v16, v0

    .line 460
    .local v16, "lineEnd":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    const/16 v19, 0x1

    .line 461
    .local v19, "paraIsRtl":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v26, v0

    .line 463
    .local v26, "runs":[I
    const/16 v25, 0x0

    .line 458
    .local v25, "runLevel":I
    const/4 v4, 0x0

    .line 463
    .local v4, "runStart":I
    move/from16 v5, v16

    .local v5, "runLimit":I
    const/16 v17, -0x1

    .line 464
    .local v17, "newCaret":I
    const/16 v27, 0x0

    .line 466
    .local v27, "trailing":Z
    if-nez p1, :cond_3

    .line 467
    const/4 v3, -0x2

    .line 545
    .local v3, "runIndex":I
    :cond_0
    :goto_1
    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    const/4 v8, 0x1

    .line 546
    .local v8, "advance":Z
    :goto_2
    if-eqz v8, :cond_10

    const/4 v2, 0x2

    :goto_3
    add-int v10, v3, v2

    .line 547
    .local v10, "otherRunIndex":I
    if-ltz v10, :cond_18

    move-object/from16 v0, v26

    array-length v2, v0

    if-ge v10, v2, :cond_18

    .line 548
    aget v2, v26, v10

    add-int/lit8 v11, v2, 0x0

    .line 550
    .local v11, "otherRunStart":I
    add-int/lit8 v2, v10, 0x1

    aget v2, v26, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    .line 549
    add-int v12, v11, v2

    .line 551
    .local v12, "otherRunLimit":I
    move/from16 v0, v16

    if-le v12, v0, :cond_1

    .line 552
    move/from16 v12, v16

    .line 554
    :cond_1
    add-int/lit8 v2, v10, 0x1

    aget v2, v26, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v18, v2, 0x3f

    .line 556
    .local v18, "otherRunLevel":I
    and-int/lit8 v2, v18, 0x1

    if-eqz v2, :cond_11

    const/4 v13, 0x1

    .line 558
    .local v13, "otherRunIsRtl":Z
    :goto_4
    move/from16 v0, p2

    if-ne v0, v13, :cond_12

    const/4 v8, 0x1

    .line 559
    :goto_5
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_15

    .line 562
    if-eqz v8, :cond_13

    move v14, v11

    :goto_6
    move-object/from16 v9, p0

    move v15, v8

    .line 560
    invoke-direct/range {v9 .. v15}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v17

    .line 563
    if-eqz v8, :cond_14

    .end local v12    # "otherRunLimit":I
    :goto_7
    move/from16 v0, v17

    if-ne v0, v12, :cond_16

    .line 566
    move v3, v10

    .line 567
    move/from16 v25, v18

    .line 568
    goto :goto_1

    .line 460
    .end local v3    # "runIndex":I
    .end local v4    # "runStart":I
    .end local v5    # "runLimit":I
    .end local v8    # "advance":Z
    .end local v10    # "otherRunIndex":I
    .end local v11    # "otherRunStart":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v17    # "newCaret":I
    .end local v18    # "otherRunLevel":I
    .end local v19    # "paraIsRtl":Z
    .end local v25    # "runLevel":I
    .end local v26    # "runs":[I
    .end local v27    # "trailing":Z
    :cond_2
    const/16 v19, 0x0

    .restart local v19    # "paraIsRtl":Z
    goto :goto_0

    .line 468
    .restart local v4    # "runStart":I
    .restart local v5    # "runLimit":I
    .restart local v17    # "newCaret":I
    .restart local v25    # "runLevel":I
    .restart local v26    # "runs":[I
    .restart local v27    # "trailing":Z
    :cond_3
    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 469
    move-object/from16 v0, v26

    array-length v3, v0

    .restart local v3    # "runIndex":I
    goto :goto_1

    .line 473
    .end local v3    # "runIndex":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "runIndex":I
    :goto_8
    move-object/from16 v0, v26

    array-length v2, v0

    if-ge v3, v2, :cond_7

    .line 474
    aget v2, v26, v3

    add-int/lit8 v4, v2, 0x0

    .line 475
    move/from16 v0, p1

    if-lt v0, v4, :cond_a

    .line 476
    add-int/lit8 v2, v3, 0x1

    aget v2, v26, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v5, v4, v2

    .line 477
    move/from16 v0, v16

    if-le v5, v0, :cond_5

    .line 478
    move/from16 v5, v16

    .line 480
    :cond_5
    move/from16 v0, p1

    if-ge v0, v5, :cond_a

    .line 481
    add-int/lit8 v2, v3, 0x1

    aget v2, v26, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v25, v2, 0x3f

    .line 483
    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 488
    add-int/lit8 v20, p1, -0x1

    .line 489
    .local v20, "pos":I
    const/16 v21, 0x0

    .local v21, "prevRunIndex":I
    :goto_9
    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_7

    .line 490
    aget v2, v26, v21

    add-int/lit8 v24, v2, 0x0

    .line 491
    .local v24, "prevRunStart":I
    move/from16 v0, v20

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    .line 493
    add-int/lit8 v2, v21, 0x1

    aget v2, v26, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    .line 492
    add-int v23, v24, v2

    .line 494
    .local v23, "prevRunLimit":I
    move/from16 v0, v23

    move/from16 v1, v16

    if-le v0, v1, :cond_6

    .line 495
    move/from16 v23, v16

    .line 497
    :cond_6
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 498
    add-int/lit8 v2, v21, 0x1

    aget v2, v26, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v22, v2, 0x3f

    .line 500
    .local v22, "prevRunLevel":I
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 502
    move/from16 v3, v21

    .line 503
    move/from16 v25, v22

    .line 504
    move/from16 v4, v24

    .line 505
    move/from16 v5, v23

    .line 506
    const/16 v27, 0x1

    .line 523
    .end local v20    # "pos":I
    .end local v21    # "prevRunIndex":I
    .end local v22    # "prevRunLevel":I
    .end local v23    # "prevRunLimit":I
    .end local v24    # "prevRunStart":I
    :cond_7
    move-object/from16 v0, v26

    array-length v2, v0

    if-eq v3, v2, :cond_0

    .line 524
    and-int/lit8 v2, v25, 0x1

    if-eqz v2, :cond_b

    const/4 v6, 0x1

    .line 525
    .local v6, "runIsRtl":Z
    :goto_a
    move/from16 v0, p2

    if-ne v0, v6, :cond_c

    const/4 v8, 0x1

    .line 526
    .restart local v8    # "advance":Z
    :goto_b
    if-eqz v8, :cond_d

    move v2, v5

    :goto_c
    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    move/from16 v0, v27

    if-eq v8, v0, :cond_0

    :cond_8
    move-object/from16 v2, p0

    move/from16 v7, p1

    .line 528
    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v17

    .line 532
    if-eqz v8, :cond_e

    move v2, v5

    :goto_d
    move/from16 v0, v17

    if-eq v0, v2, :cond_0

    .line 533
    return v17

    .line 489
    .end local v6    # "runIsRtl":Z
    .end local v8    # "advance":Z
    .restart local v20    # "pos":I
    .restart local v21    # "prevRunIndex":I
    .restart local v24    # "prevRunStart":I
    :cond_9
    add-int/lit8 v21, v21, 0x2

    goto :goto_9

    .line 473
    .end local v20    # "pos":I
    .end local v21    # "prevRunIndex":I
    .end local v24    # "prevRunStart":I
    :cond_a
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_8

    .line 524
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "runIsRtl":Z
    goto :goto_a

    .line 525
    :cond_c
    const/4 v8, 0x0

    .restart local v8    # "advance":Z
    goto :goto_b

    :cond_d
    move v2, v4

    .line 526
    goto :goto_c

    :cond_e
    move v2, v4

    .line 532
    goto :goto_d

    .line 545
    .end local v6    # "runIsRtl":Z
    .end local v8    # "advance":Z
    :cond_f
    const/4 v8, 0x0

    .restart local v8    # "advance":Z
    goto/16 :goto_2

    .line 546
    :cond_10
    const/4 v2, -0x2

    goto/16 :goto_3

    .line 556
    .restart local v10    # "otherRunIndex":I
    .restart local v11    # "otherRunStart":I
    .restart local v12    # "otherRunLimit":I
    .restart local v18    # "otherRunLevel":I
    :cond_11
    const/4 v13, 0x0

    .restart local v13    # "otherRunIsRtl":Z
    goto/16 :goto_4

    .line 558
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_13
    move v14, v12

    .line 562
    goto/16 :goto_6

    :cond_14
    move v12, v11

    .line 563
    goto/16 :goto_7

    .line 574
    :cond_15
    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_16

    .line 576
    if-eqz v8, :cond_17

    move/from16 v17, v11

    .line 603
    .end local v11    # "otherRunStart":I
    .end local v12    # "otherRunLimit":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v18    # "otherRunLevel":I
    :cond_16
    :goto_e
    return v17

    .line 576
    .restart local v11    # "otherRunStart":I
    .restart local v12    # "otherRunLimit":I
    .restart local v13    # "otherRunIsRtl":Z
    .restart local v18    # "otherRunLevel":I
    :cond_17
    move/from16 v17, v12

    goto :goto_e

    .line 581
    .end local v11    # "otherRunStart":I
    .end local v12    # "otherRunLimit":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v18    # "otherRunLevel":I
    :cond_18
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_1a

    .line 585
    if-eqz v8, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v17, v2, 0x1

    goto :goto_e

    :cond_19
    const/16 v17, -0x1

    goto :goto_e

    .line 597
    :cond_1a
    move/from16 v0, v17

    move/from16 v1, v16

    if-gt v0, v1, :cond_16

    .line 598
    if-eqz v8, :cond_1b

    move/from16 v17, v16

    goto :goto_e

    .line 458
    :cond_1b
    const/16 v17, 0x0

    .line 598
    goto :goto_e
.end method

.method public getUrlPadding()I
    .locals 1

    .prologue
    .line 1135
    iget v0, p0, Landroid/text/TextLine;->mUrlPadding:I

    return v0
.end method

.method public getUrlSelectColor()I
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Lcom/letv/leui/text/LeTextPaint;

    iget v0, v0, Lcom/letv/leui/text/LeTextPaint;->linkSelectedColor:I

    return v0
.end method

.method public isUrlSelected()Z
    .locals 1

    .prologue
    .line 1149
    iget-boolean v0, p0, Landroid/text/TextLine;->mUrlSelected:Z

    return v0
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 21
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 295
    if-eqz p2, :cond_0

    add-int/lit8 v18, p1, -0x1

    .line 296
    .local v18, "target":I
    :goto_0
    if-gez v18, :cond_1

    .line 297
    const/4 v1, 0x0

    return v1

    .line 295
    .end local v18    # "target":I
    :cond_0
    move/from16 v18, p1

    .restart local v18    # "target":I
    goto :goto_0

    .line 300
    :cond_1
    const/4 v12, 0x0

    .line 302
    .local v12, "h":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_3

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_2

    .line 304
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    return v1

    .line 306
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_3

    .line 307
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    return v1

    .line 311
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mChars:[C

    .line 312
    .local v10, "chars":[C
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v1, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v17, v0

    .line 313
    .local v17, "runs":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v13, v1, :cond_16

    .line 314
    aget v16, v17, v13

    .line 315
    .local v16, "runStart":I
    add-int/lit8 v1, v13, 0x1

    aget v1, v17, v1

    const v3, 0x3ffffff

    and-int/2addr v1, v3

    add-int v15, v16, v1

    .line 316
    .local v15, "runLimit":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-le v15, v1, :cond_4

    .line 317
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/TextLine;->mLen:I

    .line 319
    :cond_4
    add-int/lit8 v1, v13, 0x1

    aget v1, v17, v1

    const/high16 v3, 0x4000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_7

    const/4 v5, 0x1

    .line 321
    .local v5, "runIsRtl":Z
    :goto_2
    move/from16 v2, v16

    .line 322
    .local v2, "segstart":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_8

    move/from16 v4, v16

    .local v4, "j":I
    :goto_3
    if-gt v4, v15, :cond_15

    .line 323
    const/4 v11, 0x0

    .line 324
    .local v11, "codept":I
    const/4 v8, 0x0

    .line 326
    .local v8, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_5

    if-ge v4, v15, :cond_5

    .line 327
    aget-char v11, v10, v4

    .line 328
    const v1, 0xd800

    if-lt v11, v1, :cond_5

    const v1, 0xdc00

    if-ge v11, v1, :cond_5

    add-int/lit8 v1, v4, 0x1

    if-ge v1, v15, :cond_5

    .line 329
    invoke-static {v10, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v11

    .line 330
    sget v1, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v11, v1, :cond_9

    sget v1, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v11, v1, :cond_9

    .line 331
    sget-object v1, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v1, v11}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 339
    .end local v8    # "bm":Landroid/graphics/Bitmap;
    :cond_5
    if-eq v4, v15, :cond_6

    const/16 v1, 0x9

    if-ne v11, v1, :cond_b

    .line 340
    :cond_6
    :goto_4
    move/from16 v0, v18

    if-lt v0, v2, :cond_c

    move/from16 v0, v18

    if-ge v0, v4, :cond_c

    const/4 v14, 0x1

    .line 342
    .local v14, "inSegment":Z
    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_d

    const/4 v1, 0x1

    :goto_6
    if-ne v1, v5, :cond_e

    const/4 v7, 0x1

    .line 343
    .local v7, "advance":Z
    :goto_7
    if-eqz v14, :cond_f

    if-eqz v7, :cond_f

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    .line 344
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v12, v1

    return v12

    .line 319
    .end local v2    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v7    # "advance":Z
    .end local v11    # "codept":I
    .end local v14    # "inSegment":Z
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "runIsRtl":Z
    goto :goto_2

    .line 322
    .restart local v2    # "segstart":I
    :cond_8
    move v4, v15

    .restart local v4    # "j":I
    goto :goto_3

    .line 332
    .restart local v8    # "bm":Landroid/graphics/Bitmap;
    .restart local v11    # "codept":I
    :cond_9
    const v1, 0xffff

    if-le v11, v1, :cond_5

    .line 333
    add-int/lit8 v4, v4, 0x1

    .line 322
    .end local v8    # "bm":Landroid/graphics/Bitmap;
    :cond_a
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 339
    :cond_b
    if-eqz v8, :cond_a

    goto :goto_4

    .line 340
    :cond_c
    const/4 v14, 0x0

    .restart local v14    # "inSegment":Z
    goto :goto_5

    .line 342
    :cond_d
    const/4 v1, 0x0

    goto :goto_6

    :cond_e
    const/4 v7, 0x0

    .restart local v7    # "advance":Z
    goto :goto_7

    :cond_f
    move-object/from16 v1, p0

    move v3, v4

    move-object/from16 v6, p3

    .line 347
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v19

    .line 348
    .local v19, "w":F
    if-eqz v7, :cond_10

    .end local v19    # "w":F
    :goto_9
    add-float v12, v12, v19

    .line 350
    if-eqz v14, :cond_11

    .line 351
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v12, v1

    return v12

    .line 348
    .restart local v19    # "w":F
    :cond_10
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    goto :goto_9

    .line 354
    .end local v19    # "w":F
    :cond_11
    const/16 v1, 0x9

    if-ne v11, v1, :cond_13

    .line 355
    move/from16 v0, p1

    if-ne v0, v4, :cond_12

    .line 356
    return v12

    .line 358
    :cond_12
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    move-result v3

    mul-float v12, v1, v3

    .line 359
    move/from16 v0, v18

    if-ne v0, v4, :cond_13

    .line 360
    return v12

    .line 364
    :cond_13
    if-eqz v8, :cond_14

    .line 365
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/TextLine;->ascent(I)F

    move-result v9

    .line 366
    .local v9, "bmAscent":F
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    neg-float v3, v9

    mul-float/2addr v1, v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v20, v1, v3

    .line 367
    .local v20, "wid":F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    mul-float v1, v1, v20

    add-float/2addr v12, v1

    .line 368
    add-int/lit8 v4, v4, 0x1

    .line 371
    .end local v9    # "bmAscent":F
    .end local v20    # "wid":F
    :cond_14
    add-int/lit8 v2, v4, 0x1

    goto :goto_8

    .line 313
    .end local v7    # "advance":Z
    .end local v11    # "codept":I
    .end local v14    # "inSegment":Z
    :cond_15
    add-int/lit8 v13, v13, 0x2

    goto/16 :goto_1

    .line 376
    .end local v2    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v15    # "runLimit":I
    .end local v16    # "runStart":I
    :cond_16
    return v12
.end method

.method metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 278
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method nextTab(F)F
    .locals 1
    .param p1, "h"    # F

    .prologue
    .line 1117
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    return v0

    .line 1120
    :cond_0
    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v0

    return v0
.end method

.method set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .locals 9
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "dir"    # I
    .param p6, "directions"    # Landroid/text/Layout$Directions;
    .param p7, "hasTabs"    # Z
    .param p8, "tabStops"    # Landroid/text/Layout$TabStops;

    .prologue
    .line 144
    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 145
    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 146
    iput p3, p0, Landroid/text/TextLine;->mStart:I

    .line 147
    sub-int v7, p4, p3

    iput v7, p0, Landroid/text/TextLine;->mLen:I

    .line 148
    iput p5, p0, Landroid/text/TextLine;->mDir:I

    .line 149
    iput-object p6, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 150
    iget-object v7, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-nez v7, :cond_0

    .line 151
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Directions cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 153
    :cond_0
    move/from16 v0, p7

    iput-boolean v0, p0, Landroid/text/TextLine;->mHasTabs:Z

    .line 154
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 156
    const/4 v3, 0x0

    .line 157
    .local v3, "hasReplacement":Z
    instance-of v7, p2, Landroid/text/Spanned;

    if-eqz v7, :cond_1

    move-object v7, p2

    .line 158
    check-cast v7, Landroid/text/Spanned;

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 159
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v7, v8, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 160
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v7, :cond_5

    const/4 v3, 0x1

    .line 163
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-nez p7, :cond_2

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq p6, v7, :cond_6

    :cond_2
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    .line 165
    iget-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v7, :cond_8

    .line 166
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    array-length v7, v7

    iget v8, p0, Landroid/text/TextLine;->mLen:I

    if-ge v7, v8, :cond_4

    .line 167
    :cond_3
    iget v7, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v7

    iput-object v7, p0, Landroid/text/TextLine;->mChars:[C

    .line 169
    :cond_4
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    const/4 v8, 0x0

    invoke-static {p2, p3, p4, v7, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 170
    if-eqz v3, :cond_8

    .line 176
    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    .line 177
    .local v1, "chars":[C
    move v4, p3

    .local v4, "i":I
    :goto_2
    if-ge v4, p4, :cond_8

    .line 178
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v5

    .line 179
    .local v5, "inext":I
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, v5}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 181
    sub-int v7, v4, p3

    const v8, 0xfffc

    aput-char v8, v1, v7

    .line 182
    sub-int v7, v4, p3

    add-int/lit8 v6, v7, 0x1

    .local v6, "j":I
    sub-int v2, v5, p3

    .local v2, "e":I
    :goto_3
    if-ge v6, v2, :cond_7

    .line 183
    const v7, 0xfeff

    aput-char v7, v1, v6

    .line 182
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 160
    .end local v1    # "chars":[C
    .end local v2    # "e":I
    .end local v4    # "i":I
    .end local v5    # "inext":I
    .end local v6    # "j":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 163
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 177
    .restart local v1    # "chars":[C
    .restart local v4    # "i":I
    .restart local v5    # "inext":I
    :cond_7
    move v4, v5

    goto :goto_2

    .line 189
    .end local v1    # "chars":[C
    .end local v4    # "i":I
    .end local v5    # "inext":I
    :cond_8
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 143
    return-void
.end method

.method public setUrlPadding(I)V
    .locals 0
    .param p1, "urlPadding"    # I

    .prologue
    .line 1142
    iput p1, p0, Landroid/text/TextLine;->mUrlPadding:I

    .line 1141
    return-void
.end method

.method public setUrlSelectColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1163
    iget-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Lcom/letv/leui/text/LeTextPaint;

    iput p1, v0, Lcom/letv/leui/text/LeTextPaint;->linkSelectedColor:I

    .line 1162
    return-void
.end method

.method public setUrlSelected(Z)V
    .locals 0
    .param p1, "urlSelected"    # Z

    .prologue
    .line 1156
    iput-boolean p1, p0, Landroid/text/TextLine;->mUrlSelected:Z

    .line 1155
    return-void
.end method
