.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$StringSplitter;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$PackedIntVectorForTest;,
        Landroid/text/TextUtils$1;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field private static ARAB_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static DEBUG_LOG:Z = false

.field public static final EASY_EDIT_SPAN:I = 0x16

.field static final ELLIPSIS_NORMAL:[C

.field private static final ELLIPSIS_STRING:Ljava/lang/String;

.field static final ELLIPSIS_TWO_DOTS:[C

.field private static final ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field public static final FIRST_SPAN:I = 0x1

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field private static HEBR_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field public static final LAST_SPAN:I = 0x1a

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final LEUI_COLOR_SPAN:I = 0x1a

.field public static final LEURL_SPAN:I = 0x19

.field public static final LOCALE_SPAN:I = 0x17

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final SPELL_CHECK_SPAN:I = 0x14

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final SUGGESTION_SPAN:I = 0x13

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field private static final TAG:Ljava/lang/String; = "TextUtils"

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TTS_SPAN:I = 0x18

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static final ZWNBS_CHAR:C = '\ufeff'

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 0
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-array v0, v3, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    .line 75
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    .line 77
    new-array v0, v3, [C

    const/16 v1, 0x2025

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    .line 78
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    .line 699
    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    .line 698
    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 1909
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 1911
    const/4 v0, 0x0

    sput-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 1913
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 1917
    const-string/jumbo v0, "Arab"

    sput-object v0, Landroid/text/TextUtils;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    .line 1918
    const-string/jumbo v0, "Hebr"

    sput-object v0, Landroid/text/TextUtils;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    .line 1924
    const-string/jumbo v0, "debug.text"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/text/TextUtils;->DEBUG_LOG:Z

    .line 71
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;

    .prologue
    .line 1237
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1236
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .locals 26
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 1246
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    .line 1248
    .local v3, "mt":Landroid/text/MeasuredText;
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 1249
    .local v7, "len":I
    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v24

    .line 1250
    .local v24, "width":F
    cmpg-float v4, v24, p2

    if-gtz v4, :cond_0

    .line 1304
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1251
    return-object p0

    .line 1254
    :cond_0
    :try_start_1
    iget-object v14, v3, Landroid/text/MeasuredText;->mChars:[C

    .line 1256
    .local v14, "buf":[C
    const/4 v15, 0x0

    .line 1257
    .local v15, "commaCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v7, :cond_2

    .line 1258
    aget-char v4, v14, v17

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_1

    .line 1259
    add-int/lit8 v15, v15, 0x1

    .line 1257
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1263
    :cond_2
    add-int/lit8 v22, v15, 0x1

    .line 1265
    .local v22, "remaining":I
    const/16 v19, 0x0

    .line 1266
    .local v19, "ok":I
    const-string/jumbo v20, ""

    .line 1268
    .local v20, "okFormat":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1269
    .local v23, "w":I
    const/16 v16, 0x0

    .line 1270
    .local v16, "count":I
    iget-object v0, v3, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v25, v0

    .line 1272
    .local v25, "widths":[F
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v8

    .line 1273
    .local v8, "tempMt":Landroid/text/MeasuredText;
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v0, v7, :cond_5

    .line 1274
    move/from16 v0, v23

    int-to-float v4, v0

    aget v5, v25, v17

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v23, v0

    .line 1276
    aget-char v4, v14, v17

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_3

    .line 1277
    add-int/lit8 v16, v16, 0x1

    .line 1282
    add-int/lit8 v22, v22, -0x1

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_4

    .line 1283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1289
    .local v9, "format":Ljava/lang/String;
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v12, p5

    invoke-virtual/range {v8 .. v13}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 1290
    iget v4, v8, Landroid/text/MeasuredText;->mLen:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v4, v5}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v18

    .line 1292
    .local v18, "moreWid":F
    move/from16 v0, v23

    int-to-float v4, v0

    add-float v4, v4, v18

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_3

    .line 1293
    add-int/lit8 v19, v17, 0x1

    .line 1294
    move-object/from16 v20, v9

    .line 1273
    .end local v9    # "format":Ljava/lang/String;
    .end local v18    # "moreWid":F
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1285
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v5, v10

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "format":Ljava/lang/String;
    goto :goto_2

    .line 1298
    .end local v9    # "format":Ljava/lang/String;
    :cond_5
    invoke-static {v8}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1300
    new-instance v21, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1301
    .local v21, "out":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1304
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1302
    return-object v21

    .line 1303
    .end local v7    # "len":I
    .end local v8    # "tempMt":Landroid/text/MeasuredText;
    .end local v14    # "buf":[C
    .end local v15    # "commaCount":I
    .end local v16    # "count":I
    .end local v17    # "i":I
    .end local v19    # "ok":I
    .end local v20    # "okFormat":Ljava/lang/String;
    .end local v21    # "out":Landroid/text/SpannableStringBuilder;
    .end local v22    # "remaining":I
    .end local v23    # "w":I
    .end local v24    # "width":F
    .end local v25    # "widths":[F
    :catchall_0
    move-exception v4

    .line 1304
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1303
    throw v4
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "text"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1421
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1422
    const-string/jumbo v0, ""

    return-object v0

    .line 1425
    :cond_0
    array-length v0, p0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1426
    aget-object v0, p0, v1

    return-object v0

    .line 1429
    :cond_1
    const/4 v8, 0x0

    .line 1430
    .local v8, "spanned":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p0

    if-ge v6, v0, :cond_2

    .line 1431
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_3

    .line 1432
    const/4 v8, 0x1

    .line 1437
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1438
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    :goto_1
    array-length v0, p0

    if-ge v6, v0, :cond_4

    .line 1439
    aget-object v0, p0, v6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1438
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1430
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1442
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    if-nez v8, :cond_5

    .line 1443
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1446
    :cond_5
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1447
    .local v4, "ss":Landroid/text/SpannableString;
    const/4 v5, 0x0

    .line 1448
    .local v5, "off":I
    const/4 v6, 0x0

    :goto_2
    array-length v0, p0

    if-ge v6, v0, :cond_7

    .line 1449
    aget-object v0, p0, v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1451
    .local v2, "len":I
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_6

    .line 1452
    aget-object v0, p0, v6

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 1455
    :cond_6
    add-int/2addr v5, v2

    .line 1448
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1458
    .end local v2    # "len":I
    :cond_7
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .locals 8
    .param p0, "source"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "dest"    # Landroid/text/Spannable;
    .param p5, "destoff"    # I

    .prologue
    .line 1048
    if-nez p3, :cond_0

    .line 1049
    const-class p3, Ljava/lang/Object;

    .line 1052
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 1054
    .local v3, "spans":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 1055
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1056
    .local v4, "st":I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 1057
    .local v0, "en":I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 1059
    .local v1, "fl":I
    if-ge v4, p1, :cond_1

    .line 1060
    move v4, p1

    .line 1061
    :cond_1
    if-le v0, p2, :cond_2

    .line 1062
    move v0, p2

    .line 1064
    :cond_2
    aget-object v5, v3, v2

    sub-int v6, v4, p1

    add-int/2addr v6, p5

    sub-int v7, v0, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1054
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1047
    .end local v0    # "en":I
    .end local v1    # "fl":I
    .end local v4    # "st":I
    :cond_3
    return-void
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 6
    .param p0, "delimitedString"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1668
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1669
    :cond_0
    return v4

    .line 1671
    :cond_1
    const/4 v2, -0x1

    .line 1672
    .local v2, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1673
    .local v1, "length":I
    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 1674
    if-lez v2, :cond_3

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_2

    .line 1677
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1678
    .local v0, "expectedDelimiterPos":I
    if-ne v0, v1, :cond_4

    .line 1680
    return v5

    .line 1682
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_2

    .line 1683
    return v5

    .line 1686
    .end local v0    # "expectedDelimiterPos":I
    :cond_5
    return v4
.end method

.method static doesNotNeedBidi(Ljava/lang/CharSequence;II)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1338
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 1339
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x590

    if-lt v1, v2, :cond_0

    .line 1340
    const/4 v1, 0x0

    return v1

    .line 1338
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1343
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method static doesNotNeedBidi([CII)Z
    .locals 4
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "len"    # I

    .prologue
    .line 1348
    move v1, p1

    .local v1, "i":I
    add-int v0, v1, p2

    .local v0, "e":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1349
    aget-char v2, p0, v1

    const/16 v3, 0x590

    if-lt v2, v3, :cond_0

    .line 1350
    const/4 v2, 0x0

    return v2

    .line 1348
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1353
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 849
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    move-object v3, p0

    .line 850
    check-cast v3, Landroid/text/Spanned;

    .line 851
    .local v3, "sp":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 853
    .local v2, "os":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 854
    aget-object v1, v2, v0

    .line 855
    .local v1, "o":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 856
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 855
    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 856
    const-string/jumbo v5, ": "

    .line 855
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 857
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 855
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 858
    const-string/jumbo v5, " "

    .line 855
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 858
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 855
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 859
    const-string/jumbo v5, " ("

    .line 855
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 859
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 855
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 859
    const-string/jumbo v5, "-"

    .line 855
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 859
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 855
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 860
    const-string/jumbo v5, ") fl=#"

    .line 855
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 860
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 855
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 853
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 863
    .end local v0    # "i":I
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "os":[Ljava/lang/Object;
    .end local v3    # "sp":Landroid/text/Spanned;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": (no spans)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 848
    :cond_1
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 1097
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;

    .prologue
    .line 1118
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 1119
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p3, v0, :cond_0

    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 1117
    invoke-static/range {v0 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1119
    :cond_0
    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    goto :goto_0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 22
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "ellipsis"    # Ljava/lang/String;

    .prologue
    .line 1142
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v15

    .line 1144
    .local v15, "len":I
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    .line 1146
    .local v3, "mt":Landroid/text/MeasuredText;
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v21

    .line 1148
    .local v21, "width":F
    cmpg-float v5, v21, p2

    if-gtz v5, :cond_1

    .line 1149
    if-eqz p5, :cond_0

    .line 1150
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v5, v6}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    :cond_0
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1153
    return-object p0

    .line 1158
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 1159
    .local v11, "ellipsiswid":F
    sub-float p2, p2, v11

    .line 1161
    const/4 v13, 0x0

    .line 1162
    .local v13, "left":I
    move/from16 v17, v15

    .line 1163
    .local v17, "right":I
    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_3

    move v14, v13

    .line 1175
    .end local v13    # "left":I
    .local v14, "left":I
    :goto_0
    if-eqz p5, :cond_2

    .line 1176
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-interface {v0, v14, v1}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1179
    :cond_2
    iget-object v10, v3, Landroid/text/MeasuredText;->mChars:[C

    .line 1180
    .local v10, "buf":[C
    move-object/from16 v0, p0

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v4, v0

    .line 1182
    :goto_1
    sub-int v5, v17, v14

    sub-int v16, v15, v5

    .line 1183
    .local v16, "remaining":I
    if-eqz p4, :cond_a

    .line 1184
    if-lez v16, :cond_d

    .line 1185
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "left":I
    .restart local v13    # "left":I
    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v10, v14

    .line 1187
    :goto_2
    move v12, v13

    .local v12, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v12, v0, :cond_8

    .line 1188
    const v5, 0xfeff

    aput-char v5, v10, v12

    .line 1187
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1165
    .end local v10    # "buf":[C
    .end local v12    # "i":I
    .end local v16    # "remaining":I
    :cond_3
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_4

    .line 1166
    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v5

    sub-int v17, v15, v5

    move v14, v13

    .end local v13    # "left":I
    .restart local v14    # "left":I
    goto :goto_0

    .line 1167
    .end local v14    # "left":I
    .restart local v13    # "left":I
    :cond_4
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-eq v0, v5, :cond_5

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_6

    .line 1168
    :cond_5
    const/4 v5, 0x1

    move/from16 v0, p2

    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v13

    move v14, v13

    .line 1167
    .end local v13    # "left":I
    .restart local v14    # "left":I
    goto :goto_0

    .line 1170
    .end local v14    # "left":I
    .restart local v13    # "left":I
    :cond_6
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p2, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v15, v6, v5}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v5

    sub-int v17, v15, v5

    .line 1171
    move/from16 v0, v17

    invoke-virtual {v3, v0, v15}, Landroid/text/MeasuredText;->measure(II)F

    move-result v5

    sub-float p2, p2, v5

    .line 1172
    const/4 v5, 0x1

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v3, v0, v5, v1}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v13

    move v14, v13

    .end local v13    # "left":I
    .restart local v14    # "left":I
    goto :goto_0

    .line 1180
    .restart local v10    # "buf":[C
    :cond_7
    const/4 v4, 0x0

    .local v4, "sp":Landroid/text/Spanned;
    goto :goto_1

    .line 1190
    .end local v4    # "sp":Landroid/text/Spanned;
    .end local v14    # "left":I
    .restart local v12    # "i":I
    .restart local v13    # "left":I
    .restart local v16    # "remaining":I
    :cond_8
    new-instance v18, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v10, v5, v15}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1191
    .local v18, "s":Ljava/lang/String;
    if-nez v4, :cond_9

    .line 1217
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1192
    return-object v18

    .line 1194
    :cond_9
    :try_start_2
    new-instance v8, Landroid/text/SpannableString;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1195
    .local v8, "ss":Landroid/text/SpannableString;
    const-class v7, Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move v6, v15

    invoke-static/range {v4 .. v9}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1217
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1196
    return-object v8

    .line 1199
    .end local v8    # "ss":Landroid/text/SpannableString;
    .end local v12    # "i":I
    .end local v13    # "left":I
    .end local v18    # "s":Ljava/lang/String;
    .restart local v14    # "left":I
    :cond_a
    if-nez v16, :cond_b

    .line 1200
    :try_start_3
    const-string/jumbo v5, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1217
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1200
    return-object v5

    .line 1203
    :cond_b
    if-nez v4, :cond_c

    .line 1204
    :try_start_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v5

    add-int v5, v5, v16

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1205
    .local v19, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v5, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1206
    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    sub-int v5, v15, v17

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1208
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 1217
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1208
    return-object v5

    .line 1211
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    :try_start_5
    new-instance v20, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v20 .. v20}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1212
    .local v20, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 1213
    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1214
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1217
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1215
    return-object v20

    .line 1216
    .end local v10    # "buf":[C
    .end local v11    # "ellipsiswid":F
    .end local v14    # "left":I
    .end local v16    # "remaining":I
    .end local v17    # "right":I
    .end local v20    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local v21    # "width":F
    :catchall_0
    move-exception v5

    .line 1217
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1216
    throw v5

    .restart local v10    # "buf":[C
    .restart local v11    # "ellipsiswid":F
    .restart local v14    # "left":I
    .restart local v16    # "remaining":I
    .restart local v17    # "right":I
    .restart local v21    # "width":F
    :cond_d
    move v13, v14

    .end local v14    # "left":I
    .restart local v13    # "left":I
    goto/16 :goto_2
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 509
    if-ne p0, p1, :cond_0

    return v5

    .line 511
    :cond_0
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 512
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 513
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 515
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 516
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    return v4

    .line 515
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_3
    return v5

    .line 521
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_4
    return v4
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .prologue
    const/16 v7, 0x5e

    .line 919
    array-length v5, p1

    const/16 v6, 0x9

    if-le v5, v6, :cond_0

    .line 920
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "max of 9 values are supported"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 923
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 926
    .local v3, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 927
    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 928
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_5

    .line 929
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    .line 930
    .local v2, "next":C
    if-ne v2, v7, :cond_1

    .line 931
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 932
    add-int/lit8 v0, v0, 0x1

    .line 933
    goto :goto_0

    .line 934
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 935
    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 936
    .local v4, "which":I
    if-gez v4, :cond_3

    .line 937
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 938
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "template requests value ^"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 937
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 952
    .end local v2    # "next":C
    .end local v4    # "which":I
    :catch_0
    move-exception v1

    .line 955
    :cond_2
    return-object v3

    .line 940
    .restart local v2    # "next":C
    .restart local v4    # "which":I
    :cond_3
    array-length v5, p1

    if-lt v4, v5, :cond_4

    .line 941
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 942
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "template requests value ^"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 943
    const-string/jumbo v7, "; only "

    .line 942
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 943
    array-length v7, p1

    .line 942
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 943
    const-string/jumbo v7, " provided"

    .line 942
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 941
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 945
    :cond_4
    add-int/lit8 v5, v0, 0x2

    aget-object v6, p1, v4

    invoke-virtual {v3, v0, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 946
    aget-object v5, p1, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    add-int/2addr v0, v5

    .line 947
    goto/16 :goto_0

    .line 950
    .end local v2    # "next":C
    .end local v4    # "which":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static formatSelectedCount(I)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "count"    # I

    .prologue
    .line 1827
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x1140011

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBidiForTest(I[C[BIZ)I
    .locals 1
    .param p0, "dir"    # I
    .param p1, "chs"    # [C
    .param p2, "chInfo"    # [B
    .param p3, "n"    # I
    .param p4, "haveInfo"    # Z

    .prologue
    .line 1835
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v0

    return v0
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "off"    # I
    .param p2, "reqModes"    # I

    .prologue
    const/16 v9, 0x27

    const/16 v8, 0x22

    const/16 v7, 0x2e

    const/4 v5, 0x0

    .line 1572
    if-gez p1, :cond_0

    .line 1573
    return v5

    .line 1578
    :cond_0
    const/4 v4, 0x0

    .line 1580
    .local v4, "mode":I
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_1

    .line 1581
    const/16 v4, 0x1000

    .line 1583
    :cond_1
    and-int/lit16 v5, p2, 0x6000

    if-nez v5, :cond_2

    .line 1584
    return v4

    .line 1589
    :cond_2
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_3

    .line 1590
    add-int/lit8 v5, v1, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1592
    .local v0, "c":C
    if-eq v0, v8, :cond_5

    if-eq v0, v9, :cond_5

    .line 1593
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_5

    .line 1600
    .end local v0    # "c":C
    :cond_3
    move v2, v1

    .line 1601
    .local v2, "j":I
    :goto_1
    if-lez v2, :cond_6

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0    # "c":C
    const/16 v5, 0x20

    if-eq v0, v5, :cond_4

    const/16 v5, 0x9

    if-ne v0, v5, :cond_6

    .line 1602
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1589
    .end local v2    # "j":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1604
    .end local v0    # "c":C
    .restart local v2    # "j":I
    :cond_6
    if-eqz v2, :cond_7

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_8

    .line 1605
    :cond_7
    or-int/lit16 v5, v4, 0x2000

    return v5

    .line 1610
    :cond_8
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_a

    .line 1611
    if-eq v1, v2, :cond_9

    or-int/lit16 v4, v4, 0x2000

    .line 1612
    :cond_9
    return v4

    .line 1617
    :cond_a
    if-ne v1, v2, :cond_c

    .line 1618
    return v4

    .line 1623
    .restart local v0    # "c":C
    :cond_b
    add-int/lit8 v2, v2, -0x1

    .end local v0    # "c":C
    :cond_c
    if-lez v2, :cond_d

    .line 1624
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1626
    .restart local v0    # "c":C
    if-eq v0, v8, :cond_b

    if-eq v0, v9, :cond_b

    .line 1627
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_b

    .line 1632
    .end local v0    # "c":C
    :cond_d
    if-lez v2, :cond_10

    .line 1633
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1635
    .restart local v0    # "c":C
    if-eq v0, v7, :cond_e

    const/16 v5, 0x3f

    if-ne v0, v5, :cond_f

    .line 1639
    :cond_e
    if-ne v0, v7, :cond_12

    .line 1640
    add-int/lit8 v3, v2, -0x2

    .local v3, "k":I
    :goto_2
    if-ltz v3, :cond_12

    .line 1641
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1643
    if-ne v0, v7, :cond_11

    .line 1644
    return v4

    .line 1635
    .end local v3    # "k":I
    :cond_f
    const/16 v5, 0x21

    if-eq v0, v5, :cond_e

    .line 1657
    .end local v0    # "c":C
    :cond_10
    return v4

    .line 1647
    .restart local v0    # "c":C
    .restart local v3    # "k":I
    :cond_11
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_13

    .line 1653
    .end local v3    # "k":I
    :cond_12
    or-int/lit16 v5, v4, 0x4000

    return v5

    .line 1640
    .restart local v3    # "k":I
    :cond_13
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 86
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_0

    .line 87
    check-cast p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 83
    :goto_0
    return-void

    .line 88
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_0
    const-class v3, Ljava/lang/StringBuffer;

    if-ne v0, v3, :cond_1

    .line 89
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_0

    .line 90
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_1
    const-class v3, Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_2

    .line 91
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_0

    .line 92
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_2
    instance-of v3, p0, Landroid/text/GetChars;

    if-eqz v3, :cond_3

    .line 93
    check-cast p0, Landroid/text/GetChars;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_0

    .line 95
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_3
    move v2, p1

    .local v2, "i":I
    move v1, p4

    .end local p4    # "destoff":I
    .local v1, "destoff":I
    :goto_1
    if-ge v2, p2, :cond_4

    .line 96
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "destoff":I
    .restart local p4    # "destoff":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 95
    add-int/lit8 v2, v2, 0x1

    move v1, p4

    .end local p4    # "destoff":I
    .restart local v1    # "destoff":I
    goto :goto_1

    :cond_4
    move p4, v1

    .end local v1    # "destoff":I
    .restart local p4    # "destoff":I
    goto :goto_0
.end method

.method public static getDirectionsForTest(Landroid/text/Layout$Directions;)[I
    .locals 1
    .param p0, "dir"    # Landroid/text/Layout$Directions;

    .prologue
    .line 1867
    iget-object v0, p0, Landroid/text/Layout$Directions;->mDirections:[I

    return-object v0
.end method

.method private static getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x0

    .line 1810
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1817
    return v1

    .line 1813
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1810
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1780
    if-eqz p0, :cond_0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1790
    :cond_0
    const-string/jumbo v3, "debug.force_rtl"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    return v1

    .line 1781
    :cond_1
    invoke-static {p0}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 1782
    .local v0, "scriptSubtag":Ljava/lang/String;
    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I

    move-result v1

    return v1

    .line 1784
    :cond_2
    sget-object v3, Landroid/text/TextUtils;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1785
    sget-object v3, Landroid/text/TextUtils;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 1784
    if-eqz v3, :cond_0

    .line 1786
    :cond_3
    return v1

    .end local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_4
    move v1, v2

    .line 1792
    goto :goto_0
.end method

.method public static getLayoutDirectionsForTest()Landroid/text/Layout$Directions;
    .locals 1

    .prologue
    .line 1875
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .locals 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    .line 994
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 996
    .local v4, "len":I
    if-ne p1, v4, :cond_0

    .line 997
    return v4

    .line 998
    :cond_0
    add-int/lit8 v7, v4, -0x1

    if-ne p1, v7, :cond_1

    .line 999
    return v4

    .line 1001
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1003
    .local v0, "c":C
    const v7, 0xd800

    if-lt v0, v7, :cond_4

    const v7, 0xdbff

    if-gt v0, v7, :cond_4

    .line 1004
    add-int/lit8 v7, p1, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1006
    .local v1, "c1":C
    const v7, 0xdc00

    if-lt v1, v7, :cond_3

    const v7, 0xdfff

    if-gt v1, v7, :cond_3

    .line 1007
    add-int/lit8 p1, p1, 0x2

    .line 1014
    .end local v1    # "c1":C
    :goto_0
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_5

    move-object v7, p0

    .line 1015
    check-cast v7, Landroid/text/Spanned;

    .line 1016
    const-class v8, Landroid/text/style/ReplacementSpan;

    .line 1015
    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 1018
    .local v5, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v5

    if-ge v3, v7, :cond_5

    move-object v7, p0

    .line 1019
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .local v6, "start":I
    move-object v7, p0

    .line 1020
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1022
    .local v2, "end":I
    if-ge v6, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 1023
    move p1, v2

    .line 1018
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1009
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v6    # "start":I
    .restart local v1    # "c1":C
    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1011
    .end local v1    # "c1":C
    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1027
    :cond_5
    return p1
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    const/4 v7, 0x0

    .line 959
    if-nez p1, :cond_0

    .line 960
    return v7

    .line 961
    :cond_0
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    .line 962
    return v7

    .line 964
    :cond_1
    add-int/lit8 v6, p1, -0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 966
    .local v0, "c":C
    const v6, 0xdc00

    if-lt v0, v6, :cond_4

    const v6, 0xdfff

    if-gt v0, v6, :cond_4

    .line 967
    add-int/lit8 v6, p1, -0x2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 969
    .local v1, "c1":C
    const v6, 0xd800

    if-lt v1, v6, :cond_3

    const v6, 0xdbff

    if-gt v1, v6, :cond_3

    .line 970
    add-int/lit8 p1, p1, -0x2

    .line 977
    .end local v1    # "c1":C
    :goto_0
    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_5

    move-object v6, p0

    .line 978
    check-cast v6, Landroid/text/Spanned;

    .line 979
    const-class v7, Landroid/text/style/ReplacementSpan;

    .line 978
    invoke-interface {v6, p1, p1, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 981
    .local v4, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v4

    if-ge v3, v6, :cond_5

    move-object v6, p0

    .line 982
    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, "start":I
    move-object v6, p0

    .line 983
    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 985
    .local v2, "end":I
    if-ge v5, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 986
    move p1, v5

    .line 981
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 972
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v5    # "start":I
    .restart local v1    # "c1":C
    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 974
    .end local v1    # "c1":C
    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 990
    :cond_5
    return p1
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 527
    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x20

    .line 485
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 487
    .local v1, "len":I
    const/4 v2, 0x0

    .line 488
    .local v2, "start":I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_0

    .line 489
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    :cond_0
    move v0, v1

    .line 493
    .local v0, "end":I
    :goto_1
    if-le v0, v2, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_1

    .line 494
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 497
    :cond_1
    sub-int v3, v0, v2

    return v3
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1387
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1388
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1389
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1410
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1387
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1391
    :sswitch_0
    const-string/jumbo v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1394
    :sswitch_1
    const-string/jumbo v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1397
    :sswitch_2
    const-string/jumbo v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1404
    :sswitch_3
    const-string/jumbo v3, "&#39;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1407
    :sswitch_4
    const-string/jumbo v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1413
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1389
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 107
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 108
    check-cast p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    return v1

    .line 110
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    return v1
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .locals 8
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v7, -0x1

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 116
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v6, p0, Landroid/text/GetChars;

    if-nez v6, :cond_0

    const-class v6, Ljava/lang/StringBuffer;

    if-ne v1, v6, :cond_2

    .line 118
    :cond_0
    const/16 v0, 0x1f4

    .line 119
    .local v0, "INDEX_INCREMENT":I
    const/16 v6, 0x1f4

    invoke-static {v6}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v5

    .line 121
    .local v5, "temp":[C
    :goto_0
    if-ge p2, p3, :cond_5

    .line 122
    add-int/lit16 v4, p2, 0x1f4

    .line 123
    .local v4, "segend":I
    if-le v4, p3, :cond_1

    .line 124
    move v4, p3

    .line 126
    :cond_1
    const/4 v6, 0x0

    invoke-static {p0, p2, v4, v5, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 128
    sub-int v2, v4, p2

    .line 129
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 130
    aget-char v6, v5, v3

    if-ne v6, p1, :cond_3

    .line 131
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    .line 132
    add-int v6, v3, p2

    return v6

    .line 117
    .end local v0    # "INDEX_INCREMENT":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "segend":I
    .end local v5    # "temp":[C
    :cond_2
    const-class v6, Ljava/lang/StringBuilder;

    if-eq v1, v6, :cond_0

    const-class v6, Ljava/lang/String;

    if-eq v1, v6, :cond_0

    .line 143
    move v3, p2

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, p3, :cond_7

    .line 144
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_6

    .line 145
    return v3

    .line 129
    .restart local v0    # "INDEX_INCREMENT":I
    .restart local v2    # "count":I
    .restart local v4    # "segend":I
    .restart local v5    # "temp":[C
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 136
    :cond_4
    move p2, v4

    goto :goto_0

    .line 139
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "segend":I
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    .line 140
    return v7

    .line 143
    .end local v0    # "INDEX_INCREMENT":I
    .end local v5    # "temp":[C
    .restart local v3    # "i":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 147
    :cond_7
    return v7
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;

    .prologue
    .line 209
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    .line 213
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 218
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 219
    .local v1, "nlen":I
    if-nez v1, :cond_0

    .line 220
    return p2

    .line 222
    :cond_0
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 225
    .local v0, "c":C
    :goto_0
    invoke-static {p0, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    .line 226
    sub-int v2, p3, v1

    if-le p2, v2, :cond_1

    .line 240
    return v4

    .line 230
    :cond_1
    if-gez p2, :cond_2

    .line 231
    return v4

    .line 234
    :cond_2
    invoke-static {p0, p2, p1, v3, v1}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    return p2

    .line 238
    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1499
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1500
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1501
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1502
    const/4 v2, 0x0

    return v2

    .line 1500
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1505
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 468
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 469
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 471
    :cond_1
    return v1
.end method

.method public static isGraphic(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v1, 0x0

    .line 1485
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1486
    .local v0, "gc":I
    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    .line 1487
    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    .line 1488
    const/16 v2, 0x13

    if-eq v0, v2, :cond_0

    .line 1489
    if-eqz v0, :cond_0

    .line 1490
    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    .line 1491
    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    .line 1492
    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    .line 1486
    :cond_0
    return v1
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 1465
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1466
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1467
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1468
    .local v0, "gc":I
    const/16 v3, 0xf

    if-eq v0, v3, :cond_0

    .line 1469
    const/16 v3, 0x10

    if-eq v0, v3, :cond_0

    .line 1470
    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    .line 1471
    if-eqz v0, :cond_0

    .line 1472
    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    .line 1473
    const/16 v3, 0xe

    if-eq v0, v3, :cond_0

    .line 1474
    const/16 v3, 0xc

    if-eq v0, v3, :cond_0

    .line 1475
    const/4 v3, 0x1

    return v3

    .line 1466
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1478
    .end local v0    # "gc":I
    :cond_1
    return v4
.end method

.method public static isPrintableAscii(C)Z
    .locals 4
    .param p0, "c"    # C

    .prologue
    const/4 v2, 0x1

    .line 1512
    const/16 v0, 0x20

    .line 1513
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 1514
    .local v1, "asciiLast":I
    const/16 v3, 0x20

    if-gt v3, p0, :cond_1

    const/16 v3, 0x7e

    if-gt p0, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/16 v3, 0xd

    if-eq p0, v3, :cond_0

    const/16 v3, 0xa

    if-eq p0, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1521
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1522
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1523
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1524
    const/4 v2, 0x0

    return v2

    .line 1522
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1527
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public static isSurrogateChar(Ljava/lang/CharSequence;I)Z
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    .prologue
    .line 1893
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    .line 1894
    add-int/lit8 v2, p1, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1895
    .local v1, "prevChar":C
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1896
    .local v0, "currChar":C
    invoke-static {v1, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    return v2

    .line 1898
    .end local v0    # "currChar":C
    .end local v1    # "prevChar":C
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "list":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/CharSequence;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 299
    .local v0, "delimiter":Ljava/lang/CharSequence;
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # Ljava/lang/Iterable;

    .prologue
    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 329
    .local v0, "firstTime":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "token$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 330
    .local v2, "token":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x0

    .line 335
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 337
    .end local v2    # "token":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # [Ljava/lang/Object;

    .prologue
    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 310
    .local v0, "firstTime":Z
    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, p1, v3

    .line 311
    .local v2, "token":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 316
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 318
    .end local v2    # "token":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .prologue
    .line 151
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "last"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 157
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 158
    check-cast p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    return v1

    .line 160
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    return v1
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .locals 10
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "last"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 165
    if-gez p3, :cond_0

    .line 166
    return v8

    .line 167
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lt p3, v7, :cond_1

    .line 168
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 p3, v7, -0x1

    .line 170
    :cond_1
    add-int/lit8 v3, p3, 0x1

    .line 172
    .local v3, "end":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 174
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v7, p0, Landroid/text/GetChars;

    if-nez v7, :cond_2

    const-class v7, Ljava/lang/StringBuffer;

    if-ne v1, v7, :cond_4

    .line 176
    :cond_2
    const/16 v0, 0x1f4

    .line 177
    .local v0, "INDEX_INCREMENT":I
    const/16 v7, 0x1f4

    invoke-static {v7}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v6

    .line 179
    .local v6, "temp":[C
    :goto_0
    if-ge p2, v3, :cond_7

    .line 180
    add-int/lit16 v5, v3, -0x1f4

    .line 181
    .local v5, "segstart":I
    if-ge v5, p2, :cond_3

    .line 182
    move v5, p2

    .line 184
    :cond_3
    invoke-static {p0, v5, v3, v6, v9}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 186
    sub-int v2, v3, v5

    .line 187
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_6

    .line 188
    aget-char v7, v6, v4

    if-ne v7, p1, :cond_5

    .line 189
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    .line 190
    add-int v7, v4, v5

    return v7

    .line 175
    .end local v0    # "INDEX_INCREMENT":I
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "segstart":I
    .end local v6    # "temp":[C
    :cond_4
    const-class v7, Ljava/lang/StringBuilder;

    if-eq v1, v7, :cond_2

    const-class v7, Ljava/lang/String;

    if-eq v1, v7, :cond_2

    .line 201
    add-int/lit8 v4, v3, -0x1

    .restart local v4    # "i":I
    :goto_2
    if-lt v4, p2, :cond_9

    .line 202
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, p1, :cond_8

    .line 203
    return v4

    .line 187
    .restart local v0    # "INDEX_INCREMENT":I
    .restart local v2    # "count":I
    .restart local v5    # "segstart":I
    .restart local v6    # "temp":[C
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 194
    :cond_6
    move v3, v5

    goto :goto_0

    .line 197
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "segstart":I
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    .line 198
    return v8

    .line 201
    .end local v0    # "INDEX_INCREMENT":I
    .end local v6    # "temp":[C
    .restart local v4    # "i":I
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 205
    :cond_9
    return v8
.end method

.method public static newDirectionsForTest([I)Landroid/text/Layout$Directions;
    .locals 1
    .param p0, "dir"    # [I

    .prologue
    .line 1859
    new-instance v0, Landroid/text/Layout$Directions;

    invoke-direct {v0, p0}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v0
.end method

.method public static nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 476
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method static obtain(I)[C
    .locals 3
    .param p0, "len"    # I

    .prologue
    .line 1359
    sget-object v2, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1360
    :try_start_0
    sget-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 1361
    .local v0, "buf":[C
    const/4 v1, 0x0

    sput-object v1, Landroid/text/TextUtils;->sTemp:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1364
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p0, :cond_1

    .line 1365
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v0

    .line 1367
    :cond_1
    return-object v0

    .line 1359
    .end local v0    # "buf":[C
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static packRangeInLong(II)J
    .locals 4
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 1746
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "logContent"    # Ljava/lang/String;

    .prologue
    .line 1906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[TextDebug] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    return-void
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 1031
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1030
    return-void
.end method

.method static recycle([C)V
    .locals 2
    .param p0, "temp"    # [C

    .prologue
    .line 1371
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 1372
    return-void

    .line 1374
    :cond_0
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1375
    :try_start_0
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1370
    return-void

    .line 1374
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 6
    .param p0, "one"    # Ljava/lang/CharSequence;
    .param p1, "toffset"    # I
    .param p2, "two"    # Ljava/lang/CharSequence;
    .param p3, "ooffset"    # I
    .param p4, "len"    # I

    .prologue
    .line 246
    mul-int/lit8 v3, p4, 0x2

    .line 247
    .local v3, "tempLen":I
    if-ge v3, p4, :cond_0

    .line 249
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 251
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v2

    .line 253
    .local v2, "temp":[C
    add-int v4, p1, p4

    const/4 v5, 0x0

    invoke-static {p0, p1, v4, v2, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 254
    add-int v4, p3, p4

    invoke-static {p2, p3, v4, v2, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 256
    const/4 v1, 0x1

    .line 257
    .local v1, "match":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 258
    aget-char v4, v2, v0

    add-int v5, v0, p4

    aget-char v5, v2, v5

    if-eq v4, v5, :cond_2

    .line 259
    const/4 v1, 0x0

    .line 264
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    .line 265
    return v1

    .line 257
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 9
    .param p1, "spanned"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "spans":[Ljava/lang/Object;, "[TT;"
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    .line 1708
    const/4 v0, 0x0

    .line 1709
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 1711
    .local v1, "count":I
    const/4 v3, 0x0

    .end local v0    # "copy":[Ljava/lang/Object;, "[TT;"
    .local v3, "i":I
    :goto_0
    array-length v7, p0

    if-ge v3, v7, :cond_2

    .line 1712
    aget-object v5, p0, v3

    .line 1713
    .local v5, "span":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1714
    .local v6, "start":I
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1716
    .local v2, "end":I
    if-ne v6, v2, :cond_1

    .line 1717
    if-nez v0, :cond_0

    .line 1718
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1719
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1720
    move v1, v3

    .line 1711
    .end local v0    # "copy":[Ljava/lang/Object;, "[TT;"
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1723
    :cond_1
    if-eqz v0, :cond_0

    .line 1724
    aput-object v5, v0, v1

    .line 1725
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1730
    .end local v2    # "end":I
    .end local v5    # "span":Ljava/lang/Object;, "TT;"
    .end local v6    # "start":I
    :cond_2
    if-eqz v0, :cond_3

    .line 1731
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 1732
    .local v4, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {v0, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1733
    return-object v4

    .line 1735
    .end local v4    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_3
    return-object p0
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "sources"    # [Ljava/lang/String;
    .param p2, "destinations"    # [Ljava/lang/CharSequence;

    .prologue
    .line 874
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 876
    .local v3, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    .line 877
    aget-object v5, p1, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    .line 879
    .local v4, "where":I
    if-ltz v4, :cond_0

    .line 880
    aget-object v5, p1, v1

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    .line 881
    const/16 v7, 0x21

    .line 880
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 876
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    .end local v4    # "where":I
    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 885
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 886
    .local v2, "start":I
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 888
    .local v0, "end":I
    if-ltz v2, :cond_2

    .line 889
    aget-object v5, p2, v1

    invoke-virtual {v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 884
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 893
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_3
    return-object v3
.end method

.method public static setBlocksDataForTest(Landroid/text/DynamicLayout;[I[II)V
    .locals 0
    .param p0, "dl"    # Landroid/text/DynamicLayout;
    .param p1, "blockEndLines"    # [I
    .param p2, "blockIndices"    # [I
    .param p3, "numberOfBlocks"    # I

    .prologue
    .line 1843
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/DynamicLayout;->setBlocksDataForTest([I[II)V

    .line 1842
    return-void
.end method

.method private static setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .locals 12
    .param p0, "mt"    # Landroid/text/MeasuredText;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 1311
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 1314
    instance-of v0, p2, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    move-object v7, p2

    check-cast v7, Landroid/text/Spanned;

    .line 1315
    :goto_0
    sub-int v6, p4, p3

    .line 1316
    .local v6, "len":I
    if-nez v7, :cond_2

    .line 1317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v11

    .line 1331
    .local v11, "width":F
    :cond_0
    return v11

    .line 1314
    .end local v6    # "len":I
    .end local v11    # "width":F
    :cond_1
    const/4 v7, 0x0

    .local v7, "sp":Landroid/text/Spanned;
    goto :goto_0

    .line 1319
    .end local v7    # "sp":Landroid/text/Spanned;
    .restart local v6    # "len":I
    :cond_2
    const/4 v11, 0x0

    .line 1321
    .restart local v11    # "width":F
    const/4 v9, 0x0

    .local v9, "spanStart":I
    :goto_1
    if-ge v9, v6, :cond_0

    .line 1323
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    .line 1322
    invoke-interface {v7, v9, v6, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v8

    .line 1325
    .local v8, "spanEnd":I
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    .line 1324
    invoke-interface {v7, v9, v8, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/MetricAffectingSpan;

    .line 1326
    .local v10, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v10, v7, v0}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v10, [Landroid/text/style/MetricAffectingSpan;

    .line 1327
    .restart local v10    # "spans":[Landroid/text/style/MetricAffectingSpan;
    sub-int v0, v8, v9

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v10, v0, v1}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float/2addr v11, v0

    .line 1321
    move v9, v8

    goto :goto_1
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 352
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 354
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 368
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 369
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 371
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 452
    if-nez p0, :cond_0

    .line 453
    return-object v0

    .line 454
    :cond_0
    instance-of v0, p0, Landroid/text/SpannedString;

    if-eqz v0, :cond_1

    .line 455
    return-object p0

    .line 456
    :cond_1
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 457
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 459
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 276
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 277
    check-cast p0, Ljava/lang/String;

    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 278
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_0
    instance-of v2, p0, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    .line 279
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 280
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_1
    instance-of v2, p0, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_2

    .line 281
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 283
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_2
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 284
    .local v1, "temp":[C
    invoke-static {p0, p1, p2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 285
    new-instance v0, Ljava/lang/String;

    sub-int v2, p2, p1

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 286
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 288
    return-object v0
.end method

.method public static unpackRangeEndFromLong(J)I
    .locals 2
    .param p0, "range"    # J

    .prologue
    .line 1766
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static unpackRangeStartFromLong(J)I
    .locals 2
    .param p0, "range"    # J

    .prologue
    .line 1756
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static updateBlocksForTest(Landroid/text/DynamicLayout;III)V
    .locals 0
    .param p0, "dl"    # Landroid/text/DynamicLayout;
    .param p1, "startLine"    # I
    .param p2, "endLine"    # I
    .param p3, "newLineCount"    # I

    .prologue
    .line 1851
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    .line 1850
    return-void
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .locals 12
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 646
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_5

    .line 647
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, p0

    .line 650
    check-cast v5, Landroid/text/Spanned;

    .line 651
    .local v5, "sp":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-interface {v5, v10, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 658
    .local v2, "os":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v2

    if-ge v0, v7, :cond_4

    .line 659
    aget-object v1, v2, v0

    .line 660
    .local v1, "o":Ljava/lang/Object;
    aget-object v3, v2, v0

    .line 662
    .local v3, "prop":Ljava/lang/Object;
    instance-of v7, v3, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_0

    .line 663
    check-cast v3, Landroid/text/style/CharacterStyle;

    .end local v3    # "prop":Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v3

    .line 666
    .restart local v3    # "prop":Ljava/lang/Object;
    :cond_0
    instance-of v7, v3, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_2

    move-object v4, v3

    .line 667
    check-cast v4, Landroid/text/ParcelableSpan;

    .line 668
    .local v4, "ps":Landroid/text/ParcelableSpan;
    invoke-interface {v4}, Landroid/text/ParcelableSpan;->getSpanTypeIdInternal()I

    move-result v6

    .line 669
    .local v6, "spanTypeId":I
    if-lt v6, v11, :cond_1

    const/16 v7, 0x1a

    if-le v6, v7, :cond_3

    .line 670
    :cond_1
    const-string/jumbo v7, "TextUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "External class \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 671
    const-string/jumbo v9, "\" is attempting to use the frameworks-only ParcelableSpan"

    .line 670
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 672
    const-string/jumbo v9, " interface"

    .line 670
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .end local v4    # "ps":Landroid/text/ParcelableSpan;
    .end local v6    # "spanTypeId":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    .restart local v4    # "ps":Landroid/text/ParcelableSpan;
    .restart local v6    # "spanTypeId":I
    :cond_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    invoke-interface {v4, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 676
    invoke-static {p1, v5, v1}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    goto :goto_1

    .line 681
    .end local v1    # "o":Ljava/lang/Object;
    .end local v3    # "prop":Ljava/lang/Object;
    .end local v4    # "ps":Landroid/text/ParcelableSpan;
    .end local v6    # "spanTypeId":I
    :cond_4
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    .end local v0    # "i":I
    .end local v2    # "os":[Ljava/lang/Object;
    .end local v5    # "sp":Landroid/text/Spanned;
    :goto_2
    return-void

    .line 683
    :cond_5
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    if-eqz p0, :cond_6

    .line 685
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 687
    :cond_6
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spanned;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 693
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    return-void
.end method
