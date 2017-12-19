.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$Builder;,
        Landroid/text/StaticLayout$LineBreaks;
    }
.end annotation


# static fields
.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final COLUMNS_ELLIPSIZE:I = 0x6

.field private static final COLUMNS_NORMAL:I = 0x4

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x5

.field private static final ELLIPSIS_START:I = 0x4

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HYPHEN:I = 0x3

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mRightIndents:[I

.field private mTopPadding:I


# direct methods
.method static synthetic -wrap0(JJJIIZ)F
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "nativePaint"    # J
    .param p4, "nativeTypeface"    # J
    .param p6, "start"    # I
    .param p7, "end"    # I
    .param p8, "isRtl"    # Z

    .prologue
    invoke-static/range {p0 .. p8}, Landroid/text/StaticLayout;->nAddStyleRun(JJJIIZ)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()J
    .locals 2

    invoke-static {}, Landroid/text/StaticLayout;->nNewBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(JII[F)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddMeasuredRun(JII[F)V

    return-void
.end method

.method static synthetic -wrap3(JIIF)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "width"    # F

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddReplacementRun(JIIF)V

    return-void
.end method

.method static synthetic -wrap4(J)V
    .locals 0
    .param p0, "nativePtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFinishBuilder(J)V

    return-void
.end method

.method static synthetic -wrap5(J)V
    .locals 0
    .param p0, "nativePtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFreeBuilder(J)V

    return-void
.end method

.method static synthetic -wrap6(J[I)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "indents"    # [I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    return-void
.end method

.method static synthetic -wrap7(JLjava/lang/String;J)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "nativeHyphenator"    # J

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nSetLocale(JLjava/lang/String;J)V

    return-void
.end method

.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 8
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;

    .prologue
    .line 537
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 538
    iget-object v1, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 542
    :goto_0
    iget-object v2, p1, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iget v3, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iget-object v4, p1, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    iget v5, p1, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    iget v6, p1, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move-object v0, p0

    .line 537
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1391
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 544
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_2

    .line 545
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Layout$Ellipsizer;

    .line 547
    .local v7, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v7, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 548
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, v7, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 549
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, v7, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 550
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 552
    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 558
    .end local v7    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 559
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 560
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 562
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    .line 563
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    .line 565
    iget-boolean v0, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v1, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 536
    return-void

    .line 539
    :cond_0
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 540
    new-instance v1, Landroid/text/Layout$SpannedEllipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 541
    :cond_1
    new-instance v1, Landroid/text/Layout$Ellipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 554
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 555
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout;)V
    .locals 0
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;

    .prologue
    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 529
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1391
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 531
    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 532
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 533
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 528
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    .line 447
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 446
    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 445
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 469
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 470
    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    .line 468
    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 467
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    .line 459
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 458
    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 457
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    .line 482
    if-nez p11, :cond_0

    move-object v3, p1

    :goto_0
    move-object v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1391
    const v2, 0x7fffffff

    iput v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 489
    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p9

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v10

    .line 505
    .local v10, "b":Landroid/text/StaticLayout$Builder;
    if-eqz p11, :cond_2

    .line 506
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Landroid/text/Layout$Ellipsizer;

    .line 508
    .local v11, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v11, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 509
    move/from16 v0, p12

    iput v0, v11, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 510
    move-object/from16 v0, p11

    iput-object v0, v11, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 511
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 513
    const/4 v2, 0x6

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 519
    .end local v11    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v2, Landroid/text/Layout$Directions;

    iget v3, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Layout$Directions;

    iput-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 520
    iget-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 521
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 523
    iget-boolean v2, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v3, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, v10, v2, v3}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 525
    invoke-static {v10}, Landroid/text/StaticLayout$Builder;->-wrap0(Landroid/text/StaticLayout$Builder;)V

    .line 481
    return-void

    .line 484
    .end local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_0
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    .line 485
    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 486
    :cond_1
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 515
    .restart local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_2
    const/4 v2, 0x4

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 516
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 426
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 425
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 437
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 436
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 12
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .prologue
    .line 1066
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;->calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 1064
    return-void
.end method

.method private calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 21
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "lineStart"    # I
    .param p3, "lineEnd"    # I
    .param p4, "widths"    # [F
    .param p5, "widthStart"    # I
    .param p6, "avail"    # F
    .param p7, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p8, "line"    # I
    .param p9, "textWidth"    # F
    .param p10, "paint"    # Landroid/text/TextPaint;
    .param p11, "forceEllipsis"    # Z

    .prologue
    .line 1080
    cmpg-float v18, p9, p6

    if-gtz v18, :cond_0

    if-eqz p11, :cond_3

    .line 1088
    :cond_0
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1089
    sget-object v18, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    :goto_0
    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 1087
    move-object/from16 v0, p10

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 1090
    .local v6, "ellipsisWidth":F
    const/4 v5, 0x0

    .line 1091
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .line 1092
    .local v4, "ellipsisCount":I
    sub-int v11, p3, p2

    .line 1095
    .local v11, "len":I
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1096
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 1097
    const/16 v16, 0x0

    .line 1100
    .local v16, "sum":F
    move v7, v11

    .local v7, "i":I
    :goto_1
    if-lez v7, :cond_1

    .line 1101
    add-int/lit8 v18, v7, -0x1

    add-int v18, v18, p2

    sub-int v18, v18, p5

    aget v17, p4, v18

    .line 1103
    .local v17, "w":F
    add-float v18, v17, v16

    add-float v18, v18, v6

    cmpl-float v18, v18, p6

    if-lez v18, :cond_5

    .line 1104
    if-ge v7, v11, :cond_1

    add-int v18, p2, v7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->isSurrogateChar(Ljava/lang/CharSequence;I)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1105
    add-int/lit8 v7, v7, 0x1

    .line 1113
    .end local v17    # "w":F
    :cond_1
    const/4 v5, 0x0

    .line 1114
    move v4, v7

    .line 1193
    .end local v7    # "i":I
    .end local v16    # "sum":F
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p8

    add-int/lit8 v19, v19, 0x4

    aput v5, v18, v19

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p8

    add-int/lit8 v19, v19, 0x5

    aput v4, v18, v19

    .line 1079
    return-void

    .line 1082
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v11    # "len":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p8

    add-int/lit8 v19, v19, 0x4

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p8

    add-int/lit8 v19, v19, 0x5

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 1084
    return-void

    .line 1089
    :cond_4
    sget-object v18, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    goto/16 :goto_0

    .line 1110
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v11    # "len":I
    .restart local v16    # "sum":F
    .restart local v17    # "w":F
    :cond_5
    add-float v16, v16, v17

    .line 1100
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1116
    .end local v7    # "i":I
    .end local v16    # "sum":F
    .end local v17    # "w":F
    :cond_6
    const-string/jumbo v18, "StaticLayout"

    const/16 v19, 0x5

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1117
    const-string/jumbo v18, "StaticLayout"

    const-string/jumbo v19, "Start Ellipsis only supported with one line"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1120
    :cond_7
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1122
    :cond_8
    const/16 v16, 0x0

    .line 1125
    .restart local v16    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v11, :cond_9

    .line 1126
    add-int v18, v7, p2

    sub-int v18, v18, p5

    aget v17, p4, v18

    .line 1128
    .restart local v17    # "w":F
    add-float v18, v17, v16

    add-float v18, v18, v6

    cmpl-float v18, v18, p6

    if-lez v18, :cond_d

    .line 1129
    if-lez v7, :cond_9

    add-int v18, p2, v7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->isSurrogateChar(Ljava/lang/CharSequence;I)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1130
    add-int/lit8 v7, v7, -0x1

    .line 1138
    .end local v17    # "w":F
    :cond_9
    move v5, v7

    .line 1139
    sub-int v4, v11, v7

    .line 1140
    if-eqz p11, :cond_2

    if-nez v4, :cond_2

    if-lez v11, :cond_2

    .line 1141
    add-int/lit8 v18, p3, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->isSurrogateChar(Ljava/lang/CharSequence;I)Z

    move-result v18

    if-eqz v18, :cond_e

    const/4 v10, 0x2

    .line 1142
    .local v10, "legnthOfChar":I
    :goto_4
    sub-int v5, v11, v10

    .line 1143
    move v4, v10

    goto/16 :goto_2

    .line 1121
    .end local v7    # "i":I
    .end local v10    # "legnthOfChar":I
    .end local v16    # "sum":F
    :cond_a
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 1147
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 1148
    const/4 v12, 0x0

    .local v12, "lsum":F
    const/4 v15, 0x0

    .line 1149
    .local v15, "rsum":F
    const/4 v9, 0x0

    .local v9, "left":I
    move v14, v11

    .line 1151
    .local v14, "right":I
    sub-float v18, p6, v6

    const/high16 v19, 0x40000000    # 2.0f

    div-float v13, v18, v19

    .line 1152
    .local v13, "ravail":F
    move v14, v11

    :goto_5
    if-lez v14, :cond_b

    .line 1153
    add-int/lit8 v18, v14, -0x1

    add-int v18, v18, p2

    sub-int v18, v18, p5

    aget v17, p4, v18

    .line 1155
    .restart local v17    # "w":F
    add-float v18, v17, v15

    cmpl-float v18, v18, v13

    if-lez v18, :cond_f

    .line 1156
    if-ge v14, v11, :cond_b

    add-int v18, p2, v14

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->isSurrogateChar(Ljava/lang/CharSequence;I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1160
    add-int v18, v14, p2

    sub-int v18, v18, p5

    aget v18, p4, v18

    sub-float v15, v15, v18

    .line 1161
    add-int/lit8 v14, v14, 0x1

    .line 1170
    .end local v17    # "w":F
    :cond_b
    sub-float v18, p6, v6

    sub-float v8, v18, v15

    .line 1171
    .local v8, "lavail":F
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v14, :cond_c

    .line 1172
    add-int v18, v9, p2

    sub-int v18, v18, p5

    aget v17, p4, v18

    .line 1174
    .restart local v17    # "w":F
    add-float v18, v17, v12

    cmpl-float v18, v18, v8

    if-lez v18, :cond_10

    .line 1175
    if-lez v9, :cond_c

    add-int v18, p2, v9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->isSurrogateChar(Ljava/lang/CharSequence;I)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1176
    add-int/lit8 v9, v9, -0x1

    .line 1184
    .end local v17    # "w":F
    :cond_c
    move v5, v9

    .line 1185
    sub-int v4, v14, v9

    goto/16 :goto_2

    .line 1135
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v12    # "lsum":F
    .end local v13    # "ravail":F
    .end local v14    # "right":I
    .end local v15    # "rsum":F
    .restart local v7    # "i":I
    .restart local v16    # "sum":F
    .restart local v17    # "w":F
    :cond_d
    add-float v16, v16, v17

    .line 1125
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 1141
    .end local v17    # "w":F
    :cond_e
    const/4 v10, 0x1

    .restart local v10    # "legnthOfChar":I
    goto :goto_4

    .line 1167
    .end local v7    # "i":I
    .end local v10    # "legnthOfChar":I
    .end local v16    # "sum":F
    .restart local v9    # "left":I
    .restart local v12    # "lsum":F
    .restart local v13    # "ravail":F
    .restart local v14    # "right":I
    .restart local v15    # "rsum":F
    .restart local v17    # "w":F
    :cond_f
    add-float v15, v15, v17

    .line 1152
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 1181
    .restart local v8    # "lavail":F
    :cond_10
    add-float v12, v12, v17

    .line 1171
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1187
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v12    # "lsum":F
    .end local v13    # "ravail":F
    .end local v14    # "right":I
    .end local v15    # "rsum":F
    .end local v17    # "w":F
    :cond_11
    const-string/jumbo v18, "StaticLayout"

    const/16 v19, 0x5

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1188
    const-string/jumbo v18, "StaticLayout"

    const-string/jumbo v19, "Middle Ellipsis only supported with one line"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private static native nAddMeasuredRun(JII[F)V
.end method

.method private static native nAddReplacementRun(JIIF)V
.end method

.method private static native nAddStyleRun(JJJIIZ)F
.end method

.method private static native nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I
.end method

.method private static native nFinishBuilder(J)V
.end method

.method private static native nFreeBuilder(J)V
.end method

.method private static native nGetWidths(J[F)V
.end method

.method static native nLoadHyphenator(Ljava/lang/String;)J
.end method

.method private static native nNewBuilder()J
.end method

.method private static native nSetIndents(J[I)V
.end method

.method private static native nSetLocale(JLjava/lang/String;J)V
.end method

.method private static native nSetupParagraph(J[CIFIF[IIII)V
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 29
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "flags"    # I
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z

    .prologue
    .line 928
    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 929
    .local v10, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v27, v10, v2

    .line 930
    .local v27, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v27

    add-int/lit8 v28, v2, 0x1

    .line 931
    .local v28, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v26, v0

    .line 933
    .local v26, "lines":[I
    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v28

    if-lt v0, v2, :cond_0

    .line 935
    const-class v2, Landroid/text/Layout$Directions;

    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    .line 934
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/Layout$Directions;

    .line 936
    .local v21, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 937
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v3, v3

    .line 936
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-static {v2, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 938
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 940
    move-object/from16 v0, v21

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 941
    .local v20, "grow":[I
    move-object/from16 v0, v26

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 942
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 943
    move-object/from16 v26, v20

    .line 946
    .end local v20    # "grow":[I
    .end local v21    # "grow2":[Landroid/text/Layout$Directions;
    :cond_0
    if-eqz p11, :cond_3

    .line 947
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 948
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 949
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 950
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 952
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v23

    if-ge v0, v2, :cond_2

    .line 953
    aget-object v2, p11, v23

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 954
    aget-object v2, p11, v23

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    .line 955
    aget v6, p12, v23

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    .line 954
    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 952
    :goto_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 958
    :cond_1
    aget-object v2, p11, v23

    aget v6, p12, v23

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 962
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 963
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 964
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 965
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 968
    .end local v23    # "i":I
    :cond_3
    if-nez v10, :cond_d

    const/16 v19, 0x1

    .line 969
    .local v19, "firstLine":Z
    :goto_2
    add-int/lit8 v2, v10, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_e

    const/4 v14, 0x1

    .line 970
    .local v14, "currentLineIsTheLastVisibleOne":Z
    :goto_3
    if-nez v14, :cond_4

    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_f

    :cond_4
    const/16 v24, 0x1

    .line 972
    .local v24, "lastLine":Z
    :goto_4
    if-eqz v19, :cond_6

    .line 973
    if-eqz p21, :cond_5

    .line 974
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 977
    :cond_5
    if-eqz p20, :cond_6

    .line 978
    move/from16 p4, p6

    .line 984
    :cond_6
    if-eqz v24, :cond_8

    .line 985
    if-eqz p21, :cond_7

    .line 986
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 989
    :cond_7
    if-eqz p20, :cond_8

    .line 990
    move/from16 p5, p7

    .line 997
    :cond_8
    if-eqz p15, :cond_11

    .line 999
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 1000
    .local v16, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_10

    .line 1001
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v0, v2

    move/from16 v18, v0

    .line 1009
    .end local v16    # "ex":D
    .local v18, "extra":I
    :goto_5
    add-int/lit8 v2, v27, 0x0

    aput p2, v26, v2

    .line 1010
    add-int/lit8 v2, v27, 0x1

    aput p8, v26, v2

    .line 1011
    add-int/lit8 v2, v27, 0x2

    add-int v3, p5, v18

    aput v3, v26, v2

    .line 1014
    div-int/lit8 v2, v18, 0x2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 v22, v0

    .line 1015
    .local v22, "halfExtra":I
    add-int/lit8 v2, v27, 0x2

    add-int v3, p5, v22

    aput v3, v26, v2

    .line 1018
    sub-int v2, p5, p4

    add-int v2, v2, v18

    add-int p8, p8, v2

    .line 1019
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v27

    add-int/lit8 v2, v2, 0x0

    aput p3, v26, v2

    .line 1020
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v27

    add-int/lit8 v2, v2, 0x1

    aput p8, v26, v2

    .line 1024
    add-int/lit8 v2, v27, 0x0

    aget v3, v26, v2

    const/high16 v4, 0x20000000

    and-int v4, v4, p14

    or-int/2addr v3, v4

    aput v3, v26, v2

    .line 1025
    add-int/lit8 v2, v27, 0x3

    aput p14, v26, v2

    .line 1027
    add-int/lit8 v2, v27, 0x0

    aget v3, v26, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v26, v2

    .line 1028
    sget-object v25, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1032
    .local v25, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_12

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v25, v2, v10

    .line 1039
    :goto_6
    if-eqz p25, :cond_c

    .line 1042
    if-eqz p29, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_13

    const/4 v13, 0x1

    .line 1045
    .local v13, "forceEllipsis":Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    if-nez p29, :cond_14

    :cond_9
    if-eqz v19, :cond_a

    if-eqz p29, :cond_14

    .line 1047
    :cond_a
    if-nez v19, :cond_b

    if-nez v14, :cond_15

    if-eqz p29, :cond_15

    :cond_b
    const/4 v15, 0x0

    .line 1049
    .local v15, "doEllipsis":Z
    :goto_8
    if-eqz v15, :cond_c

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p23

    move/from16 v7, p24

    move/from16 v8, p26

    move-object/from16 v9, p25

    move/from16 v11, p27

    move-object/from16 v12, p28

    .line 1050
    invoke-direct/range {v2 .. v13}, Landroid/text/StaticLayout;->calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 1056
    .end local v13    # "forceEllipsis":Z
    .end local v15    # "doEllipsis":Z
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1057
    return p8

    .line 968
    .end local v14    # "currentLineIsTheLastVisibleOne":Z
    .end local v18    # "extra":I
    .end local v19    # "firstLine":Z
    .end local v22    # "halfExtra":I
    .end local v24    # "lastLine":Z
    .end local v25    # "linedirs":Landroid/text/Layout$Directions;
    :cond_d
    const/16 v19, 0x0

    .restart local v19    # "firstLine":Z
    goto/16 :goto_2

    .line 969
    :cond_e
    const/4 v14, 0x0

    .restart local v14    # "currentLineIsTheLastVisibleOne":Z
    goto/16 :goto_3

    .line 970
    :cond_f
    const/16 v24, 0x0

    .restart local v24    # "lastLine":Z
    goto/16 :goto_4

    .line 1003
    .restart local v16    # "ex":D
    :cond_10
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v18, v0

    .restart local v18    # "extra":I
    goto/16 :goto_5

    .line 1006
    .end local v16    # "ex":D
    .end local v18    # "extra":I
    :cond_11
    const/16 v18, 0x0

    .restart local v18    # "extra":I
    goto/16 :goto_5

    .line 1035
    .restart local v22    # "halfExtra":I
    .restart local v25    # "linedirs":Landroid/text/Layout$Directions;
    :cond_12
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    .line 1036
    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    .line 1035
    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v10

    goto :goto_6

    .line 1042
    :cond_13
    const/4 v13, 0x0

    .restart local v13    # "forceEllipsis":Z
    goto :goto_7

    .line 1046
    :cond_14
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-eq v0, v2, :cond_a

    .line 1045
    const/4 v15, 0x1

    .restart local v15    # "doEllipsis":Z
    goto :goto_8

    .line 1048
    .end local v15    # "doEllipsis":Z
    :cond_15
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_16

    const/4 v15, 0x1

    .restart local v15    # "doEllipsis":Z
    goto :goto_8

    .end local v15    # "doEllipsis":Z
    :cond_16
    const/4 v15, 0x0

    .restart local v15    # "doEllipsis":Z
    goto :goto_8
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 128
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "includepad"    # Z
    .param p3, "trackpad"    # Z

    .prologue
    .line 569
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 570
    .local v5, "source":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    move/from16 v81, v0

    .line 571
    .local v81, "bufStart":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    move/from16 v46, v0

    .line 572
    .local v46, "bufEnd":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v55, v0

    .line 573
    .local v55, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    move/from16 v111, v0

    .line 574
    .local v111, "outerWidth":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 575
    .local v8, "textDir":Landroid/text/TextDirectionHeuristic;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    move/from16 v36, v0

    .line 576
    .local v36, "spacingmult":F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move/from16 v37, v0

    .line 577
    .local v37, "spacingadd":F
    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    int-to-float v0, v9

    move/from16 v53, v0

    .line 578
    .local v53, "ellipsizedWidth":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v52, v0

    .line 579
    .local v52, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    new-instance v26, Landroid/text/StaticLayout$LineBreaks;

    invoke-direct/range {v26 .. v26}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    .line 581
    .local v26, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    const/4 v9, 0x4

    new-array v0, v9, [I

    move-object/from16 v118, v0

    .line 584
    .local v118, "spanEndCache":[I
    const/16 v9, 0x10

    new-array v0, v9, [I

    move-object/from16 v98, v0

    .line 585
    .local v98, "fmCache":[I
    invoke-virtual/range {v55 .. v55}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/text/StaticLayout$Builder;->-wrap1(Landroid/text/StaticLayout$Builder;Ljava/util/Locale;)V

    .line 587
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 589
    const/16 v35, 0x0

    .line 590
    .local v35, "v":I
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v36, v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    cmpl-float v9, v37, v9

    if-eqz v9, :cond_6

    :cond_0
    const/16 v42, 0x1

    .line 592
    .local v42, "needMultiply":Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v22, v0

    .line 593
    .local v22, "fm":Landroid/graphics/Paint$FontMetricsInt;
    sget-boolean v9, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v9, :cond_1

    .line 594
    const-string/jumbo v9, "Text-generate"

    const-wide/16 v10, 0x8

    invoke-static {v10, v11, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 595
    const-string/jumbo v9, "StaticLayout"

    const-string/jumbo v10, "[generate] start"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v88

    .line 598
    .local v88, "beforeTime":J
    const/16 v39, 0x0

    .line 600
    .local v39, "chooseHtv":[I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .line 602
    .local v4, "measured":Landroid/text/MeasuredText;
    const/16 v123, 0x0

    .line 603
    .local v123, "spanned":Landroid/text/Spanned;
    instance-of v9, v5, Landroid/text/Spanned;

    if-eqz v9, :cond_2

    move-object/from16 v123, v5

    .line 604
    check-cast v123, Landroid/text/Spanned;

    .line 607
    .end local v123    # "spanned":Landroid/text/Spanned;
    :cond_2
    sget-boolean v9, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v9, :cond_3

    .line 608
    const-string/jumbo v9, "StaticLayout"

    const-string/jumbo v10, "[generate] for-0-start"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_3
    move/from16 v6, v81

    .end local v39    # "chooseHtv":[I
    .local v6, "paraStart":I
    :goto_1
    move/from16 v0, v46

    if-gt v6, v0, :cond_31

    .line 611
    const/16 v9, 0xa

    move/from16 v0, v46

    invoke-static {v5, v9, v6, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    .line 612
    .local v7, "paraEnd":I
    if-gez v7, :cond_7

    .line 613
    move/from16 v7, v46

    .line 617
    :goto_2
    const/4 v15, 0x1

    .line 618
    .local v15, "firstWidthLineCount":I
    move/from16 v95, v111

    .line 619
    .local v95, "firstWidth":I
    move/from16 v113, v111

    .line 621
    .local v113, "restWidth":I
    const/16 v38, 0x0

    .line 623
    .local v38, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v123, :cond_f

    .line 625
    const-class v9, Landroid/text/style/LeadingMarginSpan;

    .line 624
    move-object/from16 v0, v123

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v116

    check-cast v116, [Landroid/text/style/LeadingMarginSpan;

    .line 626
    .local v116, "sp":[Landroid/text/style/LeadingMarginSpan;
    sget-boolean v9, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v9, :cond_4

    .line 627
    const-string/jumbo v9, "StaticLayout"

    const-string/jumbo v10, "[generate] for-1-start"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_4
    const/16 v102, 0x0

    .local v102, "i":I
    :goto_3
    move-object/from16 v0, v116

    array-length v9, v0

    move/from16 v0, v102

    if-ge v0, v9, :cond_8

    .line 630
    aget-object v108, v116, v102

    .line 631
    .local v108, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v9, v116, v102

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v95, v95, v9

    .line 632
    aget-object v9, v116, v102

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v113, v113, v9

    .line 636
    move-object/from16 v0, v108

    instance-of v9, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v9, :cond_5

    move-object/from16 v109, v108

    .line 637
    check-cast v109, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 639
    .local v109, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    invoke-interface/range {v109 .. v109}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    .line 638
    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 629
    .end local v109    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    :cond_5
    add-int/lit8 v102, v102, 0x1

    goto :goto_3

    .line 590
    .end local v4    # "measured":Landroid/text/MeasuredText;
    .end local v6    # "paraStart":I
    .end local v7    # "paraEnd":I
    .end local v15    # "firstWidthLineCount":I
    .end local v22    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v38    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v42    # "needMultiply":Z
    .end local v88    # "beforeTime":J
    .end local v95    # "firstWidth":I
    .end local v102    # "i":I
    .end local v108    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v113    # "restWidth":I
    .end local v116    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_6
    const/16 v42, 0x0

    .restart local v42    # "needMultiply":Z
    goto/16 :goto_0

    .line 615
    .restart local v4    # "measured":Landroid/text/MeasuredText;
    .restart local v6    # "paraStart":I
    .restart local v7    # "paraEnd":I
    .restart local v22    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v88    # "beforeTime":J
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 642
    .restart local v15    # "firstWidthLineCount":I
    .restart local v38    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v95    # "firstWidth":I
    .restart local v102    # "i":I
    .restart local v113    # "restWidth":I
    .restart local v116    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_8
    sget-boolean v9, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v9, :cond_9

    .line 643
    const-string/jumbo v9, "StaticLayout"

    const-string/jumbo v10, "[generate] for-1-end"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_9
    const-class v9, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v123

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v38

    .end local v38    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v38, [Landroid/text/style/LineHeightSpan;

    .line 648
    .local v38, "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v38

    array-length v9, v0

    if-eqz v9, :cond_f

    .line 649
    if-eqz v39, :cond_a

    .line 650
    move-object/from16 v0, v39

    array-length v9, v0

    move-object/from16 v0, v38

    array-length v10, v0

    if-ge v9, v10, :cond_b

    .line 651
    :cond_a
    move-object/from16 v0, v38

    array-length v9, v0

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v39

    .line 653
    :cond_b
    sget-boolean v9, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v9, :cond_c

    .line 654
    const-string/jumbo v9, "StaticLayout"

    const-string/jumbo v10, "[generate] for-2-start"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_c
    const/16 v102, 0x0

    :goto_4
    move-object/from16 v0, v38

    array-length v9, v0

    move/from16 v0, v102

    if-ge v0, v9, :cond_e

    .line 657
    aget-object v9, v38, v102

    move-object/from16 v0, v123

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v110

    .line 659
    .local v110, "o":I
    move/from16 v0, v110

    if-ge v0, v6, :cond_d

    .line 663
    move-object/from16 v0, p0

    move/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    aput v9, v39, v102

    .line 656
    :goto_5
    add-int/lit8 v102, v102, 0x1

    goto :goto_4

    .line 667
    :cond_d
    aput v35, v39, v102

    goto :goto_5

    .line 670
    .end local v110    # "o":I
    :cond_e
    sget-boolean v9, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v9, :cond_f

    .line 671
    const-string/jumbo v9, "StaticLayout"

    const-string/jumbo v10, "[generate] for-2-end"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .end local v38    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v102    # "i":I
    .end local v116    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_f
    move-object/from16 v9, p1

    .line 676
    invoke-virtual/range {v4 .. v9}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 677
    iget-object v12, v4, Landroid/text/MeasuredText;->mChars:[C

    .line 678
    .local v12, "chs":[C
    iget-object v0, v4, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v50, v0

    .line 679
    .local v50, "widths":[F
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v43, v0

    .line 680
    .local v43, "chdirs":[B
    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v44, v0

    .line 681
    .local v44, "dir":I
    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v45, v0

    .line 684
    .local v45, "easy":Z
    const/16 v17, 0x0

    .line 685
    .local v17, "variableTabStops":[I
    if-eqz v123, :cond_11

    .line 687
    const-class v9, Landroid/text/style/TabStopSpan;

    .line 686
    move-object/from16 v0, v123

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v125

    check-cast v125, [Landroid/text/style/TabStopSpan;

    .line 688
    .local v125, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v125

    array-length v9, v0

    if-lez v9, :cond_11

    .line 689
    move-object/from16 v0, v125

    array-length v9, v0

    new-array v0, v9, [I

    move-object/from16 v126, v0

    .line 690
    .local v126, "stops":[I
    const/16 v102, 0x0

    .restart local v102    # "i":I
    :goto_6
    move-object/from16 v0, v125

    array-length v9, v0

    move/from16 v0, v102

    if-ge v0, v9, :cond_10

    .line 691
    aget-object v9, v125, v102

    invoke-interface {v9}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v9

    aput v9, v126, v102

    .line 690
    add-int/lit8 v102, v102, 0x1

    goto :goto_6

    .line 693
    :cond_10
    move-object/from16 v0, v126

    array-length v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, v126

    invoke-static {v0, v10, v9}, Ljava/util/Arrays;->sort([III)V

    .line 694
    move-object/from16 v17, v126

    .line 698
    .end local v17    # "variableTabStops":[I
    .end local v102    # "i":I
    .end local v125    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v126    # "stops":[I
    :cond_11
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    sub-int v13, v7, v6

    .line 699
    move/from16 v0, v95

    int-to-float v14, v0

    move/from16 v0, v113

    int-to-float v0, v0

    move/from16 v16, v0

    .line 700
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    move/from16 v20, v0

    const/16 v18, 0x14

    .line 698
    invoke-static/range {v10 .. v20}, Landroid/text/StaticLayout;->nSetupParagraph(J[CIFIF[IIII)V

    .line 701
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_12

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v9, :cond_18

    .line 705
    :cond_12
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_13

    const/16 v105, 0x0

    .line 706
    .local v105, "leftLen":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_14

    const/16 v114, 0x0

    .line 707
    .local v114, "rightLen":I
    :goto_8
    move/from16 v0, v105

    move/from16 v1, v114

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v104

    .line 708
    .local v104, "indentsLen":I
    move/from16 v0, v104

    new-array v0, v0, [I

    move-object/from16 v103, v0

    .line 709
    .local v103, "indents":[I
    const/16 v102, 0x0

    .restart local v102    # "i":I
    :goto_9
    move/from16 v0, v102

    move/from16 v1, v104

    if-ge v0, v1, :cond_17

    .line 710
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_15

    const/16 v106, 0x0

    .line 712
    .local v106, "leftMargin":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_16

    const/16 v115, 0x0

    .line 714
    .local v115, "rightMargin":I
    :goto_b
    add-int v9, v106, v115

    aput v9, v103, v102

    .line 709
    add-int/lit8 v102, v102, 0x1

    goto :goto_9

    .line 705
    .end local v102    # "i":I
    .end local v103    # "indents":[I
    .end local v104    # "indentsLen":I
    .end local v105    # "leftLen":I
    .end local v106    # "leftMargin":I
    .end local v114    # "rightLen":I
    .end local v115    # "rightMargin":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v0, v9

    move/from16 v105, v0

    .restart local v105    # "leftLen":I
    goto :goto_7

    .line 706
    :cond_14
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v0, v9

    move/from16 v114, v0

    .restart local v114    # "rightLen":I
    goto :goto_8

    .line 711
    .restart local v102    # "i":I
    .restart local v103    # "indents":[I
    .restart local v104    # "indentsLen":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v102

    add-int/lit8 v11, v105, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v106, v9, v10

    .restart local v106    # "leftMargin":I
    goto :goto_a

    .line 713
    :cond_16
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v102

    add-int/lit8 v11, v114, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v115, v9, v10

    .restart local v115    # "rightMargin":I
    goto :goto_b

    .line 716
    .end local v106    # "leftMargin":I
    .end local v115    # "rightMargin":I
    :cond_17
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v103

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    .line 722
    .end local v102    # "i":I
    .end local v103    # "indents":[I
    .end local v104    # "indentsLen":I
    .end local v105    # "leftLen":I
    .end local v114    # "rightLen":I
    :cond_18
    const/16 v99, 0x0

    .line 723
    .local v99, "fmCacheCount":I
    const/16 v119, 0x0

    .line 724
    .local v119, "spanEndCacheCount":I
    sget-boolean v9, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v9, :cond_19

    .line 725
    const-string/jumbo v9, "StaticLayout"

    const-string/jumbo v10, "[generate] for-3-start"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_19
    move/from16 v122, v6

    .local v122, "spanStart":I
    :goto_c
    move/from16 v0, v122

    if-ge v0, v7, :cond_21

    .line 728
    mul-int/lit8 v9, v99, 0x4

    move-object/from16 v0, v98

    array-length v10, v0

    if-lt v9, v10, :cond_1a

    .line 729
    mul-int/lit8 v9, v99, 0x4

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [I

    move-object/from16 v101, v0

    .line 730
    .local v101, "grow":[I
    mul-int/lit8 v9, v99, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v98

    move-object/from16 v1, v101

    invoke-static {v0, v10, v1, v11, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 731
    move-object/from16 v98, v101

    .line 734
    .end local v101    # "grow":[I
    :cond_1a
    move-object/from16 v0, v118

    array-length v9, v0

    move/from16 v0, v119

    if-lt v0, v9, :cond_1b

    .line 735
    mul-int/lit8 v9, v119, 0x2

    new-array v0, v9, [I

    move-object/from16 v101, v0

    .line 736
    .restart local v101    # "grow":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v118

    move-object/from16 v1, v101

    move/from16 v2, v119

    invoke-static {v0, v9, v1, v10, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 737
    move-object/from16 v118, v101

    .line 740
    .end local v101    # "grow":[I
    :cond_1b
    if-nez v123, :cond_1e

    .line 741
    move/from16 v117, v7

    .line 742
    .local v117, "spanEnd":I
    sub-int v21, v117, v122

    .line 743
    .local v21, "spanLen":I
    sget-boolean v9, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v9, :cond_1c

    .line 744
    const-string/jumbo v9, "StaticLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[generate] addStyleRun-nospan-start "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_1c
    move-object/from16 v0, v55

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 747
    sget-boolean v9, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v9, :cond_1d

    .line 748
    const-string/jumbo v9, "StaticLayout"

    const-string/jumbo v10, "[generate] addStyleRun-nospan-end"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :cond_1d
    :goto_d
    mul-int/lit8 v9, v99, 0x4

    add-int/lit8 v9, v9, 0x0

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    aput v10, v98, v9

    .line 775
    mul-int/lit8 v9, v99, 0x4

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    aput v10, v98, v9

    .line 776
    mul-int/lit8 v9, v99, 0x4

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    aput v10, v98, v9

    .line 777
    mul-int/lit8 v9, v99, 0x4

    add-int/lit8 v9, v9, 0x3

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    aput v10, v98, v9

    .line 778
    add-int/lit8 v99, v99, 0x1

    .line 780
    aput v117, v118, v119

    .line 781
    add-int/lit8 v119, v119, 0x1

    .line 727
    move/from16 v122, v117

    goto/16 :goto_c

    .line 752
    .end local v21    # "spanLen":I
    .end local v117    # "spanEnd":I
    :cond_1e
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    .line 751
    move-object/from16 v0, v123

    move/from16 v1, v122

    invoke-interface {v0, v1, v7, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v117

    .line 753
    .restart local v117    # "spanEnd":I
    sub-int v21, v117, v122

    .line 755
    .restart local v21    # "spanLen":I
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v123

    move/from16 v1, v122

    move/from16 v2, v117

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v124

    check-cast v124, [Landroid/text/style/MetricAffectingSpan;

    .line 756
    .local v124, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v124

    move-object/from16 v1, v123

    invoke-static {v0, v1, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v124

    .end local v124    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v124, [Landroid/text/style/MetricAffectingSpan;

    .line 757
    .restart local v124    # "spans":[Landroid/text/style/MetricAffectingSpan;
    sget-boolean v9, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v9, :cond_1f

    .line 758
    const-string/jumbo v9, "StaticLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[generate] addStyleRun-span-start "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_1f
    move-object/from16 v0, v55

    move-object/from16 v1, v124

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 761
    sget-boolean v9, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v9, :cond_20

    .line 762
    const-string/jumbo v9, "StaticLayout"

    const-string/jumbo v10, "[generate] addStyleRun-span-end"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :cond_20
    const-class v9, Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    move-object/from16 v0, v123

    move/from16 v1, v122

    move/from16 v2, v117

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    .line 768
    .local v20, "urlSpans":[Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    invoke-virtual/range {p0 .. p0}, Landroid/text/StaticLayout;->getUrlPadding()I

    move-result v23

    move-object/from16 v18, v4

    move-object/from16 v19, v55

    invoke-virtual/range {v18 .. v23}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Lcom/letv/leui/util/LeLinkify$LeURLSpan;ILandroid/graphics/Paint$FontMetricsInt;I)F

    goto/16 :goto_d

    .line 784
    .end local v20    # "urlSpans":[Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    .end local v21    # "spanLen":I
    .end local v117    # "spanEnd":I
    .end local v124    # "spans":[Landroid/text/style/MetricAffectingSpan;
    :cond_21
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v50

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nGetWidths(J[F)V

    .line 785
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v27, v0

    .line 786
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    iget-object v9, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    array-length v0, v9

    move/from16 v30, v0

    .line 785
    invoke-static/range {v24 .. v30}, Landroid/text/StaticLayout;->nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I

    move-result v87

    .line 788
    .local v87, "breakCount":I
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v91, v0

    .line 789
    .local v91, "breaks":[I
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v107, v0

    .line 790
    .local v107, "lineWidths":[F
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v97, v0

    .line 792
    .local v97, "flags":[I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int v112, v9, v10

    .line 793
    .local v112, "remainingLineCount":I
    if-eqz v52, :cond_25

    .line 794
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v52

    if-eq v0, v9, :cond_22

    .line 795
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_24

    .line 796
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v52

    if-eq v0, v9, :cond_23

    const/16 v94, 0x1

    .line 797
    .local v94, "ellipsisMayBeApplied":Z
    :goto_e
    if-lez v112, :cond_27

    move/from16 v0, v112

    move/from16 v1, v87

    if-ge v0, v1, :cond_27

    if-eqz v94, :cond_27

    .line 800
    add-int/lit8 v9, v112, -0x1

    add-int/lit8 v10, v87, -0x1

    aget v10, v91, v10

    aput v10, v91, v9

    .line 802
    const/16 v127, 0x0

    .line 803
    .local v127, "width":F
    const/16 v96, 0x0

    .line 804
    .local v96, "flag":I
    add-int/lit8 v102, v112, -0x1

    .restart local v102    # "i":I
    :goto_f
    move/from16 v0, v102

    move/from16 v1, v87

    if-ge v0, v1, :cond_26

    .line 805
    aget v9, v107, v102

    add-float v127, v127, v9

    .line 806
    aget v9, v97, v102

    const/high16 v10, 0x20000000

    and-int/2addr v9, v10

    or-int v96, v96, v9

    .line 804
    add-int/lit8 v102, v102, 0x1

    goto :goto_f

    .line 794
    .end local v94    # "ellipsisMayBeApplied":Z
    .end local v96    # "flag":I
    .end local v102    # "i":I
    .end local v127    # "width":F
    :cond_22
    const/16 v94, 0x1

    .restart local v94    # "ellipsisMayBeApplied":Z
    goto :goto_e

    .line 796
    .end local v94    # "ellipsisMayBeApplied":Z
    :cond_23
    const/16 v94, 0x0

    .restart local v94    # "ellipsisMayBeApplied":Z
    goto :goto_e

    .line 795
    .end local v94    # "ellipsisMayBeApplied":Z
    :cond_24
    const/16 v94, 0x0

    .restart local v94    # "ellipsisMayBeApplied":Z
    goto :goto_e

    .line 793
    .end local v94    # "ellipsisMayBeApplied":Z
    :cond_25
    const/16 v94, 0x0

    .restart local v94    # "ellipsisMayBeApplied":Z
    goto :goto_e

    .line 808
    .restart local v96    # "flag":I
    .restart local v102    # "i":I
    .restart local v127    # "width":F
    :cond_26
    add-int/lit8 v9, v112, -0x1

    aput v127, v107, v9

    .line 809
    add-int/lit8 v9, v112, -0x1

    aput v96, v97, v9

    .line 811
    move/from16 v87, v112

    .line 815
    .end local v96    # "flag":I
    .end local v102    # "i":I
    .end local v127    # "width":F
    :cond_27
    move/from16 v29, v6

    .line 817
    .local v29, "here":I
    const/16 v33, 0x0

    .local v33, "fmTop":I
    const/16 v34, 0x0

    .local v34, "fmBottom":I
    const/16 v31, 0x0

    .local v31, "fmAscent":I
    const/16 v32, 0x0

    .line 818
    .local v32, "fmDescent":I
    const/16 v100, 0x0

    .line 819
    .local v100, "fmCacheIndex":I
    const/16 v120, 0x0

    .line 820
    .local v120, "spanEndCacheIndex":I
    const/16 v90, 0x0

    .line 821
    .local v90, "breakIndex":I
    move/from16 v122, v6

    move/from16 v121, v120

    .end local v120    # "spanEndCacheIndex":I
    .local v121, "spanEndCacheIndex":I
    :goto_10
    move/from16 v0, v122

    if-ge v0, v7, :cond_30

    .line 823
    add-int/lit8 v120, v121, 0x1

    .end local v121    # "spanEndCacheIndex":I
    .restart local v120    # "spanEndCacheIndex":I
    aget v117, v118, v121

    .line 826
    .restart local v117    # "spanEnd":I
    mul-int/lit8 v9, v100, 0x4

    add-int/lit8 v9, v9, 0x0

    aget v9, v98, v9

    move-object/from16 v0, v22

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 827
    mul-int/lit8 v9, v100, 0x4

    add-int/lit8 v9, v9, 0x1

    aget v9, v98, v9

    move-object/from16 v0, v22

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 828
    mul-int/lit8 v9, v100, 0x4

    add-int/lit8 v9, v9, 0x2

    aget v9, v98, v9

    move-object/from16 v0, v22

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 829
    mul-int/lit8 v9, v100, 0x4

    add-int/lit8 v9, v9, 0x3

    aget v9, v98, v9

    move-object/from16 v0, v22

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 830
    add-int/lit8 v100, v100, 0x1

    .line 832
    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, v33

    if-ge v9, v0, :cond_28

    .line 833
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v33, v0

    .line 835
    :cond_28
    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, v31

    if-ge v9, v0, :cond_29

    .line 836
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v31, v0

    .line 838
    :cond_29
    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, v32

    if-le v9, v0, :cond_2a

    .line 839
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v32, v0

    .line 841
    :cond_2a
    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v0, v34

    if-le v9, v0, :cond_2b

    .line 842
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v34, v0

    .line 846
    :cond_2b
    :goto_11
    move/from16 v0, v90

    move/from16 v1, v87

    if-ge v0, v1, :cond_2c

    aget v9, v91, v90

    add-int/2addr v9, v6

    move/from16 v0, v122

    if-ge v9, v0, :cond_2c

    .line 847
    add-int/lit8 v90, v90, 0x1

    goto :goto_11

    .line 850
    :cond_2c
    move/from16 v0, v90

    move/from16 v1, v87

    if-ge v0, v1, :cond_2f

    aget v9, v91, v90

    add-int/2addr v9, v6

    move/from16 v0, v117

    if-gt v9, v0, :cond_2f

    .line 851
    aget v9, v91, v90

    add-int v30, v6, v9

    .line 853
    .local v30, "endPos":I
    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_2d

    const/16 v56, 0x1

    .line 857
    .local v56, "moreChars":Z
    :goto_12
    aget v41, v97, v90

    .line 860
    aget v54, v107, v90

    move-object/from16 v27, p0

    move-object/from16 v28, v5

    move-object/from16 v40, v22

    move/from16 v47, p2

    move/from16 v48, p3

    move-object/from16 v49, v12

    move/from16 v51, v6

    .line 855
    invoke-direct/range {v27 .. v56}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v35

    .line 862
    move/from16 v0, v30

    move/from16 v1, v117

    if-ge v0, v1, :cond_2e

    .line 864
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v33, v0

    .line 865
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v34, v0

    .line 866
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v31, v0

    .line 867
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v32, v0

    .line 872
    :goto_13
    move/from16 v29, v30

    .line 873
    add-int/lit8 v90, v90, 0x1

    .line 875
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_2c

    .line 876
    return-void

    .line 853
    .end local v56    # "moreChars":Z
    :cond_2d
    const/16 v56, 0x0

    .restart local v56    # "moreChars":Z
    goto :goto_12

    .line 869
    :cond_2e
    const/16 v32, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x0

    const/16 v33, 0x0

    goto :goto_13

    .line 821
    .end local v30    # "endPos":I
    .end local v56    # "moreChars":Z
    :cond_2f
    move/from16 v122, v117

    move/from16 v121, v120

    .end local v120    # "spanEndCacheIndex":I
    .restart local v121    # "spanEndCacheIndex":I
    goto/16 :goto_10

    .line 881
    .end local v117    # "spanEnd":I
    :cond_30
    move/from16 v0, v46

    if-ne v7, v0, :cond_37

    .line 884
    .end local v7    # "paraEnd":I
    .end local v12    # "chs":[C
    .end local v15    # "firstWidthLineCount":I
    .end local v29    # "here":I
    .end local v31    # "fmAscent":I
    .end local v32    # "fmDescent":I
    .end local v33    # "fmTop":I
    .end local v34    # "fmBottom":I
    .end local v43    # "chdirs":[B
    .end local v44    # "dir":I
    .end local v45    # "easy":Z
    .end local v50    # "widths":[F
    .end local v87    # "breakCount":I
    .end local v90    # "breakIndex":I
    .end local v91    # "breaks":[I
    .end local v94    # "ellipsisMayBeApplied":Z
    .end local v95    # "firstWidth":I
    .end local v97    # "flags":[I
    .end local v99    # "fmCacheCount":I
    .end local v100    # "fmCacheIndex":I
    .end local v107    # "lineWidths":[F
    .end local v112    # "remainingLineCount":I
    .end local v113    # "restWidth":I
    .end local v119    # "spanEndCacheCount":I
    .end local v121    # "spanEndCacheIndex":I
    .end local v122    # "spanStart":I
    :cond_31
    sget-boolean v9, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v9, :cond_32

    .line 885
    const-string/jumbo v9, "StaticLayout"

    const-string/jumbo v10, "[generate] for-0-end"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :cond_32
    move/from16 v0, v46

    move/from16 v1, v81

    if-eq v0, v1, :cond_33

    add-int/lit8 v9, v46, -0x1

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_34

    .line 889
    :cond_33
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v9, v10, :cond_34

    move-object/from16 v57, v4

    move-object/from16 v58, v5

    move/from16 v59, v46

    move/from16 v60, v46

    move-object/from16 v61, v8

    move-object/from16 v62, p1

    .line 892
    invoke-virtual/range {v57 .. v62}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 894
    move-object/from16 v0, v55

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 897
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v61, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v62, v0

    .line 898
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v63, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v64, v0

    .line 902
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v73, v0

    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v74, v0

    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v75, v0

    .line 905
    const/16 v84, 0x0

    .line 900
    const/16 v68, 0x0

    .line 901
    const/16 v69, 0x0

    const/16 v71, 0x0

    .line 903
    const/16 v79, 0x0

    .line 904
    const/16 v80, 0x0

    .line 905
    const/16 v86, 0x0

    move-object/from16 v57, p0

    move-object/from16 v58, v5

    move/from16 v59, v46

    move/from16 v60, v46

    move/from16 v65, v35

    move/from16 v66, v36

    move/from16 v67, v37

    move-object/from16 v70, v22

    move/from16 v72, v42

    move/from16 v76, v46

    move/from16 v77, p2

    move/from16 v78, p3

    move-object/from16 v82, v52

    move/from16 v83, v53

    move-object/from16 v85, v55

    .line 896
    invoke-direct/range {v57 .. v86}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v35

    .line 907
    :cond_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v92, v10, v88

    .line 908
    .local v92, "diffTime":J
    sget-boolean v9, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v9, :cond_36

    .line 909
    const-wide/16 v10, 0x0

    cmp-long v9, v92, v10

    if-lez v9, :cond_35

    .line 910
    const-string/jumbo v9, "StaticLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[generate] diff "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {v92 .. v93}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    :cond_35
    const-string/jumbo v9, "StaticLayout"

    const-string/jumbo v10, "[generate] end"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-wide/16 v10, 0x8

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 568
    :cond_36
    return-void

    .line 610
    .end local v92    # "diffTime":J
    .restart local v7    # "paraEnd":I
    .restart local v12    # "chs":[C
    .restart local v15    # "firstWidthLineCount":I
    .restart local v29    # "here":I
    .restart local v31    # "fmAscent":I
    .restart local v32    # "fmDescent":I
    .restart local v33    # "fmTop":I
    .restart local v34    # "fmBottom":I
    .restart local v43    # "chdirs":[B
    .restart local v44    # "dir":I
    .restart local v45    # "easy":Z
    .restart local v50    # "widths":[F
    .restart local v87    # "breakCount":I
    .restart local v90    # "breakIndex":I
    .restart local v91    # "breaks":[I
    .restart local v94    # "ellipsisMayBeApplied":Z
    .restart local v95    # "firstWidth":I
    .restart local v97    # "flags":[I
    .restart local v99    # "fmCacheCount":I
    .restart local v100    # "fmCacheIndex":I
    .restart local v107    # "lineWidths":[F
    .restart local v112    # "remainingLineCount":I
    .restart local v113    # "restWidth":I
    .restart local v119    # "spanEndCacheCount":I
    .restart local v121    # "spanEndCacheIndex":I
    .restart local v122    # "spanStart":I
    :cond_37
    move v6, v7

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1274
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1319
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1320
    const/4 v0, 0x0

    return v0

    .line 1323
    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1328
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1329
    const/4 v0, 0x0

    return v0

    .line 1332
    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1337
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHyphen(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1282
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 5
    .param p1, "line"    # I
    .param p2, "align"    # Landroid/text/Layout$Alignment;

    .prologue
    const/4 v3, 0x0

    .line 1290
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_1

    .line 1291
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v2, :cond_0

    .line 1292
    return v3

    .line 1294
    :cond_0
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    return v2

    .line 1296
    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_3

    .line 1297
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v2, :cond_2

    .line 1298
    return v3

    .line 1300
    :cond_2
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    neg-int v2, v2

    return v2

    .line 1302
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_6

    .line 1303
    const/4 v0, 0x0

    .line 1304
    .local v0, "left":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v2, :cond_4

    .line 1305
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v0, v2, v3

    .line 1307
    :cond_4
    const/4 v1, 0x0

    .line 1308
    .local v1, "right":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_5

    .line 1309
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    .line 1311
    :cond_5
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2

    .line 1313
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unhandled alignment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 1259
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x0

    aget v1, v1, v2

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 1224
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1239
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 1240
    .local v0, "descent":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    .line 1241
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1242
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1244
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1264
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 7
    .param p1, "vertical"    # I

    .prologue
    const/4 v6, 0x0

    .line 1203
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1204
    .local v1, "high":I
    const/4 v3, -0x1

    .line 1206
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 1207
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 1208
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 1209
    .local v0, "guess":I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 1210
    move v1, v0

    goto :goto_0

    .line 1212
    :cond_0
    move v3, v0

    goto :goto_0

    .line 1215
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    .line 1216
    return v6

    .line 1218
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1249
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1229
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 1230
    .local v0, "top":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    .line 1231
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1232
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1234
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1254
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1269
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
