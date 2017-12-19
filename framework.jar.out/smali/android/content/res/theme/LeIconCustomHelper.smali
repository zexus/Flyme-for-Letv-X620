.class public Landroid/content/res/theme/LeIconCustomHelper;
.super Ljava/lang/Object;
.source "LeIconCustomHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LeIconCustomHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDynamicCalendarIcon(Landroid/graphics/Bitmap;Landroid/content/res/theme/CalendarTheme;)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "iconBt"    # Landroid/graphics/Bitmap;
    .param p1, "calendarTheme"    # Landroid/content/res/theme/CalendarTheme;

    .prologue
    .line 192
    move-object/from16 v0, p0

    .line 193
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v7, p1

    .line 194
    .local v7, "theme":Landroid/content/res/theme/CalendarTheme;
    if-nez v7, :cond_0

    .line 195
    return-object v0

    .line 197
    :cond_0
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 198
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 201
    .local v2, "calendar":Ljava/util/Calendar;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "E"

    invoke-direct {v4, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 202
    .local v4, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 203
    .local v8, "weekStr":Ljava/lang/String;
    const/4 v11, 0x5

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "dayStr":Ljava/lang/String;
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    .line 206
    .local v6, "paint":Landroid/text/TextPaint;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 207
    .local v1, "bound":Landroid/graphics/Rect;
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 208
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 209
    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->weekMarginTop:F

    float-to-double v12, v11

    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-eqz v11, :cond_1

    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->weekTextColor:I

    if-eqz v11, :cond_1

    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->weekTextSize:F

    float-to-double v12, v11

    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-eqz v11, :cond_1

    .line 210
    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->weekTextColor:I

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 211
    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->weekTextSize:F

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 212
    iget-object v11, v7, Landroid/content/res/theme/CalendarTheme;->weekFontType:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 213
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v8, v12, v11, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 214
    iget v11, v1, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iget v12, v1, Landroid/graphics/Rect;->right:I

    iget v13, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v7, Landroid/content/res/theme/CalendarTheme;->weekMarginLeft:F

    add-float v9, v11, v12

    .line 215
    .local v9, "x":F
    iget v11, v1, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    int-to-float v11, v11

    iget v12, v7, Landroid/content/res/theme/CalendarTheme;->weekMarginTop:F

    add-float v10, v11, v12

    .line 216
    .local v10, "y":F
    const-string/jumbo v11, "LeIconCustomHelper_calendar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "week x is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  and y is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v3, v8, v9, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 219
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_1
    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->dayMarginTop:F

    float-to-double v12, v11

    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-eqz v11, :cond_2

    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->dayTextColor:I

    if-eqz v11, :cond_2

    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->dayTextSize:F

    float-to-double v12, v11

    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-eqz v11, :cond_2

    .line 220
    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->dayTextColor:I

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 221
    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->dayTextSize:F

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 222
    iget-object v11, v7, Landroid/content/res/theme/CalendarTheme;->dayFontType:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 223
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v5, v12, v11, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 224
    iget v11, v1, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iget v12, v1, Landroid/graphics/Rect;->right:I

    iget v13, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v7, Landroid/content/res/theme/CalendarTheme;->dayMarginLeft:F

    add-float v9, v11, v12

    .line 225
    .restart local v9    # "x":F
    iget v11, v1, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    int-to-float v11, v11

    iget v12, v7, Landroid/content/res/theme/CalendarTheme;->dayMarginTop:F

    add-float v10, v11, v12

    .line 226
    .restart local v10    # "y":F
    const-string/jumbo v11, "LeIconCustomHelper_calendar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "day x is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  and y is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v3, v5, v9, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 229
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 230
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 231
    return-object v0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 352
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 353
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 354
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 351
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 356
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 357
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 358
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 359
    return-object v0

    .line 355
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static getClipIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/util/DisplayMetrics;)Landroid/graphics/drawable/Drawable;
    .locals 21
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 313
    const/4 v2, 0x0

    .line 314
    .local v2, "clipDrawable":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v14, "/data/letvTheme/"

    .line 315
    .local v14, "templateFilePath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v6, "letvThemeFile":Ljava/io/File;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    cmp-long v16, v16, v18

    if-gez v16, :cond_1

    .line 317
    :cond_0
    const-string/jumbo v14, "/system/etc/letvTheme_3rd_default/"

    .line 319
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/content/res/theme/LeThemeUtils;->is2KScreen(Landroid/util/DisplayMetrics;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 320
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "icons_2k"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "template"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 324
    :goto_0
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v13, "templateFile":Ljava/io/File;
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_5

    .line 326
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v5, "filePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    const/16 v16, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    aget-object v4, v17, v16

    .line 328
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "png"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 329
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 322
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "filePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "templateFile":Ljava/io/File;
    :cond_3
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "icons_1080p"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "template"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 332
    .restart local v5    # "filePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "templateFile":Ljava/io/File;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 333
    .local v7, "listSize":I
    if-lez v7, :cond_5

    .line 334
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 335
    .local v8, "rand":Ljava/util/Random;
    invoke-virtual {v8, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 336
    .local v9, "randNum":I
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 337
    .local v15, "templateRandFilePath":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 338
    invoke-static/range {p1 .. p1}, Landroid/content/res/theme/LeIconCustomHelper;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 339
    .local v10, "resBitmap":Landroid/graphics/Bitmap;
    invoke-static {v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 340
    .local v12, "templateBitmap":Landroid/graphics/Bitmap;
    invoke-static {v10}, Landroid/content/res/theme/LeIconCustomHelper;->getPixelAreaOfBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 341
    .local v11, "tempBitmap":Landroid/graphics/Bitmap;
    invoke-static {v12, v11}, Landroid/content/res/theme/LeIconCustomHelper;->getMixingBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 342
    .local v3, "desBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "clipDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 346
    .end local v3    # "desBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "filePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "listSize":I
    .end local v8    # "rand":Ljava/util/Random;
    .end local v9    # "randNum":I
    .end local v10    # "resBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "templateBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "templateRandFilePath":Ljava/lang/String;
    :cond_5
    return-object v2
.end method

.method public static getCurrentPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string/jumbo v4, "/data/letvTheme/"

    .line 59
    .local v4, "filePath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 60
    .local v0, "displayMetrisFilePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 62
    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "/data/letvTheme1/"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v9, "letvTheme1File":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 64
    const-string/jumbo v4, "/system/etc/letvTheme_3rd_default/"

    .line 70
    .end local v9    # "letvTheme1File":Ljava/io/File;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v10}, Landroid/content/res/theme/LeThemeUtils;->is2KScreen(Landroid/util/DisplayMetrics;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 71
    const-string/jumbo v0, "icons_2k"

    .line 75
    .local v0, "displayMetrisFilePath":Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v8, "iconFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 81
    .local v5, "iStream":Ljava/io/InputStream;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    .line 83
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v5    # "iStream":Ljava/io/InputStream;
    .local v6, "iStream":Ljava/io/InputStream;
    if-eqz v6, :cond_3

    .line 85
    :try_start_1
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 86
    .local v7, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_3

    .line 93
    if-eqz v6, :cond_7

    .line 95
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    const/4 v5, 0x0

    .line 87
    .end local v6    # "iStream":Ljava/io/InputStream;
    :goto_2
    return-object v7

    .line 66
    .end local v7    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "iconFile":Ljava/io/File;
    .local v0, "displayMetrisFilePath":Ljava/lang/String;
    .restart local v9    # "letvTheme1File":Ljava/io/File;
    :cond_1
    const-string/jumbo v4, "/data/letvTheme1/"

    goto :goto_0

    .line 73
    .end local v9    # "letvTheme1File":Ljava/io/File;
    :cond_2
    const-string/jumbo v0, "icons_1080p"

    .local v0, "displayMetrisFilePath":Ljava/lang/String;
    goto :goto_1

    .line 97
    .restart local v6    # "iStream":Ljava/io/InputStream;
    .restart local v7    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "iconFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "iStream":Ljava/io/InputStream;
    .local v5, "iStream":Ljava/io/InputStream;
    goto :goto_2

    .line 93
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "iStream":Ljava/io/InputStream;
    .end local v7    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "iStream":Ljava/io/InputStream;
    :cond_3
    if-eqz v6, :cond_5

    .line 95
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 96
    .end local v6    # "iStream":Ljava/io/InputStream;
    :goto_3
    const/4 v5, 0x0

    .line 104
    :cond_4
    :goto_4
    const/4 v10, 0x0

    return-object v10

    .line 97
    .restart local v6    # "iStream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 98
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    move-object v5, v6

    .end local v6    # "iStream":Ljava/io/InputStream;
    .restart local v5    # "iStream":Ljava/io/InputStream;
    goto :goto_4

    .line 90
    .local v5, "iStream":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .line 91
    .end local v5    # "iStream":Ljava/io/InputStream;
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    if-eqz v5, :cond_4

    .line 95
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 97
    :catch_3
    move-exception v1

    .line 98
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 92
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 93
    :goto_6
    if-eqz v5, :cond_6

    .line 95
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 96
    const/4 v5, 0x0

    .line 92
    :cond_6
    :goto_7
    throw v10

    .line 97
    :catch_4
    move-exception v1

    .line 98
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 92
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "iStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "iStream":Ljava/io/InputStream;
    .local v5, "iStream":Ljava/io/InputStream;
    goto :goto_6

    .line 90
    .end local v5    # "iStream":Ljava/io/InputStream;
    .restart local v6    # "iStream":Ljava/io/InputStream;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "iStream":Ljava/io/InputStream;
    .restart local v5    # "iStream":Ljava/io/InputStream;
    goto :goto_5

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "iStream":Ljava/io/InputStream;
    .restart local v6    # "iStream":Ljava/io/InputStream;
    .restart local v7    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_7
    move-object v5, v6

    .end local v6    # "iStream":Ljava/io/InputStream;
    .restart local v5    # "iStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDrawIcon()Landroid/graphics/Bitmap;
    .locals 23

    .prologue
    .line 114
    const-string/jumbo v16, "com.android.calendar"

    .line 115
    .local v16, "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 116
    .local v11, "iconPath":Ljava/lang/String;
    const-string/jumbo v18, "com.android.calendar"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 117
    invoke-static {}, Landroid/content/res/theme/LeThemeUtils;->getCalendarIconFilePath()Ljava/lang/String;

    move-result-object v11

    .line 119
    .end local v11    # "iconPath":Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 120
    :cond_1
    const/16 v18, 0x0

    return-object v18

    .line 122
    :cond_2
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v10, "iconFile":Ljava/io/File;
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_a

    .line 124
    const/16 v17, 0x0

    .line 125
    .local v17, "srcIonFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 126
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v19

    const/16 v18, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .end local v17    # "srcIonFile":Ljava/io/File;
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    aget-object v15, v19, v18

    .line 127
    .local v15, "mfile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "png"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 128
    move-object/from16 v17, v15

    .line 126
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 131
    .end local v15    # "mfile":Ljava/io/File;
    :cond_4
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_a

    .line 132
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 133
    .local v3, "calendarIconBt":Landroid/graphics/Bitmap;
    new-instance v14, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "manifest.xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v14, "manifestFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 135
    .local v4, "calendarTheme":Landroid/content/res/theme/CalendarTheme;
    const/4 v12, 0x0

    .line 137
    .local v12, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v12    # "is":Ljava/io/FileInputStream;
    .local v13, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v13}, Landroid/content/res/theme/LeIconCustomHelper;->getManifest(Ljava/io/InputStream;)Landroid/content/res/theme/CalendarTheme;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v4

    .line 142
    .local v4, "calendarTheme":Landroid/content/res/theme/CalendarTheme;
    if-eqz v13, :cond_5

    .line 144
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_1
    move-object v12, v13

    .line 150
    .end local v4    # "calendarTheme":Landroid/content/res/theme/CalendarTheme;
    .end local v13    # "is":Ljava/io/FileInputStream;
    :cond_6
    :goto_2
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 151
    invoke-static {v3, v4}, Landroid/content/res/theme/LeIconCustomHelper;->createDynamicCalendarIcon(Landroid/graphics/Bitmap;Landroid/content/res/theme/CalendarTheme;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 152
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_a

    .line 153
    return-object v2

    .line 145
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "calendarTheme":Landroid/content/res/theme/CalendarTheme;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    .line 146
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 139
    .end local v5    # "e":Ljava/io/IOException;
    .end local v13    # "is":Ljava/io/FileInputStream;
    .local v4, "calendarTheme":Landroid/content/res/theme/CalendarTheme;
    .restart local v12    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    .line 140
    .end local v12    # "is":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    if-eqz v12, :cond_6

    .line 144
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 145
    :catch_2
    move-exception v5

    .line 146
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 141
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 142
    :goto_4
    if-eqz v12, :cond_7

    .line 144
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 141
    :cond_7
    :goto_5
    throw v18

    .line 145
    :catch_3
    move-exception v5

    .line 146
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 157
    .end local v3    # "calendarIconBt":Landroid/graphics/Bitmap;
    .end local v4    # "calendarTheme":Landroid/content/res/theme/CalendarTheme;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v14    # "manifestFile":Ljava/io/File;
    .restart local v17    # "srcIonFile":Ljava/io/File;
    :cond_8
    const/4 v7, 0x0

    .line 159
    .local v7, "iStream":Ljava/io/InputStream;
    :try_start_6
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 160
    .end local v7    # "iStream":Ljava/io/InputStream;
    .local v8, "iStream":Ljava/io/InputStream;
    if-eqz v8, :cond_9

    .line 161
    :try_start_7
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v9

    .line 162
    .local v9, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_9

    .line 169
    if-eqz v8, :cond_c

    .line 171
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 172
    const/4 v7, 0x0

    .line 163
    .end local v8    # "iStream":Ljava/io/InputStream;
    :goto_6
    return-object v9

    .line 173
    .restart local v8    # "iStream":Ljava/io/InputStream;
    :catch_4
    move-exception v5

    .line 174
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .end local v8    # "iStream":Ljava/io/InputStream;
    .local v7, "iStream":Ljava/io/InputStream;
    goto :goto_6

    .line 169
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "iStream":Ljava/io/InputStream;
    .end local v9    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "iStream":Ljava/io/InputStream;
    :cond_9
    if-eqz v8, :cond_a

    .line 171
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 172
    .end local v8    # "iStream":Ljava/io/InputStream;
    :goto_7
    const/4 v7, 0x0

    .line 180
    .end local v17    # "srcIonFile":Ljava/io/File;
    :cond_a
    :goto_8
    const/16 v18, 0x0

    return-object v18

    .line 173
    .restart local v8    # "iStream":Ljava/io/InputStream;
    .restart local v17    # "srcIonFile":Ljava/io/File;
    :catch_5
    move-exception v5

    .line 174
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 166
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "iStream":Ljava/io/InputStream;
    .local v7, "iStream":Ljava/io/InputStream;
    :catch_6
    move-exception v6

    .line 167
    .end local v7    # "iStream":Ljava/io/InputStream;
    .restart local v6    # "e":Ljava/lang/Exception;
    :goto_9
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 169
    if-eqz v7, :cond_a

    .line 171
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_7

    .line 173
    :catch_7
    move-exception v5

    .line 174
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 168
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v18

    .line 169
    :goto_a
    if-eqz v7, :cond_b

    .line 171
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 172
    const/4 v7, 0x0

    .line 168
    :cond_b
    :goto_b
    throw v18

    .line 173
    :catch_8
    move-exception v5

    .line 174
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 168
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v8    # "iStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v18

    move-object v7, v8

    .end local v8    # "iStream":Ljava/io/InputStream;
    .local v7, "iStream":Ljava/io/InputStream;
    goto :goto_a

    .line 166
    .end local v7    # "iStream":Ljava/io/InputStream;
    .restart local v8    # "iStream":Ljava/io/InputStream;
    :catch_9
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "iStream":Ljava/io/InputStream;
    .restart local v7    # "iStream":Ljava/io/InputStream;
    goto :goto_9

    .line 141
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "iStream":Ljava/io/InputStream;
    .end local v17    # "srcIonFile":Ljava/io/File;
    .restart local v3    # "calendarIconBt":Landroid/graphics/Bitmap;
    .restart local v4    # "calendarTheme":Landroid/content/res/theme/CalendarTheme;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    .restart local v14    # "manifestFile":Ljava/io/File;
    :catchall_3
    move-exception v18

    move-object v12, v13

    .end local v13    # "is":Ljava/io/FileInputStream;
    .local v12, "is":Ljava/io/FileInputStream;
    goto :goto_4

    .line 139
    .end local v12    # "is":Ljava/io/FileInputStream;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    :catch_a
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v12, v13

    .end local v13    # "is":Ljava/io/FileInputStream;
    .restart local v12    # "is":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "calendarIconBt":Landroid/graphics/Bitmap;
    .end local v4    # "calendarTheme":Landroid/content/res/theme/CalendarTheme;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v12    # "is":Ljava/io/FileInputStream;
    .end local v14    # "manifestFile":Ljava/io/File;
    .restart local v8    # "iStream":Ljava/io/InputStream;
    .restart local v9    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v17    # "srcIonFile":Ljava/io/File;
    :cond_c
    move-object v7, v8

    .end local v8    # "iStream":Ljava/io/InputStream;
    .restart local v7    # "iStream":Ljava/io/InputStream;
    goto :goto_6
.end method

.method public static getManifest(Ljava/io/InputStream;)Landroid/content/res/theme/CalendarTheme;
    .locals 17
    .param p0, "xml"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v2, Landroid/content/res/theme/CalendarTheme;

    invoke-direct {v2}, Landroid/content/res/theme/CalendarTheme;-><init>()V

    .line 243
    .local v2, "calendarTheme":Landroid/content/res/theme/CalendarTheme;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 244
    .local v9, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v15, "UTF-8"

    move-object/from16 v0, p0

    invoke-interface {v9, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 245
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 246
    .local v8, "event":I
    :goto_0
    const/4 v15, 0x1

    if-eq v8, v15, :cond_b

    .line 247
    packed-switch v8, :pswitch_data_0

    .line 300
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_0

    .line 251
    :pswitch_1
    const-string/jumbo v15, "BroadcastBinder"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 252
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "actionName":Ljava/lang/String;
    iget-object v15, v2, Landroid/content/res/theme/CalendarTheme;->actionList:Ljava/util/List;

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v1    # "actionName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v15, "week_margin_top"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 256
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 257
    .local v12, "weekMarginTop":F
    invoke-virtual {v2, v12}, Landroid/content/res/theme/CalendarTheme;->setWeekMarginTop(F)V

    .line 259
    .end local v12    # "weekMarginTop":F
    :cond_2
    const-string/jumbo v15, "week_margin_left"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 260
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 261
    .local v11, "weekMarginLeft":F
    invoke-virtual {v2, v11}, Landroid/content/res/theme/CalendarTheme;->setWeekMarginLeft(F)V

    .line 263
    .end local v11    # "weekMarginLeft":F
    :cond_3
    const-string/jumbo v15, "week_font"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 264
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 265
    .local v10, "weekFont":Ljava/lang/String;
    invoke-virtual {v2, v10}, Landroid/content/res/theme/CalendarTheme;->setWeekFontType(Ljava/lang/String;)V

    .line 267
    .end local v10    # "weekFont":Ljava/lang/String;
    :cond_4
    const-string/jumbo v15, "week_text_size"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 269
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 270
    .local v14, "weekTextSize":F
    invoke-virtual {v2, v14}, Landroid/content/res/theme/CalendarTheme;->setWeekTextSize(F)V

    .line 272
    .end local v14    # "weekTextSize":F
    :cond_5
    const-string/jumbo v15, "week_text_color"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 273
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    .line 274
    .local v13, "weekTextColor":Ljava/lang/String;
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/content/res/theme/CalendarTheme;->setWeekTextColor(I)V

    .line 276
    .end local v13    # "weekTextColor":Ljava/lang/String;
    :cond_6
    const-string/jumbo v15, "day_margin_top"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 277
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 278
    .local v5, "dayMarginTop":F
    invoke-virtual {v2, v5}, Landroid/content/res/theme/CalendarTheme;->setDayMarginTop(F)V

    .line 280
    .end local v5    # "dayMarginTop":F
    :cond_7
    const-string/jumbo v15, "day_margin_left"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 281
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 282
    .local v4, "dayMarginLeft":F
    invoke-virtual {v2, v4}, Landroid/content/res/theme/CalendarTheme;->setDayMarginLeft(F)V

    .line 284
    .end local v4    # "dayMarginLeft":F
    :cond_8
    const-string/jumbo v15, "day_font"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 285
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "dayFont":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/content/res/theme/CalendarTheme;->setDayFontType(Ljava/lang/String;)V

    .line 288
    .end local v3    # "dayFont":Ljava/lang/String;
    :cond_9
    const-string/jumbo v15, "day_text_size"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 289
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 290
    .local v7, "dayTextSize":F
    invoke-virtual {v2, v7}, Landroid/content/res/theme/CalendarTheme;->setDayTextSize(F)V

    .line 292
    .end local v7    # "dayTextSize":F
    :cond_a
    const-string/jumbo v15, "day_text_color"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 293
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, "dayTextColor":Ljava/lang/String;
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/content/res/theme/CalendarTheme;->setDayTextColor(I)V

    goto/16 :goto_1

    .line 302
    .end local v6    # "dayTextColor":Ljava/lang/String;
    :cond_b
    return-object v2

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMixingBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "template"    # Landroid/graphics/Bitmap;
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 452
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 454
    .local v4, "beginTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 455
    .local v15, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 456
    .local v14, "sourceHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 457
    .local v17, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 458
    .local v7, "height":I
    const-string/jumbo v18, "LeIconCustomHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " getMixingBitmap sourceWidth = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " sourceHeight = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " width = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " height = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v7

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 464
    .local v13, "ratio":F
    move/from16 v0, v17

    if-lt v0, v7, :cond_1

    .line 465
    move/from16 v17, v15

    .line 466
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v18, v13

    move/from16 v0, v18

    float-to-int v7, v0

    .line 471
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/content/res/theme/LeIconCustomHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 473
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 474
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 475
    const-string/jumbo v18, "LeIconCustomHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " getMixingBitmap sourceWidth = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " sourceHeight = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " width = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " height = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    sub-int v18, v15, v17

    div-int/lit8 v10, v18, 0x2

    .line 479
    .local v10, "left":I
    sub-int v18, v14, v7

    div-int/lit8 v16, v18, 0x2

    .line 481
    .local v16, "top":I
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    invoke-static {v15, v14, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 482
    .local v11, "mixingBitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 483
    .local v12, "paint":Landroid/graphics/Paint;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 484
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 485
    .local v6, "canvas":Landroid/graphics/Canvas;
    int-to-float v0, v10

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 486
    new-instance v18, Landroid/graphics/PorterDuffXfermode;

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v18 .. v19}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 487
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 489
    .local v8, "endTime":J
    const-string/jumbo v18, "LeIconCustomHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " getMixingBitmap use time = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v8, v4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-object v11

    .line 467
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "endTime":J
    .end local v10    # "left":I
    .end local v11    # "mixingBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "paint":Landroid/graphics/Paint;
    .end local v16    # "top":I
    :cond_1
    move/from16 v0, v17

    if-le v7, v0, :cond_0

    .line 468
    move v7, v14

    .line 469
    int-to-float v0, v7

    move/from16 v18, v0

    mul-float v18, v18, v13

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_0
.end method

.method public static getPixelAreaOfBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 39
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 371
    .local v26, "beginTime":J
    if-nez p0, :cond_0

    .line 372
    const-string/jumbo v2, "LeIconCustomHelper"

    const-string/jumbo v4, " getPixelAreaOfBitmap bitmap is null "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v2, 0x0

    return-object v2

    .line 375
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v38

    .line 376
    .local v38, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 377
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v29

    .line 378
    .local v29, "density":I
    const-string/jumbo v2, "LeIconCustomHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPixelAreaOfBitmap width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " density = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v37, -0x1

    .line 381
    .local v37, "value":I
    const/16 v34, -0x1

    .local v34, "left":I
    const/16 v35, -0x1

    .line 382
    .local v35, "right":I
    new-array v3, v9, [I

    .line 383
    .local v3, "pixels_column":[I
    div-int/lit8 v32, v38, 0x2

    .line 385
    .local v32, "halfOfWidth":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, v32

    if-ge v6, v0, :cond_3

    .line 386
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 387
    invoke-static {v3}, Landroid/content/res/theme/LeIconCustomHelper;->intArrayToInt([I)I

    move-result v37

    .line 388
    const/4 v2, -0x1

    move/from16 v0, v34

    if-ne v0, v2, :cond_1

    if-eqz v37, :cond_1

    .line 389
    add-int/lit8 v34, v6, 0x1

    .line 391
    :cond_1
    add-int/lit8 v2, v38, -0x1

    sub-int v14, v2, v6

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v10, p0

    move-object v11, v3

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 392
    invoke-static {v3}, Landroid/content/res/theme/LeIconCustomHelper;->intArrayToInt([I)I

    move-result v37

    .line 393
    const/4 v2, -0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_2

    if-eqz v37, :cond_2

    .line 394
    add-int/lit8 v35, v6, 0x1

    .line 396
    :cond_2
    const/4 v2, -0x1

    move/from16 v0, v34

    if-eq v0, v2, :cond_6

    const/4 v2, -0x1

    move/from16 v0, v35

    if-eq v0, v2, :cond_6

    .line 397
    const-string/jumbo v2, "LeIconCustomHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " left = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " right = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_3
    const/16 v17, -0x1

    .local v17, "top":I
    const/16 v28, -0x1

    .line 403
    .local v28, "bottom":I
    move/from16 v0, v38

    new-array v11, v0, [I

    .line 404
    .local v11, "pixels_row":[I
    div-int/lit8 v33, v9, 0x2

    .line 405
    .local v33, "halfOfheight":I
    const/4 v6, 0x0

    move/from16 v36, v17

    .end local v17    # "top":I
    .local v36, "top":I
    :goto_1
    move/from16 v0, v33

    if-ge v6, v0, :cond_8

    .line 406
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    move-object/from16 v10, p0

    move/from16 v13, v38

    move v15, v6

    move/from16 v16, v38

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 407
    invoke-static {v11}, Landroid/content/res/theme/LeIconCustomHelper;->intArrayToInt([I)I

    move-result v37

    .line 408
    const/4 v2, -0x1

    move/from16 v0, v36

    if-ne v0, v2, :cond_4

    if-eqz v37, :cond_4

    .line 409
    add-int/lit8 v17, v6, 0x1

    .end local v36    # "top":I
    .restart local v17    # "top":I
    move/from16 v36, v17

    .line 411
    .end local v17    # "top":I
    .restart local v36    # "top":I
    :cond_4
    add-int/lit8 v2, v9, -0x1

    sub-int v15, v2, v6

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    move-object/from16 v10, p0

    move/from16 v13, v38

    move/from16 v16, v38

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 412
    invoke-static {v11}, Landroid/content/res/theme/LeIconCustomHelper;->intArrayToInt([I)I

    move-result v37

    .line 413
    const/4 v2, -0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_5

    if-eqz v37, :cond_5

    .line 414
    add-int/lit8 v28, v6, 0x1

    .line 416
    :cond_5
    const/4 v2, -0x1

    move/from16 v0, v36

    if-eq v0, v2, :cond_7

    const/4 v2, -0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_7

    .line 417
    const-string/jumbo v2, "LeIconCustomHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " top = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bottom = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v36

    .line 422
    .end local v36    # "top":I
    .restart local v17    # "top":I
    :goto_2
    const-string/jumbo v2, "LeIconCustomHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " getPixelAreaOfBitmap use time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v26

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    sub-int v2, v38, v35

    sub-int v15, v2, v34

    .line 424
    .local v15, "bitmap_w":I
    sub-int v2, v9, v28

    sub-int v19, v2, v17

    .line 425
    .local v19, "bitmap_h":I
    mul-int v2, v15, v19

    new-array v13, v2, [I

    .line 426
    .local v13, "pixels":[I
    const/4 v14, 0x0

    move-object/from16 v12, p0

    move/from16 v16, v34

    move/from16 v18, v15

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 428
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 427
    const/16 v21, 0x0

    move-object/from16 v20, v13

    move/from16 v22, v15

    move/from16 v23, v15

    move/from16 v24, v19

    invoke-static/range {v20 .. v25}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 429
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    .line 430
    .local v30, "endTime":J
    const-string/jumbo v2, "LeIconCustomHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " getPixelAreaOfBitmap use time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v20, v30, v26

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string/jumbo v2, "LeIconCustomHelper"

    const-string/jumbo v4, "----"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-object p0

    .line 385
    .end local v11    # "pixels_row":[I
    .end local v13    # "pixels":[I
    .end local v15    # "bitmap_w":I
    .end local v17    # "top":I
    .end local v19    # "bitmap_h":I
    .end local v28    # "bottom":I
    .end local v30    # "endTime":J
    .end local v33    # "halfOfheight":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 405
    .restart local v11    # "pixels_row":[I
    .restart local v28    # "bottom":I
    .restart local v33    # "halfOfheight":I
    .restart local v36    # "top":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_8
    move/from16 v17, v36

    .end local v36    # "top":I
    .restart local v17    # "top":I
    goto :goto_2
.end method

.method public static intArrayToInt([I)I
    .locals 4
    .param p0, "intArray"    # [I

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "returnInt":I
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p0, v2

    .line 438
    .local v1, "value":I
    add-int/2addr v0, v1

    .line 437
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    .end local v1    # "value":I
    :cond_0
    return v0
.end method

.method public static isReDrawCalendarIcon()Z
    .locals 6

    .prologue
    .line 514
    invoke-static {}, Landroid/content/res/theme/LeThemeUtils;->getCalendarIconFilePath()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "iconPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    .local v0, "iconFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    const/4 v2, 0x0

    return v2

    .line 519
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 502
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 503
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 504
    .local v4, "h":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 505
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 506
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 507
    .local v8, "scaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 508
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 509
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    return-object v7
.end method
