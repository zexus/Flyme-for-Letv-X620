.class public Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;
.super Ljava/lang/Object;
.source "StatusbarColorFromTitleHelper.java"


# static fields
.field public static CAPTURE_HEIGHT:I = 0x0

.field public static CAPTURE_WIDTH:I = 0x0

.field public static DEBUG:Z = false

.field public static LEUI_IMMERSIVE_STATUSBAR_ENABLE:Z = false

.field public static final TAG:Ljava/lang/String; = "StatusbarColorFromTitleHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x5

    sput v0, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->CAPTURE_WIDTH:I

    .line 43
    const/16 v0, 0x46

    sput v0, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->CAPTURE_HEIGHT:I

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->DEBUG:Z

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->LEUI_IMMERSIVE_STATUSBAR_ENABLE:Z

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureScreen(Landroid/app/Activity;)Lcom/letv/leui/util/statusbar/StatusbarColorInfo;
    .locals 10
    .param p0, "pActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 53
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 54
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 55
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 56
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 57
    .local v3, "stautsHeight":I
    const/4 v0, 0x0

    .line 59
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-lez v3, :cond_1

    .line 60
    sget v5, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->CAPTURE_WIDTH:I

    sget v6, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->CAPTURE_HEIGHT:I

    add-int/2addr v6, v3

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 65
    .local v2, "mCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v4, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 67
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-gtz v5, :cond_2

    .line 68
    :cond_0
    return-object v9

    .line 62
    .end local v2    # "mCanvas":Landroid/graphics/Canvas;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v9

    .line 67
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "mCanvas":Landroid/graphics/Canvas;
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lez v5, :cond_0

    .line 70
    sget v5, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->CAPTURE_WIDTH:I

    sget v6, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->CAPTURE_HEIGHT:I

    invoke-static {v0, v8, v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->getColorFromBitmap(Landroid/graphics/Bitmap;)Lcom/letv/leui/util/statusbar/StatusbarColorInfo;

    move-result-object v5

    return-object v5
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 150
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 151
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 156
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    const/16 v5, 0x50

    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/16 v3, 0x1e0

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 158
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 159
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return-object v0

    .line 161
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    throw v2
.end method

.method public static getColorFromBitmap(Landroid/graphics/Bitmap;)Lcom/letv/leui/util/statusbar/StatusbarColorInfo;
    .locals 9
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 128
    :try_start_0
    invoke-static {p0}, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->getMainColorInBitmap(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 129
    .local v5, "pixel":I
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 130
    .local v6, "red":I
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 131
    .local v1, "blue":I
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 132
    .local v3, "green":I
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 134
    .local v0, "alpha":I
    new-instance v4, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;

    invoke-direct {v4}, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;-><init>()V

    .line 135
    .local v4, "mInfo":Lcom/letv/leui/util/statusbar/StatusbarColorInfo;
    const/16 v7, 0xd2

    if-gt v3, v7, :cond_0

    add-int v7, v6, v3

    add-int/2addr v7, v1

    const/16 v8, 0x20d

    if-le v7, v8, :cond_1

    .line 136
    :cond_0
    const/high16 v7, -0x1000000

    invoke-virtual {v4, v7}, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->setStatusbarIconColor(I)V

    .line 140
    :goto_0
    invoke-static {v0, v6, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->setStatusbarBgColor(I)V

    .line 141
    return-object v4

    .line 138
    :cond_1
    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->setStatusbarIconColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v3    # "green":I
    .end local v4    # "mInfo":Lcom/letv/leui/util/statusbar/StatusbarColorInfo;
    .end local v5    # "pixel":I
    .end local v6    # "red":I
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    const/4 v7, 0x0

    return-object v7
.end method

.method private static getMainColorInBitmap(Landroid/graphics/Bitmap;)I
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 75
    if-nez p0, :cond_0

    .line 77
    return v2

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    return v2

    .line 83
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 84
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 86
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 87
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 88
    invoke-static {v1}, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->getMaxCount([I)Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, "color":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getMaxCount([I)Ljava/lang/String;
    .locals 18
    .param p0, "pixels"    # [I

    .prologue
    .line 94
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    move-object/from16 v0, p0

    array-length v15, v0

    if-ge v6, v15, :cond_0

    .line 96
    aget v15, p0, v6

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 98
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "c$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, "c":Ljava/lang/String;
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 101
    .local v8, "l":Ljava/lang/Integer;
    if-nez v8, :cond_1

    .line 102
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 105
    :goto_2
    invoke-interface {v10, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_2

    .line 107
    .end local v2    # "c":Ljava/lang/String;
    .end local v8    # "l":Ljava/lang/Integer;
    :cond_2
    const/4 v11, 0x0

    .line 108
    .local v11, "max":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 109
    .local v12, "num":J
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v11    # "max":Ljava/lang/String;
    .local v5, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 110
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 111
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 112
    .local v14, "temp":Ljava/lang/Integer;
    if-eqz v11, :cond_4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    cmp-long v15, v16, v12

    if-lez v15, :cond_3

    .line 113
    :cond_4
    move-object v11, v7

    .line 114
    .local v11, "max":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v12, v15

    goto :goto_3

    .line 117
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v11    # "max":Ljava/lang/String;
    .end local v14    # "temp":Ljava/lang/Integer;
    :cond_5
    sget-boolean v15, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->DEBUG:Z

    if-eqz v15, :cond_6

    .line 118
    const-string/jumbo v15, "StatusbarColorFromTitleHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "max =="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string/jumbo v15, "StatusbarColorFromTitleHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "size =="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string/jumbo v15, "StatusbarColorFromTitleHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "num =="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_6
    return-object v11
.end method
