.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$TabStops;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Alignment;
    }
.end annotation


# static fields
.field private static synthetic -android_text_Layout$AlignmentSwitchesValues:[I = null

.field public static final BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final BREAK_STRATEGY_SIMPLE:I = 0x0

.field static final DEFAULT_URL_SELECTED_COLOR:I = -0x1

.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

.field public static final HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field static final MAX_EMOJI:I

.field static final MIN_EMOJI:I

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field static final TAG:Ljava/lang/String; = "Layout"

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mIsLineCenterVertical:Z

.field private mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private mRadius:I

.field private mRect:Landroid/graphics/RectF;

.field mSectionBoundPaint:Landroid/graphics/Paint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mUrlBoundRadius:I

.field private mUrlPaddingHorizontal:I

.field private mUrlPaddingVertical:I

.field private mUrlSelected:Z

.field private mUrlSelectedColor:I

.field private mWidth:I


# direct methods
.method private static synthetic -getandroid_text_Layout$AlignmentSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/text/Layout;->-android_text_Layout$AlignmentSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/Layout;->-android_text_Layout$AlignmentSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/text/Layout$Alignment;->values()[Landroid/text/Layout$Alignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Landroid/text/Layout;->-android_text_Layout$AlignmentSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 111
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    .line 110
    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 115
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 119
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 121
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 2160
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 2191
    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x3ffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    .line 2190
    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 2193
    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x7ffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    .line 2192
    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 55
    return-void

    .line 123
    :cond_0
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 124
    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F

    .prologue
    .line 216
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 215
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2157
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 2197
    iput v1, p0, Landroid/text/Layout;->mUrlPaddingHorizontal:I

    .line 2198
    iput v1, p0, Landroid/text/Layout;->mUrlPaddingVertical:I

    .line 2199
    iput v1, p0, Landroid/text/Layout;->mUrlBoundRadius:I

    .line 2201
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/Layout;->mUrlSelectedColor:I

    .line 2202
    iput-boolean v1, p0, Landroid/text/Layout;->mIsLineCenterVertical:Z

    .line 2392
    const/16 v0, 0xc

    iput v0, p0, Landroid/text/Layout;->mRadius:I

    .line 2393
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    .line 239
    if-gez p3, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    if-eqz p2, :cond_1

    .line 247
    iput v1, p2, Landroid/text/TextPaint;->bgColor:I

    .line 248
    iput v1, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 251
    :cond_1
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 252
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 253
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 254
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 255
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 256
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 257
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 258
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 237
    return-void
.end method

.method private addRoundSelection(IIIII[FLandroid/graphics/Path;II)V
    .locals 16
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "radii"    # [F
    .param p7, "dest"    # Landroid/graphics/Path;
    .param p8, "extraEnd"    # I
    .param p9, "extraStart"    # I

    .prologue
    .line 2339
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    .line 2340
    .local v10, "linestart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v9

    .line 2341
    .local v9, "lineend":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    .line 2343
    .local v2, "dirs":Landroid/text/Layout$Directions;
    if-le v9, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v15, v9, -0x1

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_0

    .line 2344
    add-int/lit8 v9, v9, -0x1

    .line 2346
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v14, v2, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v14, v14

    if-ge v7, v14, :cond_6

    .line 2347
    iget-object v14, v2, Landroid/text/Layout$Directions;->mDirections:[I

    aget v14, v14, v7

    add-int v6, v10, v14

    .line 2348
    .local v6, "here":I
    iget-object v14, v2, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v15, v7, 0x1

    aget v14, v14, v15

    const v15, 0x3ffffff

    and-int/2addr v14, v15

    add-int v13, v6, v14

    .line 2350
    .local v13, "there":I
    if-le v13, v9, :cond_1

    .line 2351
    move v13, v9

    .line 2353
    :cond_1
    move/from16 v0, p2

    if-gt v0, v13, :cond_4

    move/from16 v0, p3

    if-lt v0, v6, :cond_4

    .line 2354
    move/from16 v0, p2

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2355
    .local v12, "st":I
    move/from16 v0, p3

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2357
    .local v3, "en":I
    if-eq v12, v3, :cond_4

    .line 2358
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v14, v1, v15}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v4

    .line 2359
    .local v4, "h1":F
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v14, v1, v15}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v5

    .line 2361
    .local v5, "h2":F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 2362
    .local v8, "left":F
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 2364
    .local v11, "right":F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move/from16 v0, p4

    int-to-float v15, v0

    iput v15, v14, Landroid/graphics/RectF;->top:F

    .line 2365
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move/from16 v0, p5

    int-to-float v15, v0

    iput v15, v14, Landroid/graphics/RectF;->bottom:F

    .line 2366
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_5

    .line 2367
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move/from16 v0, p8

    int-to-float v15, v0

    sub-float v15, v8, v15

    iput v15, v14, Landroid/graphics/RectF;->left:F

    .line 2368
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move/from16 v0, p9

    int-to-float v15, v0

    add-float/2addr v15, v11

    iput v15, v14, Landroid/graphics/RectF;->right:F

    .line 2373
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_2

    .line 2374
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    const/4 v15, 0x0

    iput v15, v14, Landroid/graphics/RectF;->left:F

    .line 2375
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_3

    .line 2376
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v15, v15

    iput v15, v14, Landroid/graphics/RectF;->right:F

    .line 2378
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-virtual {v0, v14, v1, v15}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 2346
    .end local v3    # "en":I
    .end local v4    # "h1":F
    .end local v5    # "h2":F
    .end local v8    # "left":F
    .end local v11    # "right":F
    .end local v12    # "st":I
    :cond_4
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_0

    .line 2370
    .restart local v3    # "en":I
    .restart local v4    # "h1":F
    .restart local v5    # "h2":F
    .restart local v8    # "left":F
    .restart local v11    # "right":F
    .restart local v12    # "st":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move/from16 v0, p9

    int-to-float v15, v0

    sub-float v15, v8, v15

    iput v15, v14, Landroid/graphics/RectF;->left:F

    .line 2371
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move/from16 v0, p8

    int-to-float v15, v0

    add-float/2addr v15, v11

    iput v15, v14, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 2338
    .end local v3    # "en":I
    .end local v4    # "h1":F
    .end local v5    # "h2":F
    .end local v6    # "here":I
    .end local v8    # "left":F
    .end local v11    # "right":F
    .end local v12    # "st":I
    .end local v13    # "there":I
    :cond_6
    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 19
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 1533
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    .line 1534
    .local v16, "linestart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 1535
    .local v15, "lineend":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 1537
    .local v9, "dirs":Landroid/text/Layout$Directions;
    move/from16 v0, v16

    if-le v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v5, v15, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 1538
    add-int/lit8 v15, v15, -0x1

    .line 1540
    :cond_0
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v3, v3

    if-ge v14, v3, :cond_3

    .line 1541
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v3, v3, v14

    add-int v13, v16, v3

    .line 1542
    .local v13, "here":I
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v14, 0x1

    aget v3, v3, v5

    const v5, 0x3ffffff

    and-int/2addr v3, v5

    add-int v18, v13, v3

    .line 1544
    .local v18, "there":I
    move/from16 v0, v18

    if-le v0, v15, :cond_1

    .line 1545
    move/from16 v18, v15

    .line 1547
    :cond_1
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    move/from16 v0, p3

    if-lt v0, v13, :cond_2

    .line 1548
    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1549
    .local v17, "st":I
    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1551
    .local v10, "en":I
    move/from16 v0, v17

    if-eq v0, v10, :cond_2

    .line 1552
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v3, v2, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v11

    .line 1553
    .local v11, "h1":F
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v3, v1, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v12

    .line 1555
    .local v12, "h2":F
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1556
    .local v4, "left":F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1558
    .local v6, "right":F
    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1540
    .end local v4    # "left":F
    .end local v6    # "right":F
    .end local v10    # "en":I
    .end local v11    # "h1":F
    .end local v12    # "h2":F
    .end local v17    # "st":I
    :cond_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    .line 1532
    .end local v13    # "here":I
    .end local v18    # "there":I
    :cond_3
    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 1995
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 1997
    .local v2, "ellipsisCount":I
    if-nez v2, :cond_0

    .line 1998
    return-void

    .line 2001
    :cond_0
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 2002
    .local v3, "ellipsisStart":I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 2004
    .local v5, "linestart":I
    move v4, v3

    .local v4, "i":I
    :goto_0
    add-int v6, v3, v2

    if-ge v4, v6, :cond_3

    .line 2007
    if-ne v4, v3, :cond_2

    .line 2008
    invoke-direct {p0, p6}, Landroid/text/Layout;->getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C

    move-result v1

    .line 2013
    :goto_1
    add-int v0, v4, v5

    .line 2015
    .local v0, "a":I
    if-lt v0, p1, :cond_1

    if-ge v0, p2, :cond_1

    .line 2016
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 2004
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2010
    .end local v0    # "a":I
    :cond_2
    const v1, 0xfeff

    .local v1, "c":C
    goto :goto_1

    .line 1994
    .end local v1    # "c":C
    :cond_3
    return-void
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 5
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 147
    .local v1, "need":F
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_2

    .line 148
    const/16 v4, 0xa

    invoke-static {p0, v4, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 150
    .local v2, "next":I
    if-gez v2, :cond_0

    .line 151
    move v2, p2

    .line 154
    :cond_0
    invoke-static {p3, p0, v0, v2}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F

    move-result v3

    .line 156
    .local v3, "w":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    .line 157
    move v1, v3

    .line 159
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 147
    move v0, v2

    goto :goto_0

    .line 162
    .end local v2    # "next":I
    .end local v3    # "w":F
    :cond_2
    return v1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)F
    .locals 5
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "urlPadding"    # I

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 182
    .local v1, "need":F
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_2

    .line 183
    const/16 v4, 0xa

    invoke-static {p0, v4, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 185
    .local v2, "next":I
    if-gez v2, :cond_0

    .line 186
    move v2, p2

    .line 189
    :cond_0
    invoke-static {p3, p0, v0, v2, p4}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;III)F

    move-result v3

    .line 191
    .local v3, "w":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    .line 192
    move v1, v3

    .line 194
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 182
    move v0, v2

    goto :goto_0

    .line 197
    .end local v2    # "next":I
    .end local v3    # "w":F
    :cond_2
    return v1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 134
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)F
    .locals 2
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "urlPadding"    # I

    .prologue
    .line 171
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)F

    move-result v0

    return v0
