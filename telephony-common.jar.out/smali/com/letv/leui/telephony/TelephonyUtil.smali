.class public Lcom/letv/leui/telephony/TelephonyUtil;
.super Ljava/lang/Object;
.source "TelephonyUtil.java"


# static fields
.field private static final NOTIFICATION_ICON_CORNER:F = 1.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvatar(Landroid/content/Context;Landroid/graphics/Bitmap;IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 27
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 29
    .local v10, "output":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 30
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 31
    .local v11, "paint":Landroid/graphics/Paint;
    new-instance v12, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v12, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 32
    .local v12, "rect":Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 33
    .local v13, "rectF":Landroid/graphics/RectF;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 35
    if-eqz p1, :cond_0

    .line 36
    const/high16 v14, 0x3f800000    # 1.0f

    .line 37
    const/high16 v15, 0x3f800000    # 1.0f

    .line 36
    invoke-virtual {v4, v13, v14, v15, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 38
    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 39
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v12, v12, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 69
    :goto_0
    return-object v10

    .line 41
    :cond_0
    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 42
    move-object/from16 v0, p4

    invoke-static {v14, v0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getBackgroundColorByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    const/high16 v14, 0x3f800000    # 1.0f

    .line 45
    const/high16 v15, 0x3f800000    # 1.0f

    .line 44
    invoke-virtual {v4, v13, v14, v15, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 46
    invoke-static/range {p4 .. p4}, Lcom/letv/leui/telephony/TelephonyUtil;->shouldUseDefaultImage(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 50
    const v15, 0x108052f

    .line 47
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 52
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v5, v14, v15, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v10, v14, v15, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 56
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v14, -0x1

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 58
    move/from16 v0, p2

    int-to-float v14, v0

    const v15, 0x3f1e353f    # 0.618f

    mul-float/2addr v14, v15

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 59
    iget v14, v12, Landroid/graphics/Rect;->left:I

    iget v15, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    int-to-float v2, v14

    .line 60
    .local v2, "baseX":F
    iget v14, v12, Landroid/graphics/Rect;->top:I

    iget v15, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    int-to-float v3, v14

    .line 61
    .local v3, "baseY":F
    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    .line 62
    .local v6, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v14, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v15, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v7, v14, v15

    .line 63
    .local v7, "fontTotalHeight":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v7, v14

    iget v15, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v9, v14, v15

    .line 64
    .local v9, "offY":F
    add-float v14, v3, v9

    const/high16 v15, 0x40000000    # 2.0f

    sub-float v8, v14, v15

    .line 65
    .local v8, "newY":F
    invoke-static/range {p4 .. p4}, Lcom/letv/leui/telephony/TelephonyUtil;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14, v2, v8, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 66
    return-object v10
.end method

.method private static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 100
    .local v4, "len":I
    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 101
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 102
    .local v0, "c":C
    invoke-static {v0}, Lcom/letv/leui/telephony/TelephonyUtil;->isChinese(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 100
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 107
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "firstLetter":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 109
    .restart local v0    # "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 110
    const-string/jumbo v7, " "

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "subString":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 112
    array-length v5, v6

    .line 113
    .local v5, "length":I
    const/4 v7, 0x2

    if-lt v5, v7, :cond_2

    aget-object v7, v6, v9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 122
    :cond_2
    return-object v1

    .line 114
    :cond_3
    aget-object v7, v6, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "lastLetter":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 116
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 120
    :cond_4
    return-object v1

    .line 125
    .end local v3    # "lastLetter":Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "subString":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, ""

    return-object v7
.end method

.method private static isChinese(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 130
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 131
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 132
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 134
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 133
    :cond_1
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 136
    const/4 v1, 0x0

    return v1
.end method

.method private static shouldUseDefaultImage(Ljava/lang/String;)Z
    .locals 8
    .param p0, "badgeText"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 73
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    return v7

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    return v7

    .line 80
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 82
    .local v3, "len":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 83
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 84
    .local v0, "c":C
    invoke-static {v0}, Lcom/letv/leui/telephony/TelephonyUtil;->isChinese(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    return v6

    .line 82
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 88
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "firstLetter":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 90
    .restart local v0    # "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 91
    return v6

    .line 93
    :cond_4
    return v7
.end method