.end method

.method private getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C
    .locals 2
    .param p1, "method"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    const/4 v1, 0x0

    .line 1988
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    .line 1989
    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    aget-char v0, v0, v1

    .line 1988
    :goto_0
    return v0

    .line 1990
    :cond_0
    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method private getHorizontal(IZIZ)F
    .locals 14
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "line"    # I
    .param p4, "clamped"    # Z

    .prologue
    .line 983
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 984
    .local v4, "start":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 985
    .local v5, "end":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 986
    .local v6, "dir":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    .line 987
    .local v8, "hasTabOrEmoji":Z
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 989
    .local v7, "directions":Landroid/text/Layout$Directions;
    const/4 v9, 0x0

    .line 990
    .local v9, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v8, :cond_0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    .line 993
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/TabStopSpan;

    .line 994
    .local v12, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v2, v12

    if-lez v2, :cond_0

    .line 995
    new-instance v9, Landroid/text/Layout$TabStops;

    .end local v9    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v2, 0x14

    invoke-direct {v9, v2, v12}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 999
    .end local v12    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 1000
    .local v1, "tl":Landroid/text/TextLine;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1001
    sub-int v2, p1, v4

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    .line 1002
    .local v13, "wid":F
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1004
    if-eqz p4, :cond_1

    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    cmpl-float v2, v13, v2

    if-lez v2, :cond_1

    .line 1005
    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v13, v2

    .line 1007
    :cond_1
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v10

    .line 1008
    .local v10, "left":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v11

    .line 1010
    .local v11, "right":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v10, v11}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    return v2
.end method

.method private getHorizontal(IZZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "clamped"    # Z

    .prologue
    .line 977
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 979
    .local v0, "line":I
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 10
    .param p1, "line"    # I
    .param p2, "tabStops"    # Landroid/text/Layout$TabStops;
    .param p3, "full"    # Z

    .prologue
    .line 1139
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1140
    .local v3, "start":I
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1141
    .local v4, "end":I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 1142
    .local v7, "hasTabsOrEmoji":Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1143
    .local v6, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1145
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1146
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v9

    .line 1148
    .local v9, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1149
    return v9

    .line 1140
    .end local v0    # "tl":Landroid/text/TextLine;
    .end local v4    # "end":I
    .end local v5    # "dir":I
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v7    # "hasTabsOrEmoji":Z
    .end local v9    # "width":F
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    .restart local v4    # "end":I
    goto :goto_0
.end method

.method private getLineExtent(IZ)F
    .locals 12
    .param p1, "line"    # I
    .param p2, "full"    # Z

    .prologue
    const/4 v11, 0x0

    .line 1103
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1104
    .local v3, "start":I
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1106
    .local v4, "end":I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 1107
    .local v7, "hasTabsOrEmoji":Z
    const/4 v8, 0x0

    .line 1108
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v7, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 1111
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/TabStopSpan;

    .line 1112
    .local v9, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v1, v9

    if-lez v1, :cond_0

    .line 1113
    new-instance v8, Landroid/text/Layout$TabStops;

    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v1, 0x14

    invoke-direct {v8, v1, v9}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 1116
    .end local v9    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1118
    .local v6, "directions":Landroid/text/Layout$Directions;
    if-nez v6, :cond_2

    .line 1119
    const/4 v1, 0x0

    return v1

    .line 1104
    .end local v4    # "end":I
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v7    # "hasTabsOrEmoji":Z
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    .restart local v4    # "end":I
    goto :goto_0

    .line 1121
    .restart local v6    # "directions":Landroid/text/Layout$Directions;
    .restart local v7    # "hasTabsOrEmoji":Z
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1123
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1124
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1125
    invoke-virtual {v0, v11}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 1126
    .local v10, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1127
    return v10
.end method

.method private getLineStartPos(III)I
    .locals 11
    .param p1, "line"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 609
    .local v0, "align":Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 611
    .local v1, "dir":I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_2

    .line 612
    const/4 v9, 0x1

    if-ne v1, v9, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 618
    :cond_0
    :goto_0
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_5

    .line 619
    const/4 v9, 0x1

    if-ne v1, v9, :cond_4

    .line 620
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v9}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v9

    add-int v8, p2, v9

    .line 650
    .local v8, "x":I
    :goto_1
    return v8

    .line 612
    .end local v8    # "x":I
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 613
    :cond_2
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_0

    .line 614
    const/4 v9, 0x1

    if-ne v1, v9, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 622
    :cond_4
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v9}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v9

    add-int v8, p3, v9

    .restart local v8    # "x":I
    goto :goto_1

    .line 625
    .end local v8    # "x":I
    :cond_5
    const/4 v7, 0x0

    .line 626
    .local v7, "tabStops":Landroid/text/Layout$TabStops;
    iget-boolean v9, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v9, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 627
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 628
    .local v4, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 629
    .local v5, "start":I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v9

    .line 630
    const-class v10, Landroid/text/style/TabStopSpan;

    .line 629
    invoke-interface {v4, v5, v9, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 632
    .local v3, "spanEnd":I
    const-class v9, Landroid/text/style/TabStopSpan;

    .line 631
    invoke-static {v4, v5, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    .line 633
    .local v6, "tabSpans":[Landroid/text/style/TabStopSpan;
    array-length v9, v6

    if-lez v9, :cond_6

    .line 634
    new-instance v7, Landroid/text/Layout$TabStops;

    .end local v7    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v9, 0x14

    invoke-direct {v7, v9, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 637
    .end local v3    # "spanEnd":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "start":I
    .end local v6    # "tabSpans":[Landroid/text/style/TabStopSpan;
    :cond_6
    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v9}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v9

    float-to-int v2, v9

    .line 638
    .local v2, "max":I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_8

    .line 639
    const/4 v9, 0x1

    if-ne v1, v9, :cond_7

    .line 640
    sub-int v9, p3, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int v8, v9, v10

    .restart local v8    # "x":I
    goto :goto_1

    .line 643
    .end local v8    # "x":I
    :cond_7
    sub-int v9, p2, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int v8, v9, v10

    .restart local v8    # "x":I
    goto :goto_1

    .line 646
    .end local v8    # "x":I
    :cond_8
    and-int/lit8 v2, v2, -0x2

    .line 647
    add-int v9, p2, p3

    sub-int/2addr v9, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    shr-int v8, v9, v10

    .restart local v8    # "x":I
    goto :goto_1
.end method

.method private getLineVisibleEnd(III)I
    .locals 3
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1292
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1294
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    .line 1295
    return p3

    .line 1298
    .local v0, "ch":C
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .end local v0    # "ch":C
    :cond_1
    if-le p3, p2, :cond_4

    .line 1299
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1301
    .restart local v0    # "ch":C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 1302
    add-int/lit8 v2, p3, -0x1

    return v2

    .line 1306
    :cond_2
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1680

    if-eq v0, v2, :cond_0

    .line 1307
    const/16 v2, 0x2000

    if-gt v2, v0, :cond_3

    const/16 v2, 0x200a

    if-le v0, v2, :cond_5

    .line 1308
    :cond_3
    :goto_0
    const/16 v2, 0x205f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3000

    if-eq v0, v2, :cond_0

    .line 1314
    .end local v0    # "ch":C
    :cond_4
    return p3

    .line 1307
    .restart local v0    # "ch":C
    :cond_5
    const/16 v2, 0x2007

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method

.method private getOffsetAtStartOf(I)I
    .locals 9
    .param p1, "offset"    # I

    .prologue
    const/4 v7, 0x0

    .line 1404
    if-nez p1, :cond_0

    .line 1405
    return v7

    .line 1407
    :cond_0
    iget-object v6, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1408
    .local v6, "text":Ljava/lang/CharSequence;
    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1410
    .local v0, "c":C
    const v7, 0xdc00

    if-lt v0, v7, :cond_1

    const v7, 0xdfff

    if-gt v0, v7, :cond_1

    .line 1411
    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1413
    .local v1, "c1":C
    const v7, 0xd800

    if-lt v1, v7, :cond_1

    const v7, 0xdbff

    if-gt v1, v7, :cond_1

    .line 1414
    add-int/lit8 p1, p1, -0x1

    .line 1417
    .end local v1    # "c1":C
    :cond_1
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_3

    move-object v7, v6

    .line 1418
    check-cast v7, Landroid/text/Spanned;

    .line 1419
    const-class v8, Landroid/text/style/ReplacementSpan;

    .line 1418
    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 1421
    .local v4, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_3

    move-object v7, v6

    .line 1422
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, "start":I
    move-object v7, v6

    .line 1423
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1425
    .local v2, "end":I
    if-ge v5, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 1426
    move p1, v5

    .line 1421
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1430
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v5    # "start":I
    :cond_3
    return p1
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .locals 13
    .param p1, "caret"    # I
    .param p2, "toLeft"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1350
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 1351
    .local v10, "line":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1352
    .local v3, "lineStart":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1353
    .local v4, "lineEnd":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1355
    .local v5, "lineDir":I
    const/4 v11, 0x0

    .line 1356
    .local v11, "lineChanged":Z
    const/4 v1, -0x1

    if-ne v5, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-ne p2, v1, :cond_3

    const/4 v9, 0x1

    .line 1358
    .local v9, "advance":Z
    :goto_1
    if-eqz v9, :cond_5

    .line 1359
    if-ne p1, v4, :cond_0

    .line 1360
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_4

    .line 1361
    const/4 v11, 0x1

    .line 1362
    add-int/lit8 v10, v10, 0x1

    .line 1378
    :cond_0
    :goto_2
    if-eqz v11, :cond_1

    .line 1379
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1380
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1381
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v12

    .line 1382
    .local v12, "newDir":I
    if-eq v12, v5, :cond_1

    .line 1386
    if-eqz p2, :cond_7

    const/4 p2, 0x0

    .line 1387
    .local p2, "toLeft":Z
    :goto_3
    move v5, v12

    .line 1391
    .end local v12    # "newDir":I
    .end local p2    # "toLeft":Z
    :cond_1
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1393
    .local v6, "directions":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1395
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1396
    sub-int v1, p1, v3

    invoke-virtual {v0, v1, p2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int p1, v3, v1

    .line 1397
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    move-result-object v0

    .line 1398
    return p1

    .end local v0    # "tl":Landroid/text/TextLine;
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v9    # "advance":Z
    .local p2, "toLeft":Z
    :cond_2
    move v1, v7

    .line 1356
    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "advance":Z
    goto :goto_1

    .line 1364
    :cond_4
    return p1

    .line 1368
    :cond_5
    if-ne p1, v3, :cond_0

    .line 1369
    if-lez v10, :cond_6

    .line 1370
    const/4 v11, 0x1

    .line 1371
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 1373
    :cond_6
    return p1

    .line 1386
    .restart local v12    # "newDir":I
    :cond_7
    const/4 p2, 0x1

    .local p2, "toLeft":Z
    goto :goto_3
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 16
    .param p1, "line"    # I

    .prologue
    .line 1693
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v14, :cond_0

    .line 1694
    const/4 v14, 0x0

    return v14

    .line 1696
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    .line 1698
    .local v11, "spanned":Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1699
    .local v5, "lineStart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1701
    .local v4, "lineEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    .line 1700
    invoke-interface {v11, v5, v4, v14}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .line 1703
    .local v9, "spanEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    .line 1702
    invoke-static {v11, v5, v9, v14}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    .line 1704
    .local v12, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v14, v12

    if-nez v14, :cond_1

    .line 1705
    const/4 v14, 0x0

    return v14

    .line 1708
    :cond_1
    const/4 v6, 0x0

    .line 1710
    .local v6, "margin":I
    if-eqz v5, :cond_3

    .line 1711
    add-int/lit8 v14, v5, -0x1

    invoke-interface {v11, v14}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_4

    const/4 v3, 0x1

    .line 1713
    .local v3, "isFirstParaLine":Z
    :goto_0
    move v13, v3

    .line 1714
    .local v13, "useFirstLineMargin":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v14, v12

    if-ge v2, v14, :cond_6

    .line 1715
    aget-object v14, v12, v2

    instance-of v14, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_2

    .line 1716
    aget-object v14, v12, v2

    invoke-interface {v11, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 1717
    .local v7, "spStart":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 1718
    .local v10, "spanLine":I
    aget-object v14, v12, v2

    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v1

    .line 1720
    .local v1, "count":I
    add-int v14, v10, v1

    move/from16 v0, p1

    if-ge v0, v14, :cond_5

    const/4 v14, 0x1

    :goto_2
    or-int/2addr v13, v14

    .line 1714
    .end local v1    # "count":I
    .end local v7    # "spStart":I
    .end local v10    # "spanLine":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1710
    .end local v2    # "i":I
    .end local v3    # "isFirstParaLine":Z
    .end local v13    # "useFirstLineMargin":Z
    :cond_3
    const/4 v3, 0x1

    .restart local v3    # "isFirstParaLine":Z
    goto :goto_0

    .line 1711
    .end local v3    # "isFirstParaLine":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isFirstParaLine":Z
    goto :goto_0

    .line 1720
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v7    # "spStart":I
    .restart local v10    # "spanLine":I
    .restart local v13    # "useFirstLineMargin":Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .line 1723
    .end local v1    # "count":I
    .end local v7    # "spStart":I
    .end local v10    # "spanLine":I
    :cond_6
    const/4 v2, 0x0

    :goto_3
    array-length v14, v12

    if-ge v2, v14, :cond_7

    .line 1724
    aget-object v8, v12, v2

    .line 1725
    .local v8, "span":Landroid/text/style/LeadingMarginSpan;
    invoke-interface {v8, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v6, v14

    .line 1723
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1728
    .end local v8    # "span":Landroid/text/style/LeadingMarginSpan;
    :cond_7
    return v6
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1980
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 1981
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1984
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isLineEndOffset(Landroid/text/Layout;I)Z
    .locals 4
    .param p0, "layout"    # Landroid/text/Layout;
    .param p1, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 2293
    if-nez p0, :cond_0

    .line 2294
    return v3

    .line 2296
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 2297
    .local v1, "offsetLine":I
    if-lez v1, :cond_2

    add-int/lit8 v2, v1, -0x1

    :goto_0
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 2299
    .local v0, "lineEnd":I
    if-ne v0, p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .end local v0    # "lineEnd":I
    :cond_2
    move v2, v3

    .line 2297
    goto :goto_0
.end method

.method static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F
    .locals 23
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1734
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    .line 1735
    .local v3, "mt":Landroid/text/MeasuredText;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v22

    .line 1737
    .local v22, "tl":Landroid/text/TextLine;
    :try_start_0
    sget-object v7, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 1740
    iget-boolean v4, v3, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v4, :cond_0

    .line 1741
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1742
    .local v10, "directions":Landroid/text/Layout$Directions;
    const/4 v9, 0x1

    .line 1748
    .local v9, "dir":I
    :goto_0
    iget-object v13, v3, Landroid/text/MeasuredText;->mChars:[C

    .line 1749
    .local v13, "chars":[C
    iget v15, v3, Landroid/text/MeasuredText;->mLen:I

    .line 1750
    .local v15, "len":I
    const/4 v11, 0x0

    .line 1751
    .local v11, "hasTabs":Z
    const/4 v12, 0x0

    .line 1753
    .local v12, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v17, 0x0

    .line 1754
    .local v17, "margin":I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_1

    .line 1755
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v19, v0

    .line 1757
    .local v19, "spanned":Landroid/text/Spanned;
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    .line 1756
    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/style/LeadingMarginSpan;

    .line 1758
    .local v20, "spans":[Landroid/text/style/LeadingMarginSpan;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v5, v0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v16, v20, v4

    .line 1759
    .local v16, "lms":Landroid/text/style/LeadingMarginSpan;
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    add-int v17, v17, v6

    .line 1758
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1744
    .end local v9    # "dir":I
    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .end local v11    # "hasTabs":Z
    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v13    # "chars":[C
    .end local v15    # "len":I
    .end local v16    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v17    # "margin":I
    .end local v19    # "spanned":Landroid/text/Spanned;
    .end local v20    # "spans":[Landroid/text/style/LeadingMarginSpan;
    :cond_0
    iget v4, v3, Landroid/text/MeasuredText;->mDir:I

    iget-object v5, v3, Landroid/text/MeasuredText;->mLevels:[B

    .line 1745
    iget-object v7, v3, Landroid/text/MeasuredText;->mChars:[C

    iget v9, v3, Landroid/text/MeasuredText;->mLen:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1744
    invoke-static/range {v4 .. v9}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v10

    .line 1746
    .restart local v10    # "directions":Landroid/text/Layout$Directions;
    iget v9, v3, Landroid/text/MeasuredText;->mDir:I

    .restart local v9    # "dir":I
    goto :goto_0

    .line 1762
    .restart local v11    # "hasTabs":Z
    .restart local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v13    # "chars":[C
    .restart local v15    # "len":I
    .restart local v17    # "margin":I
    :cond_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v15, :cond_2

    .line 1763
    aget-char v4, v13, v14

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    .line 1764
    const/4 v11, 0x1

    .line 1765
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_2

    .line 1766
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v19, v0

    .line 1768
    .restart local v19    # "spanned":Landroid/text/Spanned;
    const-class v4, Landroid/text/style/TabStopSpan;

    .line 1767
    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v18

    .line 1770
    .local v18, "spanEnd":I
    const-class v4, Landroid/text/style/TabStopSpan;

    .line 1769
    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/TabStopSpan;

    .line 1771
    .local v21, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v21

    array-length v4, v0

    if-lez v4, :cond_2

    .line 1772
    new-instance v12, Landroid/text/Layout$TabStops;

    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v4, 0x14

    move-object/from16 v0, v21

    invoke-direct {v12, v4, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .end local v18    # "spanEnd":I
    .end local v19    # "spanned":Landroid/text/Spanned;
    .end local v21    # "spans":[Landroid/text/style/TabStopSpan;
    :cond_2
    move-object/from16 v4, v22

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 1778
    invoke-virtual/range {v4 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1779
    move/from16 v0, v17

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    add-float/2addr v4, v5

    .line 1781
    invoke-static/range {v22 .. v22}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1782
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1779
    return v4

    .line 1762
    .restart local v12    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1780
    .end local v9    # "dir":I
    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .end local v11    # "hasTabs":Z
    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v13    # "chars":[C
    .end local v14    # "i":I
    .end local v15    # "len":I
    .end local v17    # "margin":I
    :catchall_0
    move-exception v4

    .line 1781
    invoke-static/range {v22 .. v22}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1782
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1780
    throw v4
.end method

.method protected static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;III)F
    .locals 23
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "urlPadding"    # I

    .prologue
    .line 1792
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    .line 1793
    .local v3, "mt":Landroid/text/MeasuredText;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v22

    .line 1795
    .local v22, "tl":Landroid/text/TextLine;
    :try_start_0
    sget-object v7, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 1798
    iget-boolean v4, v3, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v4, :cond_0

    .line 1799
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1800
    .local v10, "directions":Landroid/text/Layout$Directions;
    const/4 v9, 0x1

    .line 1806
    .local v9, "dir":I
    :goto_0
    iget-object v13, v3, Landroid/text/MeasuredText;->mChars:[C

    .line 1807
    .local v13, "chars":[C
    iget v15, v3, Landroid/text/MeasuredText;->mLen:I

    .line 1808
    .local v15, "len":I
    const/4 v11, 0x0

    .line 1809
    .local v11, "hasTabs":Z
    const/4 v12, 0x0

    .line 1811
    .local v12, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v17, 0x0

    .line 1812
    .local v17, "margin":I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_1

    .line 1813
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v19, v0

    .line 1815
    .local v19, "spanned":Landroid/text/Spanned;
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    .line 1814
    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/style/LeadingMarginSpan;

    .line 1816
    .local v20, "spans":[Landroid/text/style/LeadingMarginSpan;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v5, v0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v16, v20, v4

    .line 1817
    .local v16, "lms":Landroid/text/style/LeadingMarginSpan;
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    add-int v17, v17, v6

    .line 1816
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1802
    .end local v9    # "dir":I
    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .end local v11    # "hasTabs":Z
    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v13    # "chars":[C
    .end local v15    # "len":I
    .end local v16    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v17    # "margin":I
    .end local v19    # "spanned":Landroid/text/Spanned;
    .end local v20    # "spans":[Landroid/text/style/LeadingMarginSpan;
    :cond_0
    iget v4, v3, Landroid/text/MeasuredText;->mDir:I

    iget-object v5, v3, Landroid/text/MeasuredText;->mLevels:[B

    .line 1803
    iget-object v7, v3, Landroid/text/MeasuredText;->mChars:[C

    iget v9, v3, Landroid/text/MeasuredText;->mLen:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1802
    invoke-static/range {v4 .. v9}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v10

    .line 1804
    .restart local v10    # "directions":Landroid/text/Layout$Directions;
    iget v9, v3, Landroid/text/MeasuredText;->mDir:I

    .restart local v9    # "dir":I
    goto :goto_0

    .line 1820
    .restart local v11    # "hasTabs":Z
    .restart local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v13    # "chars":[C
    .restart local v15    # "len":I
    .restart local v17    # "margin":I
    :cond_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v15, :cond_2

    .line 1821
    aget-char v4, v13, v14

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    .line 1822
    const/4 v11, 0x1

    .line 1823
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_2

    .line 1824
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v19, v0

    .line 1826
    .restart local v19    # "spanned":Landroid/text/Spanned;
    const-class v4, Landroid/text/style/TabStopSpan;

    .line 1825
    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v18

    .line 1828
    .local v18, "spanEnd":I
    const-class v4, Landroid/text/style/TabStopSpan;

    .line 1827
    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/TabStopSpan;

    .line 1829
    .local v21, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v21

    array-length v4, v0

    if-lez v4, :cond_2

    .line 1830
    new-instance v12, Landroid/text/Layout$TabStops;

    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v4, 0x14

    move-object/from16 v0, v21

    invoke-direct {v12, v4, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 1837
    .end local v18    # "spanEnd":I
    .end local v19    # "spanned":Landroid/text/Spanned;
    .end local v21    # "spans":[Landroid/text/style/TabStopSpan;
    :cond_2
    move-object/from16 v0, v22

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->setUrlPadding(I)V

    move-object/from16 v4, v22

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 1839
    invoke-virtual/range {v4 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1840
    move/from16 v0, v17

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    add-float/2addr v4, v5

    .line 1842
    invoke-static/range {v22 .. v22}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1843
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1840
    return v4

    .line 1820
    .restart local v12    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1841
    .end local v9    # "dir":I
    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .end local v11    # "hasTabs":Z
    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v13    # "chars":[C
    .end local v14    # "i":I
    .end local v15    # "len":I
    .end local v17    # "margin":I
    :catchall_0
    move-exception v4

    .line 1842
    invoke-static/range {v22 .. v22}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1843
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1841
    throw v4
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "h"    # F
    .param p4, "tabs"    # [Ljava/lang/Object;

    .prologue
    const/high16 v5, 0x41a00000    # 20.0f

    .line 1923
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 1924
    .local v2, "nh":F
    const/4 v0, 0x0

    .line 1926
    .local v0, "alltabs":Z
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_4

    .line 1927
    if-nez p4, :cond_0

    .line 1928
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 1929
    const/4 v0, 0x1

    .line 1932
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_3

    .line 1933
    if-nez v0, :cond_2

    .line 1934
    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_2

    .line 1932
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1938
    :cond_2
    aget-object v4, p4, v1

    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 1940
    .local v3, "where":I
    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_1

    .line 1941
    int-to-float v2, v3

    goto :goto_1

    .line 1944
    .end local v3    # "where":I
    :cond_3
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    .line 1945
    return v2

    .line 1948
    .end local v1    # "i":I
    :cond_4
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    return v4
.end method

.method private primaryIsTrailingPrevious(I)Z
    .locals 13
    .param p1, "offset"    # I

    .prologue
    const v12, 0x3ffffff

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 890
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 891
    .local v4, "line":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 892
    .local v6, "lineStart":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 893
    .local v5, "lineEnd":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    iget-object v7, v11, Landroid/text/Layout$Directions;->mDirections:[I

    .line 895
    .local v7, "runs":[I
    const/4 v1, -0x1

    .line 896
    .local v1, "levelAt":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v11, v7

    if-ge v0, v11, :cond_2

    .line 897
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 898
    .local v8, "start":I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 899
    .local v3, "limit":I
    if-le v3, v5, :cond_0

    .line 900
    move v3, v5

    .line 902
    :cond_0
    if-lt p1, v8, :cond_5

    if-ge p1, v3, :cond_5

    .line 903
    if-le p1, v8, :cond_1

    .line 905
    return v10

    .line 907
    :cond_1
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v1, v11, 0x3f

    .line 911
    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_2
    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    .line 913
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v9, :cond_6

    const/4 v1, 0x0

    .line 917
    :cond_3
    :goto_1
    const/4 v2, -0x1

    .line 918
    .local v2, "levelBefore":I
    if-ne p1, v6, :cond_8

    .line 919
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v9, :cond_7

    const/4 v2, 0x0

    .line 935
    :cond_4
    :goto_2
    if-ge v2, v1, :cond_b

    :goto_3
    return v9

    .line 896
    .end local v2    # "levelBefore":I
    .restart local v3    # "limit":I
    .restart local v8    # "start":I
    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 913
    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .line 919
    .restart local v2    # "levelBefore":I
    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    .line 921
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 922
    const/4 v0, 0x0

    :goto_4
    array-length v11, v7

    if-ge v0, v11, :cond_4

    .line 923
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 924
    .restart local v8    # "start":I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 925
    .restart local v3    # "limit":I
    if-le v3, v5, :cond_9

    .line 926
    move v3, v5

    .line 928
    :cond_9
    if-lt p1, v8, :cond_a

    if-ge p1, v3, :cond_a

    .line 929
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v2, v11, 0x3f

    .line 930
    goto :goto_2

    .line 922
    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_b
    move v9, v10

    .line 935
    goto :goto_3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 283
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v8

    .line 300
    .local v8, "lineRange":J
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    .line 301
    .local v5, "firstLine":I
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 302
    .local v6, "lastLine":I
    if-gez v6, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 304
    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 306
    sget-boolean v0, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    .line 307
    const-string/jumbo v0, "Layout"

    const-string/jumbo v1, "[draw] start"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_1
    invoke-virtual {p0, p1, v5, v6}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 310
    sget-boolean v0, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v0, :cond_2

    .line 311
    const-string/jumbo v0, "Layout"

    const-string/jumbo v1, "[draw] end"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_2
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I
    .param p5, "firstLine"    # I
    .param p6, "lastLine"    # I

    .prologue
    .line 491
    if-nez p2, :cond_3

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->setUrlSelected(Z)V

    .line 498
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v3, :cond_8

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v3, :cond_0

    .line 500
    new-instance v3, Landroid/text/SpanSet;

    const-class v5, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v3, v5}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 503
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    .line 504
    .local v10, "buffer":Landroid/text/Spanned;
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v21

    .line 505
    .local v21, "textLength":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v10, v5, v0}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 507
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v3, :cond_7

    .line 508
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v16

    .line 509
    .local v16, "previousLineBottom":I
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v17

    .line 510
    .local v17, "previousLineEnd":I
    sget-object v19, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 511
    .local v19, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v20, 0x0

    .line 512
    .local v20, "spansLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 513
    .local v4, "paint":Landroid/text/TextPaint;
    const/16 v18, 0x0

    .line 514
    .local v18, "spanEnd":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    .line 515
    .local v6, "width":I
    move/from16 v13, p5

    .local v13, "i":I
    :goto_1
    move/from16 v0, p6

    if-gt v13, v0, :cond_7

    .line 516
    move/from16 v11, v17

    .line 517
    .local v11, "start":I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    .line 518
    .local v12, "end":I
    move/from16 v17, v12

    .line 520
    move/from16 v7, v16

    .line 521
    .local v7, "ltop":I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 522
    .local v9, "lbottom":I
    move/from16 v16, v9

    .line 523
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    .line 525
    .local v8, "lbaseline":I
    move/from16 v0, v18

    if-lt v11, v0, :cond_5

    .line 528
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    move/from16 v0, v21

    invoke-virtual {v3, v11, v0}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v18

    .line 530
    const/16 v20, 0x0

    .line 532
    if-ne v11, v12, :cond_1

    if-nez v11, :cond_5

    .line 535
    :cond_1
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v14, v3, :cond_5

    .line 538
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v14

    if-ge v3, v12, :cond_2

    .line 539
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v14

    if-gt v3, v11, :cond_4

    .line 535
    :cond_2
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 491
    .end local v4    # "paint":Landroid/text/TextPaint;
    .end local v6    # "width":I
    .end local v7    # "ltop":I
    .end local v8    # "lbaseline":I
    .end local v9    # "lbottom":I
    .end local v10    # "buffer":Landroid/text/Spanned;
    .end local v11    # "start":I
    .end local v12    # "end":I
    .end local v13    # "i":I
    .end local v14    # "j":I
    .end local v16    # "previousLineBottom":I
    .end local v17    # "previousLineEnd":I
    .end local v18    # "spanEnd":I
    .end local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v20    # "spansLength":I
    .end local v21    # "textLength":I
    :cond_3
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 541
    .restart local v4    # "paint":Landroid/text/TextPaint;
    .restart local v6    # "width":I
    .restart local v7    # "ltop":I
    .restart local v8    # "lbaseline":I
    .restart local v9    # "lbottom":I
    .restart local v10    # "buffer":Landroid/text/Spanned;
    .restart local v11    # "start":I
    .restart local v12    # "end":I
    .restart local v13    # "i":I
    .restart local v14    # "j":I
    .restart local v16    # "previousLineBottom":I
    .restart local v17    # "previousLineEnd":I
    .restart local v18    # "spanEnd":I
    .restart local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v20    # "spansLength":I
    .restart local v21    # "textLength":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v3, [Landroid/text/style/LineBackgroundSpan;

    aget-object v3, v3, v14

    .line 540
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    check-cast v19, [Landroid/text/style/ParagraphStyle;

    .line 542
    .restart local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 547
    .end local v14    # "j":I
    :cond_5
    const/4 v15, 0x0

    .local v15, "n":I
    :goto_4
    move/from16 v0, v20

    if-ge v15, v0, :cond_6

    .line 548
    aget-object v2, v19, v15

    check-cast v2, Landroid/text/style/LineBackgroundSpan;

    .line 549
    .local v2, "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v13}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 547
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 515
    .end local v2    # "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 555
    .end local v4    # "paint":Landroid/text/TextPaint;
    .end local v6    # "width":I
    .end local v7    # "ltop":I
    .end local v8    # "lbaseline":I
    .end local v9    # "lbottom":I
    .end local v11    # "start":I
    .end local v12    # "end":I
    .end local v13    # "i":I
    .end local v15    # "n":I
    .end local v16    # "previousLineBottom":I
    .end local v17    # "previousLineEnd":I
    .end local v18    # "spanEnd":I
    .end local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v20    # "spansLength":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v3}, Landroid/text/SpanSet;->recycle()V

    .line 560
    .end local v10    # "buffer":Landroid/text/Spanned;
    .end local v21    # "textLength":I
    :cond_8
    if-eqz p2, :cond_b

    .line 561
    if-eqz p4, :cond_9

    const/4 v3, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 562
    :cond_9
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mSectionBoundPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mSectionBoundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 567
    :cond_a
    if-eqz p4, :cond_b

    const/4 v3, 0x0

    move/from16 v0, p4

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 489
    :cond_b
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 47
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    .prologue
    .line 319
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v35

    .line 320
    .local v35, "previousLineBottom":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v36

    .line 321
    .local v36, "previousLineEnd":I
    sget-object v39, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 322
    .local v39, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v38, 0x0

    .line 323
    .local v38, "spanEnd":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 324
    .local v5, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 326
    .local v11, "buf":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v34, v0

    .line 327
    .local v34, "paraAlign":Landroid/text/Layout$Alignment;
    const/16 v27, 0x0

    .line 328
    .local v27, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v42, 0x0

    .line 330
    .local v42, "tabStopsIsInitialized":Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v44

    .line 334
    .local v44, "tl":Landroid/text/TextLine;
    move/from16 v31, p2

    .local v31, "lineNum":I
    move-object/from16 v41, v27

    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .local v41, "tabStops":Landroid/text/Layout$TabStops;
    :goto_0
    move/from16 v0, v31

    move/from16 v1, p3

    if-gt v0, v1, :cond_1a

    .line 335
    move/from16 v12, v36

    .line 336
    .local v12, "start":I
    add-int/lit8 v4, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v36

    .line 337
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v36

    invoke-direct {v0, v1, v12, v2}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v13

    .line 339
    .local v13, "end":I
    move/from16 v8, v35

    .line 340
    .local v8, "ltop":I
    add-int/lit8 v4, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 341
    .local v10, "lbottom":I
    move/from16 v35, v10

    .line 342
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v4

    sub-int v9, v10, v4

    .line 344
    .local v9, "lbaseline":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 345
    .local v7, "dir":I
    const/16 v18, 0x0

    .line 346
    .local v18, "left":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    .line 348
    .local v6, "right":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_a

    move-object/from16 v37, v11

    .line 349
    check-cast v37, Landroid/text/Spanned;

    .line 350
    .local v37, "sp":Landroid/text/Spanned;
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v43

    .line 351
    .local v43, "textLength":I
    if-eqz v12, :cond_0

    add-int/lit8 v4, v12, -0x1

    invoke-interface {v11, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v15, 0xa

    if-ne v4, v15, :cond_6

    :cond_0
    const/4 v14, 0x1

    .line 363
    .local v14, "isFirstParaLine":Z
    :goto_1
    move/from16 v0, v38

    if-lt v12, v0, :cond_3

    move/from16 v0, v31

    move/from16 v1, p2

    if-eq v0, v1, :cond_1

    if-eqz v14, :cond_3

    .line 365
    :cond_1
    const-class v4, Landroid/text/style/ParagraphStyle;

    .line 364
    move-object/from16 v0, v37

    move/from16 v1, v43

    invoke-interface {v0, v12, v1, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v38

    .line 366
    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v0, v12, v1, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    check-cast v39, [Landroid/text/style/ParagraphStyle;

    .line 368
    .restart local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v34, v0

    .line 369
    move-object/from16 v0, v39

    array-length v4, v0

    add-int/lit8 v33, v4, -0x1

    .local v33, "n":I
    :goto_2
    if-ltz v33, :cond_2

    .line 370
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v4, :cond_7

    .line 371
    aget-object v4, v39, v33

    check-cast v4, Landroid/text/style/AlignmentSpan;

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v34

    .line 376
    :cond_2
    const/16 v42, 0x0

    .line 381
    .end local v33    # "n":I
    :cond_3
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v30, v0

    .line 382
    .local v30, "length":I
    move/from16 v45, v14

    .line 383
    .local v45, "useFirstLineMargin":Z
    const/16 v33, 0x0

    .restart local v33    # "n":I
    :goto_3
    move/from16 v0, v33

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    .line 384
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v4, :cond_8

    .line 385
    aget-object v4, v39, v33

    check-cast v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v4}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v29

    .line 386
    .local v29, "count":I
    aget-object v4, v39, v33

    move-object/from16 v0, v37

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v40

    .line 389
    .local v40, "startLine":I
    add-int v4, v40, v29

    move/from16 v0, v31

    if-ge v0, v4, :cond_8

    .line 390
    const/16 v45, 0x1

    .line 395
    .end local v29    # "count":I
    .end local v40    # "startLine":I
    .end local v45    # "useFirstLineMargin":Z
    :cond_4
    const/16 v33, 0x0

    :goto_4
    move/from16 v0, v33

    move/from16 v1, v30

    if-ge v0, v1, :cond_a

    .line 396
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan;

    if-eqz v4, :cond_5

    .line 397
    aget-object v3, v39, v33

    check-cast v3, Landroid/text/style/LeadingMarginSpan;

    .line 398
    .local v3, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v4, -0x1

    if-ne v7, v4, :cond_9

    move-object/from16 v4, p1

    move-object/from16 v15, p0

    .line 399
    invoke-interface/range {v3 .. v15}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 402
    move/from16 v0, v45

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    sub-int/2addr v6, v4

    .line 395
    .end local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_5
    :goto_5
    add-int/lit8 v33, v33, 0x1

    goto :goto_4

    .line 351
    .end local v14    # "isFirstParaLine":Z
    .end local v30    # "length":I
    .end local v33    # "n":I
    :cond_6
    const/4 v14, 0x0

    .restart local v14    # "isFirstParaLine":Z
    goto/16 :goto_1

    .line 369
    .restart local v33    # "n":I
    :cond_7
    add-int/lit8 v33, v33, -0x1

    goto :goto_2

    .line 383
    .restart local v30    # "length":I
    .restart local v45    # "useFirstLineMargin":Z
    :cond_8
    add-int/lit8 v33, v33, 0x1

    goto :goto_3

    .end local v45    # "useFirstLineMargin":Z
    .restart local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_9
    move-object v15, v3

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, p0

    .line 404
    invoke-interface/range {v15 .. v27}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 407
    move/from16 v0, v45

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v18, v18, v4

    goto :goto_5

    .line 413
    .end local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v14    # "isFirstParaLine":Z
    .end local v30    # "length":I
    .end local v33    # "n":I
    .end local v37    # "sp":Landroid/text/Spanned;
    .end local v43    # "textLength":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v26

    .line 415
    .local v26, "hasTabOrEmoji":Z
    if-eqz v26, :cond_b

    if-eqz v42, :cond_10

    :cond_b
    move-object/from16 v27, v41

    .line 425
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .local v27, "tabStops":Landroid/text/Layout$TabStops;
    :goto_6
    move-object/from16 v28, v34

    .line 426
    .local v28, "align":Landroid/text/Layout$Alignment;
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_13

    .line 427
    const/4 v4, 0x1

    if-ne v7, v4, :cond_12

    .line 428
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 435
    :cond_c
    :goto_7
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_16

    .line 436
    const/4 v4, 0x1

    if-ne v7, v4, :cond_15

    .line 437
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v4

    add-int v46, v18, v4

    .line 457
    .local v46, "x":I
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mIsLineCenterVertical:Z

    if-eqz v4, :cond_d

    .line 458
    add-int v4, v10, v8

    int-to-float v4, v4

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v15

    sub-float/2addr v4, v15

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v15

    sub-float/2addr v4, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v4, v15

    float-to-int v9, v4

    .line 462
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 463
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v25

    .line 464
    .local v25, "directions":Landroid/text/Layout$Directions;
    sget-object v4, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_19

    .line 469
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getUrlPadding()I

    move-result v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/text/TextLine;->setUrlPadding(I)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isUrlSelected()Z

    move-result v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/text/TextLine;->setUrlSelected(Z)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getUrlSelectedColor()I

    move-result v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/text/TextLine;->setUrlSelectColor(I)V

    move-object/from16 v19, v44

    move-object/from16 v20, v5

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v7

    .line 473
    invoke-virtual/range {v19 .. v27}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 474
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v44

    move-object/from16 v20, p1

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    .line 476
    .end local v25    # "directions":Landroid/text/Layout$Directions;
    :goto_9
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 477
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_f

    .line 478
    const-string/jumbo v4, "Layout"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "[drawText] "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v46

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_f
    add-int/lit8 v31, v31, 0x1

    move-object/from16 v41, v27

    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    goto/16 :goto_0

    .line 416
    .end local v28    # "align":Landroid/text/Layout$Alignment;
    .end local v46    # "x":I
    :cond_10
    if-nez v41, :cond_11

    .line 417
    new-instance v27, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-direct {v0, v4, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 421
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    :goto_a
    const/16 v42, 0x1

    goto/16 :goto_6

    .line 419
    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_11
    const/16 v4, 0x14

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object/from16 v27, v41

    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_a

    .line 428
    .restart local v28    # "align":Landroid/text/Layout$Alignment;
    :cond_12
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto/16 :goto_7

    .line 429
    :cond_13
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_c

    .line 430
    const/4 v4, 0x1

    if-ne v7, v4, :cond_14

    .line 431
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto/16 :goto_7

    :cond_14
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto/16 :goto_7

    .line 439
    :cond_15
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v4

    add-int v46, v6, v4

    .restart local v46    # "x":I
    goto/16 :goto_8

    .line 442
    .end local v46    # "x":I
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v0, v4

    move/from16 v32, v0

    .line 443
    .local v32, "max":I
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_18

    .line 444
    const/4 v4, 0x1

    if-ne v7, v4, :cond_17

    .line 445
    sub-int v4, v6, v32

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v15}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v15

    add-int v46, v4, v15

    .restart local v46    # "x":I
    goto/16 :goto_8

    .line 447
    .end local v46    # "x":I
    :cond_17
    sub-int v4, v18, v32

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v15}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v15

    add-int v46, v4, v15

    .restart local v46    # "x":I
    goto/16 :goto_8

    .line 450
    .end local v46    # "x":I
    :cond_18
    and-int/lit8 v32, v32, -0x2

    .line 451
    add-int v4, v6, v18

    sub-int v4, v4, v32

    shr-int/lit8 v4, v4, 0x1

    .line 452
    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v15}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v15

    .line 451
    add-int v46, v4, v15

    .restart local v46    # "x":I
    goto/16 :goto_8

    .line 464
    .end local v32    # "max":I
    .restart local v25    # "directions":Landroid/text/Layout$Directions;
    :cond_19
    if-nez v26, :cond_e

    .line 466
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v9

    move/from16 v24, v0

    move-object/from16 v19, p1

    move-object/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v25, v5

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 482
    .end local v6    # "right":I
    .end local v7    # "dir":I
    .end local v8    # "ltop":I
    .end local v9    # "lbaseline":I
    .end local v10    # "lbottom":I
    .end local v12    # "start":I
    .end local v13    # "end":I
    .end local v18    # "left":I
    .end local v25    # "directions":Landroid/text/Layout$Directions;
    .end local v26    # "hasTabOrEmoji":Z
    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v28    # "align":Landroid/text/Layout$Alignment;
    .end local v46    # "x":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_1a
    invoke-static/range {v44 .. v44}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 318
    return-void
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "point"    # I
    .param p2, "dest"    # Landroid/graphics/Path;
    .param p3, "editingBuffer"    # Ljava/lang/CharSequence;

    .prologue
    .line 1458
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1460
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 1461
    .local v7, "line":I
    invoke-virtual {p0, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    .line 1462
    .local v8, "top":I
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1464
    .local v0, "bottom":I
    invoke-virtual {p0, v7}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v2

    .line 1465
    .local v2, "clamped":Z
    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v5, v9, v10

    .line 1466
    .local v5, "h1":F
    invoke-virtual {p0, p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v6, v9, v10

    .line 1468
    .local v6, "h2":F
    :goto_0
    const/4 v9, 0x1

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 1469
    const/16 v10, 0x800

    invoke-static {p3, v10}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v10

    .line 1468
    or-int v1, v9, v10

    .line 1470
    .local v1, "caps":I
    const/4 v9, 0x2

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1471
    .local v4, "fn":I
    const/4 v3, 0x0

    .line 1473
    .local v3, "dist":I
    if-nez v1, :cond_0

    if-eqz v4, :cond_2

    .line 1474
    :cond_0
    sub-int v9, v0, v8

    shr-int/lit8 v3, v9, 0x2

    .line 1476
    if-eqz v4, :cond_1

    .line 1477
    add-int/2addr v8, v3

    .line 1478
    :cond_1
    if-eqz v1, :cond_2

    .line 1479
    sub-int/2addr v0, v3

    .line 1482
    :cond_2
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_3

    .line 1483
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1484
    :cond_3
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v6, v9

    if-gez v9, :cond_4

    .line 1485
    const/high16 v6, 0x3f000000    # 0.5f

    .line 1487
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_8

    .line 1488
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1489
    int-to-float v9, v0

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1498
    :goto_1
    const/4 v9, 0x2

    if-ne v1, v9, :cond_9

    .line 1499
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1500
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1501
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1502
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1514
    :cond_5
    :goto_2
    const/4 v9, 0x2

    if-ne v4, v9, :cond_a

    .line 1515
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1516
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1517
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1518
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1457
    :cond_6
    :goto_3
    return-void

    .line 1466
    .end local v1    # "caps":I
    .end local v3    # "dist":I
    .end local v4    # "fn":I
    .end local v6    # "h2":F
    :cond_7
    move v6, v5

    .restart local v6    # "h2":F
    goto :goto_0

    .line 1491
    .restart local v1    # "caps":I
    .restart local v3    # "dist":I
    .restart local v4    # "fn":I
    :cond_8
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1492
    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1494
    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1495
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 1503
    :cond_9
    const/4 v9, 0x1

    if-ne v1, v9, :cond_5

    .line 1504
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1505
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1507
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1508
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1510
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1511
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 1519
    :cond_a
    const/4 v9, 0x1

    if-ne v4, v9, :cond_6

    .line 1520
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1521
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1523
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1524
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1526
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1527
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 681
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 701
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getHyphen(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 817
    const/4 v0, 0x0

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1338
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1329
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1321
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 747
    if-eqz p2, :cond_0

    .line 748
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 749
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 750
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 751
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 753
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1280
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v5, 0x0

    .line 1182
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, "high":I
    const/4 v2, -0x1

    .line 1184
    .local v2, "low":I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1185
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1187
    .local v0, "guess":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1188
    move v1, v0

    goto :goto_0

    .line 1190
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1193
    .end local v0    # "guess":I
    :cond_1
    if-gez v2, :cond_2

    .line 1194
    return v5

    .line 1196
    :cond_2
    return v2
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .prologue
    const/4 v5, 0x0

    .line 1159
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, "high":I
    const/4 v2, -0x1

    .line 1161
    .local v2, "low":I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1162
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1164
    .local v0, "guess":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1165
    move v1, v0

    goto :goto_0

    .line 1167
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1170
    .end local v0    # "guess":I
    :cond_1
    if-gez v2, :cond_2

    .line 1171
    return v5

    .line 1173
    :cond_2
    return v2
.end method

.method public getLineLeft(I)F
    .locals 8
    .param p1, "line"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1018
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 1019
    .local v1, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1021
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_0

    .line 1022
    return v6

    .line 1023
    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2

    .line 1024
    if-ne v1, v7, :cond_1

    .line 1025
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    return v5

    .line 1027
    :cond_1
    return v6

    .line 1028
    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 1029
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    return v5

    .line 1030
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_5

    .line 1031
    if-ne v1, v7, :cond_4

    .line 1032
    return v6

    .line 1034
    :cond_4
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    return v5

    .line 1036
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 1037
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1038
    .local v4, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 1040
    .local v3, "max":I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    return v5
.end method

.method public getLineMax(I)F
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1080
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 1081
    .local v0, "margin":F
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 1082
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .end local v1    # "signedExtent":F
    :goto_0
    add-float v2, v0, v1

    return v2

    .restart local v1    # "signedExtent":F
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 579
    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    .line 580
    :try_start_0
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 582
    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-static {v4, v6}, Landroid/text/TextUtils;->packRangeInLong(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    monitor-exit v5

    return-wide v6

    .line 585
    :cond_0
    :try_start_1
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 586
    .local v2, "dtop":I
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, "dbottom":I
    monitor-exit v5

    .line 589
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 590
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 592
    .local v0, "bottom":I
    if-lt v3, v0, :cond_1

    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    .line 579
    .end local v0    # "bottom":I
    .end local v1    # "dbottom":I
    .end local v2    # "dtop":I
    .end local v3    # "top":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 593
    .restart local v0    # "bottom":I
    .restart local v1    # "dbottom":I
    .restart local v2    # "dtop":I
    .restart local v3    # "top":I
    :cond_1
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4
.end method

.method public getLineRight(I)F
    .locals 7
    .param p1, "line"    # I

    .prologue
    const/4 v6, -0x1

    .line 1049
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 1050
    .local v1, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1052
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_0

    .line 1053
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    return v5

    .line 1054
    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2

    .line 1055
    if-ne v1, v6, :cond_1

    .line 1056
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    return v5

    .line 1058
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    return v5

    .line 1059
    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 1060
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    return v5

    .line 1061
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_5

    .line 1062
    if-ne v1, v6, :cond_4

    .line 1063
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    return v5

    .line 1065
    :cond_4
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    return v5

    .line 1067
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 1068
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1069
    .local v4, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 1071
    .local v3, "max":I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    return v5
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1288
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1090
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 1091
    .local v0, "margin":F
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 1092
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .end local v1    # "signedExtent":F
    :goto_0
    add-float v2, v0, v1

    return v2

    .restart local v1    # "signedExtent":F
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 20
    .param p1, "line"    # I
    .param p2, "horiz"    # F

    .prologue
    .line 1205
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v18

    add-int/lit8 v13, v18, -0x1

    .line 1206
    .local v13, "max":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 1207
    .local v14, "min":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1209
    .local v6, "dirs":Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1210
    add-int/lit8 v13, v13, 0x1

    .line 1212
    :cond_0
    move v4, v14

    .line 1213
    .local v4, "best":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1215
    .local v5, "bestdist":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_9

    .line 1216
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    add-int v9, v14, v18

    .line 1217
    .local v9, "here":I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const v19, 0x3ffffff

    and-int v18, v18, v19

    add-int v17, v9, v18

    .line 1218
    .local v17, "there":I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const/high16 v19, 0x4000000

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    const/16 v16, -0x1

    .line 1220
    .local v16, "swap":I
    :goto_1
    move/from16 v0, v17

    if-le v0, v13, :cond_1

    .line 1221
    move/from16 v17, v13

    .line 1222
    :cond_1
    add-int/lit8 v18, v17, -0x1

    add-int/lit8 v10, v18, 0x1

    .local v10, "high":I
    add-int/lit8 v18, v9, 0x1

    add-int/lit8 v12, v18, -0x1

    .line 1224
    .local v12, "low":I
    :goto_2
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 1225
    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    .line 1226
    .local v8, "guess":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 1228
    .local v2, "adguess":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_3

    .line 1229
    move v10, v8

    goto :goto_2

    .line 1218
    .end local v2    # "adguess":I
    .end local v8    # "guess":I
    .end local v10    # "high":I
    .end local v12    # "low":I
    .end local v16    # "swap":I
    :cond_2
    const/16 v16, 0x1

    .restart local v16    # "swap":I
    goto :goto_1

    .line 1231
    .restart local v2    # "adguess":I
    .restart local v8    # "guess":I
    .restart local v10    # "high":I
    .restart local v12    # "low":I
    :cond_3
    move v12, v8

    goto :goto_2

    .line 1234
    .end local v2    # "adguess":I
    .end local v8    # "guess":I
    :cond_4
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    if-ge v12, v0, :cond_5

    .line 1235
    add-int/lit8 v12, v9, 0x1

    .line 1237
    :cond_5
    move/from16 v0, v17

    if-ge v12, v0, :cond_7

    .line 1238
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v12

    .line 1240
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1242
    .local v7, "dist":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1243
    .local v3, "aft":I
    move/from16 v0, v17

    if-ge v3, v0, :cond_6

    .line 1244
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1246
    .local v15, "other":F
    cmpg-float v18, v15, v7

    if-gez v18, :cond_6

    .line 1247
    move v7, v15

    .line 1248
    move v12, v3

    .line 1252
    .end local v15    # "other":F
    :cond_6
    cmpg-float v18, v7, v5

    if-gez v18, :cond_7

    .line 1253
    move v5, v7

    .line 1254
    move v4, v12

    .line 1258
    .end local v3    # "aft":I
    .end local v7    # "dist":F
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1260
    .restart local v7    # "dist":F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_8

    .line 1261
    move v5, v7

    .line 1262
    move v4, v9

    .line 1215
    :cond_8
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_0

    .line 1266
    .end local v7    # "dist":F
    .end local v9    # "here":I
    .end local v10    # "high":I
    .end local v12    # "low":I
    .end local v16    # "swap":I
    .end local v17    # "there":I
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1268
    .restart local v7    # "dist":F
    cmpg-float v18, v7, v5

    if-gtz v18, :cond_a

    .line 1269
    move v5, v7

    .line 1270
    move v4, v13

    .line 1273
    :cond_a
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1342
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1346
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 7
    .param p1, "line"    # I

    .prologue
    .line 1645
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1647
    .local v0, "align":Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_0

    .line 1648
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1649
    .local v1, "sp":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1650
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1651
    const-class v6, Landroid/text/style/AlignmentSpan;

    .line 1649
    invoke-static {v1, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .line 1653
    .local v3, "spans":[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .line 1654
    .local v2, "spanLength":I
    if-lez v2, :cond_0

    .line 1655
    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1659
    .end local v1    # "sp":Landroid/text/Spanned;
    .end local v2    # "spanLength":I
    .end local v3    # "spans":[Landroid/text/style/AlignmentSpan;
    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1666
    const/4 v1, 0x0

    .line 1667
    .local v1, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1668
    .local v0, "dir":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_0

    .line 1671
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    return v2

    .line 1669
    :cond_0
    return v1
.end method

.method public final getParagraphRight(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1678
    iget v1, p0, Landroid/text/Layout;->mWidth:I

    .line 1679
    .local v1, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1680
    .local v0, "dir":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_0

    .line 1683
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int v2, v1, v2

    return v2

    .line 1681
    :cond_0
    return v1
.end method

.method public getPrimaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 944
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getPrimaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .prologue
    .line 953
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 954
    .local v0, "trailing":Z
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public getRoundSelectionPath(IILandroid/graphics/Path;)V
    .locals 32
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 2399
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 2401
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 2402
    return-void

    .line 2404
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 2405
    move/from16 v26, p2

    .line 2406
    .local v26, "temp":I
    move/from16 p2, p1

    .line 2407
    move/from16 p1, v26

    .line 2410
    .end local v26    # "temp":I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2411
    .local v3, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v17

    .line 2412
    .local v17, "endline":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/text/Layout;->isLineEndOffset(Landroid/text/Layout;I)Z

    move-result v19

    .line 2413
    .local v19, "isEndLineEnd":Z
    if-eqz v19, :cond_2

    .line 2414
    add-int/lit8 v17, v17, -0x1

    .line 2415
    move/from16 v0, v17

    if-ge v0, v3, :cond_2

    .line 2416
    move/from16 v17, v3

    .line 2420
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v28

    .line 2421
    .local v28, "top":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v16

    .line 2423
    .local v16, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v22, v0

    .line 2424
    .local v22, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v15

    .line 2425
    .local v15, "baseline":I
    invoke-virtual/range {v22 .. v22}, Landroid/text/TextPaint;->ascent()F

    move-result v14

    .line 2426
    .local v14, "ascent":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v15

    int-to-float v2, v2

    invoke-virtual/range {v22 .. v22}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    const v5, 0x3de38e39

    mul-float/2addr v4, v5

    add-float v30, v2, v4

    .line 2428
    .local v30, "underlineTop":F
    invoke-virtual/range {v22 .. v22}, Landroid/text/TextPaint;->getTextSize()F

    move-result v27

    .line 2429
    .local v27, "textSize":F
    const v2, 0x3d638e39

    mul-float v29, v2, v27

    .line 2431
    .local v29, "underlineThickness":F
    int-to-float v2, v15

    add-float/2addr v2, v14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/Layout;->mUrlPaddingVertical:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v20, v0

    .line 2432
    .local v20, "lineAscentTop":I
    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    move/from16 v20, v28

    .line 2434
    :cond_3
    add-float v2, v30, v29

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/Layout;->mUrlPaddingVertical:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v21, v0

    .line 2435
    .local v21, "lineDescentBottom":I
    move/from16 v0, v21

    move/from16 v1, v16

    if-le v0, v1, :cond_4

    move/from16 v21, v16

    .line 2437
    :cond_4
    sub-int v25, v20, v28

    .line 2438
    .local v25, "spaceTop":I
    sub-int v24, v16, v21

    .line 2439
    .local v24, "spaceBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mRadius:I

    move/from16 v23, v0

    .line 2440
    .local v23, "radius":I
    move/from16 v0, v17

    if-ne v3, v0, :cond_5

    .line 2441
    add-int v6, v28, v25

    sub-int v7, v16, v24

    .line 2442
    const/16 v2, 0x8

    new-array v8, v2, [F

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x0

    aput v2, v8, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x1

    aput v2, v8, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x2

    aput v2, v8, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x3

    aput v2, v8, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x4

    aput v2, v8, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x5

    aput v2, v8, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x6

    aput v2, v8, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x7

    aput v2, v8, v4

    .line 2443
    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/Layout;->mUrlPaddingHorizontal:I

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v9, p3

    .line 2441
    invoke-direct/range {v2 .. v11}, Landroid/text/Layout;->addRoundSelection(IIIII[FLandroid/graphics/Path;II)V

    move/from16 v8, v28

    .line 2398
    .end local v28    # "top":I
    .local v8, "top":I
    :goto_0
    return-void

    .line 2445
    .end local v8    # "top":I
    .restart local v28    # "top":I
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v2

    move/from16 v31, v0

    .line 2447
    .local v31, "width":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    .line 2448
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 2449
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 2456
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_6

    if-eqz v19, :cond_9

    .line 2462
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 2463
    add-int v6, v28, v25

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 2464
    const/16 v2, 0x8

    new-array v8, v2, [F

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x0

    aput v2, v8, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x1

    aput v2, v8, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x2

    aput v2, v8, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x3

    aput v2, v8, v4

    const/4 v2, 0x0

    const/4 v4, 0x4

    aput v2, v8, v4

    const/4 v2, 0x0

    const/4 v4, 0x5

    aput v2, v8, v4

    const/4 v2, 0x0

    const/4 v4, 0x6

    aput v2, v8, v4

    const/4 v2, 0x0

    const/4 v4, 0x7

    aput v2, v8, v4

    .line 2465
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    float-to-int v10, v2

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move-object/from16 v9, p3

    .line 2462
    invoke-direct/range {v2 .. v11}, Landroid/text/Layout;->addRoundSelection(IIIII[FLandroid/graphics/Path;II)V

    .line 2468
    :goto_2
    add-int/lit8 v18, v3, 0x1

    .local v18, "i":I
    move/from16 v8, v28

    .end local v28    # "top":I
    .restart local v8    # "top":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    .line 2469
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v28

    .line 2470
    .end local v8    # "top":I
    .restart local v28    # "top":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v16

    .line 2472
    add-int/lit8 v2, v17, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_7

    if-eqz v19, :cond_a

    .line 2484
    :cond_7
    const/4 v5, 0x0

    move/from16 v0, v28

    int-to-float v6, v0

    move/from16 v0, v16

    int-to-float v8, v0

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v4, p3

    move/from16 v7, v31

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 2468
    :goto_4
    add-int/lit8 v18, v18, 0x1

    move/from16 v8, v28

    .end local v28    # "top":I
    .restart local v8    # "top":I
    goto :goto_3

    .line 2452
    .end local v8    # "top":I
    .end local v18    # "i":I
    .restart local v28    # "top":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 2453
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move/from16 v0, v31

    iput v0, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    .line 2457
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 2458
    add-int v6, v28, v25

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 2459
    const/16 v2, 0x8

    new-array v8, v2, [F

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x0

    aput v2, v8, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x1

    aput v2, v8, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x2

    aput v2, v8, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x3

    aput v2, v8, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x4

    aput v2, v8, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x5

    aput v2, v8, v4

    const/4 v2, 0x0

    const/4 v4, 0x6

    aput v2, v8, v4

    const/4 v2, 0x0

    const/4 v4, 0x7

    aput v2, v8, v4

    .line 2460
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    float-to-int v10, v2

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move-object/from16 v9, p3

    .line 2457
    invoke-direct/range {v2 .. v11}, Landroid/text/Layout;->addRoundSelection(IIIII[FLandroid/graphics/Path;II)V

    goto/16 :goto_2

    .line 2473
    .restart local v18    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 2474
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move/from16 v0, v28

    int-to-float v4, v0

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 2475
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move/from16 v0, v31

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 2476
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move/from16 v0, v16

    int-to-float v4, v0

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 2478
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_b

    .line 2479
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto/16 :goto_4

    .line 2481
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto/16 :goto_4

    .line 2488
    .end local v28    # "top":I
    .restart local v8    # "top":I
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    .line 2489
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v16

    .line 2491
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_d

    .line 2492
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move/from16 v0, v31

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 2493
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 2498
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 2499
    sub-int v9, v16, v24

    const/16 v2, 0x8

    new-array v10, v2, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v2, v10, v4

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput v2, v10, v4

    const/4 v2, 0x0

    const/4 v4, 0x2

    aput v2, v10, v4

    const/4 v2, 0x0

    const/4 v4, 0x3

    aput v2, v10, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x4

    aput v2, v10, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x5

    aput v2, v10, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x6

    aput v2, v10, v4

    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v4, 0x7

    aput v2, v10, v4

    .line 2500
    move-object/from16 v0, p0

    iget v12, v0, Landroid/text/Layout;->mUrlPaddingHorizontal:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    float-to-int v13, v2

    move-object/from16 v4, p0

    move/from16 v5, v17

    move/from16 v7, p2

    move-object/from16 v11, p3

    .line 2498
    invoke-direct/range {v4 .. v13}, Landroid/text/Layout;->addRoundSelection(IIIII[FLandroid/graphics/Path;II)V

    goto/16 :goto_0

    .line 2495
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 2496
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    iput v4, v2, Landroid/graphics/RectF;->right:F

    goto :goto_5

    .line 2479
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data

    .line 2481
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
    .end array-data
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 963
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .prologue
    .line 972
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 973
    .local v0, "trailing":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSectionSelectionPath(IILandroid/graphics/Path;F)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;
    .param p4, "boundWidth"    # F

    .prologue
    .line 2306
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 2308
    if-ne p1, p2, :cond_0

    .line 2309
    return-void

    .line 2311
    :cond_0
    if-ge p2, p1, :cond_1

    .line 2312
    move v10, p2

    .line 2313
    .local v10, "temp":I
    move p2, p1

    .line 2314
    move p1, v10

    .line 2317
    .end local v10    # "temp":I
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    .line 2318
    .local v9, "startline":I
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 2319
    .local v7, "endline":I
    invoke-static {p0, p2}, Landroid/text/Layout;->isLineEndOffset(Landroid/text/Layout;I)Z

    move-result v8

    .line 2320
    .local v8, "isEndLineEnd":Z
    if-eqz v8, :cond_2

    .line 2321
    add-int/lit8 v7, v7, -0x1

    .line 2322
    if-ge v7, v9, :cond_2

    .line 2323
    move v7, v9

    .line 2327
    :cond_2
    invoke-virtual {p0, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 2328
    .local v11, "top":I
    invoke-virtual {p0, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    .line 2330
    .local v6, "bottom":I
    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p4, v0

    int-to-float v0, v11

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p4, v2

    add-float/2addr v2, v0

    .line 2331
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p4, v3

    sub-float v3, v0, v3

    int-to-float v0, v6

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p4, v4

    sub-float v4, v0, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p3

    .line 2330
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 2305
    return-void
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 20
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 1571
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 1573
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 1574
    return-void

    .line 1576
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 1577
    move/from16 v18, p2

    .line 1578
    .local v18, "temp":I
    move/from16 p2, p1

    .line 1579
    move/from16 p1, v18

    .line 1582
    .end local v18    # "temp":I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1583
    .local v3, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 1585
    .local v15, "endline":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1586
    .local v6, "top":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1588
    .local v7, "bottom":I
    if-ne v3, v15, :cond_2

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 1589
    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1570
    :goto_0
    return-void

    .line 1591
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v2

    move/from16 v19, v0

    .line 1594
    .local v19, "width":F
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/text/Layout;->isLineEndOffset(Landroid/text/Layout;I)Z

    move-result v17

    .line 1596
    .local v17, "isLineEndOffset":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    .line 1597
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    .line 1596
    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1606
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 1607
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    .line 1608
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    .line 1607
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1615
    :cond_3
    :goto_1
    add-int/lit8 v16, v3, 0x1

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_7

    .line 1616
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1617
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1619
    add-int/lit8 v2, v15, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_6

    if-eqz v17, :cond_6

    .line 1620
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1615
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1609
    .end local v16    # "i":I
    :cond_4
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_5

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_3

    .line 1610
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    .line 1611
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v19

    .line 1610
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 1609
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 1624
    .restart local v16    # "i":I
    :cond_6
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v19

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_3

    .line 1627
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1628
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1630
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1633
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    .line 1634
    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v19

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 1636
    :cond_8
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method public final getSpacingAdd()F
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public getUrlPadding()I
    .locals 1

    .prologue
    .line 2223
    iget v0, p0, Landroid/text/Layout;->mUrlPaddingHorizontal:I

    return v0
.end method

.method public getUrlPaddingVertical()I
    .locals 1

    .prologue
    .line 2237
    iget v0, p0, Landroid/text/Layout;->mUrlPaddingVertical:I

    return v0
.end method

.method public getUrlSelectedColor()I
    .locals 1

    .prologue
    .line 2272
    iget v0, p0, Landroid/text/Layout;->mUrlSelectedColor:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2
    .param p1, "wid"    # I

    .prologue
    .line 690
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_0

    .line 691
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 689
    return-void
.end method

.method public isLevelBoundary(I)Z
    .locals 11
    .param p1, "offset"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 837
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 838
    .local v2, "line":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 839
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v10, :cond_0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_1

    .line 840
    :cond_0
    return v9

    .line 843
    :cond_1
    iget-object v7, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 844
    .local v7, "runs":[I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 845
    .local v4, "lineStart":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 846
    .local v3, "lineEnd":I
    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_6

    .line 847
    :cond_2
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    if-ne v10, v8, :cond_3

    const/4 v5, 0x0

    .line 848
    .local v5, "paraLevel":I
    :goto_0
    if-ne p1, v4, :cond_4

    const/4 v6, 0x0

    .line 849
    .local v6, "runIndex":I
    :goto_1
    add-int/lit8 v10, v6, 0x1

    aget v10, v7, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    if-eq v10, v5, :cond_5

    :goto_2
    return v8

    .line 847
    .end local v5    # "paraLevel":I
    .end local v6    # "runIndex":I
    :cond_3
    const/4 v5, 0x1

    .restart local v5    # "paraLevel":I
    goto :goto_0

    .line 848
    :cond_4
    array-length v10, v7

    add-int/lit8 v6, v10, -0x2

    .restart local v6    # "runIndex":I
    goto :goto_1

    :cond_5
    move v8, v9

    .line 849
    goto :goto_2

    .line 852
    .end local v5    # "paraLevel":I
    .end local v6    # "runIndex":I
    :cond_6
    sub-int/2addr p1, v4

    .line 853
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v10, v7

    if-ge v1, v10, :cond_8

    .line 854
    aget v10, v7, v1

    if-ne p1, v10, :cond_7

    .line 855
    return v8

    .line 853
    :cond_7
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 858
    :cond_8
    return v9
.end method

.method public isLineCenterVertical()Z
    .locals 1

    .prologue
    .line 2286
    iget-boolean v0, p0, Landroid/text/Layout;->mIsLineCenterVertical:Z

    return v0
.end method

.method public isRtlCharAt(I)Z
    .locals 12
    .param p1, "offset"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 867
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 868
    .local v4, "line":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 869
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_0

    .line 870
    return v9

    .line 872
    :cond_0
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_1

    .line 873
    return v8

    .line 875
    :cond_1
    iget-object v6, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 876
    .local v6, "runs":[I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 877
    .local v5, "lineStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v10, v6

    if-ge v1, v10, :cond_4

    .line 878
    aget v10, v6, v1

    add-int v7, v5, v10

    .line 879
    .local v7, "start":I
    add-int/lit8 v10, v1, 0x1

    aget v10, v6, v10

    const v11, 0x3ffffff

    and-int/2addr v10, v11

    add-int v3, v7, v10

    .line 880
    .local v3, "limit":I
    if-lt p1, v7, :cond_3

    if-ge p1, v3, :cond_3

    .line 881
    add-int/lit8 v10, v1, 0x1

    aget v10, v6, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v2, v10, 0x3f

    .line 882
    .local v2, "level":I
    and-int/lit8 v10, v2, 0x1

    if-eqz v10, :cond_2

    :goto_1
    return v8

    :cond_2
    move v8, v9

    goto :goto_1

    .line 877
    .end local v2    # "level":I
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 886
    .end local v3    # "limit":I
    .end local v7    # "start":I
    :cond_4
    return v9
.end method

.method public isSingleLineRtoL()Z
    .locals 1

    .prologue
    .line 2151
    const/4 v0, 0x0

    return v0
.end method

.method protected final isSpanned()Z
    .locals 1

    .prologue
    .line 1952
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method public isUrlSelected()Z
    .locals 1

    .prologue
    .line 2258
    iget-boolean v0, p0, Landroid/text/Layout;->mUrlSelected:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F

    .prologue
    .line 267
    if-gez p3, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 272
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 273
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 274
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 275
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 276
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 277
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 266
    return-void
.end method

.method public setIsLineCenterVertical(Z)V
    .locals 0
    .param p1, "isCenter"    # Z

    .prologue
    .line 2279
    iput-boolean p1, p0, Landroid/text/Layout;->mIsLineCenterVertical:Z

    .line 2278
    return-void
.end method

.method public setSectionBoundPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 2209
    iput-object p1, p0, Landroid/text/Layout;->mSectionBoundPaint:Landroid/graphics/Paint;

    .line 2208
    return-void
.end method

.method public setURLBoundRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 2389
    iput p1, p0, Landroid/text/Layout;->mRadius:I

    .line 2388
    return-void
.end method

.method public setUrlBoundRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 2244
    iput p1, p0, Landroid/text/Layout;->mUrlBoundRadius:I

    .line 2243
    return-void
.end method

.method public setUrlPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 2216
    iput p1, p0, Landroid/text/Layout;->mUrlPaddingHorizontal:I

    .line 2215
    return-void
.end method

.method public setUrlPaddingVertical(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 2230
    iput p1, p0, Landroid/text/Layout;->mUrlPaddingVertical:I

    .line 2229
    return-void
.end method

.method public setUrlSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 2251
    iput-boolean p1, p0, Landroid/text/Layout;->mUrlSelected:Z

    .line 2250
    return-void
.end method

.method public setUrlSelectedColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 2265
    iput p1, p0, Landroid/text/Layout;->mUrlSelectedColor:I

    .line 2264
    return-void
.end method

.method public shouldClampCursor(I)Z
    .locals 4
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1440
    invoke-static {}, Landroid/text/Layout;->-getandroid_text_Layout$AlignmentSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1446
    return v1

    .line 1442
    :pswitch_0
    return v0

    .line 1444
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
