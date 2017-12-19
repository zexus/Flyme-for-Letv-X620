.class public Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BorderedCircleBitmapDrawable.java"


# static fields
.field private static synthetic -android_widget_ImageView$ScaleTypeSwitchesValues:[I = null

.field public static final TAG:Ljava/lang/String; = "BorderedCircleBitmapDrawable"


# instance fields
.field private final mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private final mBitmapRect:Landroid/graphics/RectF;

.field private final mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mBitmapWidth:I

.field private mBorderColor:I

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private final mBounds:Landroid/graphics/RectF;

.field private mCircleRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method private static synthetic -getandroid_widget_ImageView$ScaleTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->-android_widget_ImageView$ScaleTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->-android_widget_ImageView$ScaleTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->-android_widget_ImageView$ScaleTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Landroid/graphics/Bitmap;FIILandroid/widget/ImageView$ScaleType;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "circleRadius"    # F
    .param p3, "border"    # I
    .param p4, "borderColor"    # I
    .param p5, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 40
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 76
    iput p3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    .line 77
    iput p4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderColor:I

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapWidth:I

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapHeight:I

    .line 81
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 83
    iput p2, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mCircleRadius:F

    .line 84
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 85
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    invoke-virtual {p0, p5}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/ColorDrawable;FIIIILandroid/widget/ImageView$ScaleType;)V
    .locals 5
    .param p1, "colorDrawable"    # Landroid/graphics/drawable/ColorDrawable;
    .param p2, "circleRadius"    # F
    .param p3, "border"    # I
    .param p4, "borderColor"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 40
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 47
    iput p3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    .line 48
    iput p4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderColor:I

    .line 50
    iput p5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapWidth:I

    .line 51
    iput p6, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapHeight:I

    .line 52
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 54
    iput p2, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mCircleRadius:F

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    invoke-virtual {p0, p7}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 293
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 294
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 298
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 299
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 300
    .local v2, "height":I
    if-lez v3, :cond_1

    if-lez v2, :cond_1

    .line 301
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 303
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 304
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 309
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    return-object v0

    .line 306
    :cond_1
    const/4 v0, 0x0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;FIILandroid/widget/ImageView$ScaleType;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "radius"    # F
    .param p2, "border"    # I
    .param p3, "borderColor"    # I
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 318
    if-eqz p0, :cond_5

    .line 319
    instance-of v0, p0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_4

    move-object v10, p0

    .line 320
    check-cast v10, Landroid/graphics/drawable/TransitionDrawable;

    .line 321
    .local v10, "td":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v9

    .line 323
    .local v9, "num":I
    new-array v7, v9, [Landroid/graphics/drawable/Drawable;

    .line 324
    .local v7, "drawableList":[Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_2

    .line 325
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 326
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10, v8, v8}, Landroid/graphics/drawable/TransitionDrawable;->setId(II)V

    .line 327
    instance-of v0, v6, Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_0

    instance-of v0, v6, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    aput-object v6, v7, v8

    .line 324
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 331
    :cond_1
    new-instance v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    .line 332
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 331
    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;FIILandroid/widget/ImageView$ScaleType;)V

    aput-object v0, v7, v8

    goto :goto_1

    .line 338
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_3

    .line 339
    aget-object v0, v7, v8

    invoke-virtual {v10, v8, v0}, Landroid/graphics/drawable/TransitionDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 338
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 341
    :cond_3
    return-object v10

    .line 344
    .end local v7    # "drawableList":[Landroid/graphics/drawable/Drawable;
    .end local v8    # "i":I
    .end local v9    # "num":I
    .end local v10    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :cond_4
    invoke-static {p0}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 345
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    .line 346
    new-instance v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;FIILandroid/widget/ImageView$ScaleType;)V

    return-object v0

    .line 351
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_5
    return-object p0
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;FLandroid/widget/ImageView$ScaleType;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "radius"    # F
    .param p2, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    const/4 v0, 0x0

    .line 313
    invoke-static {p0, p1, v0, v0, p2}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;FIILandroid/widget/ImageView$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private setMatrix()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    .line 119
    invoke-static {}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->-getandroid_widget_ImageView$ScaleTypeSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 204
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 205
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    add-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 206
    iget v7, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v7, v7

    .line 205
    sub-float/2addr v6, v7

    .line 206
    iget-object v7, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 205
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 207
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 208
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 211
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 213
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 114
    :cond_0
    return-void

    .line 122
    :pswitch_0
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 123
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    add-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 124
    iget v7, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v7, v7

    .line 123
    sub-float/2addr v6, v7

    .line 124
    iget-object v7, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 123
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 126
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 127
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 128
    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v9

    add-float/2addr v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    .line 129
    iget-object v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapHeight:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v9

    add-float/2addr v5, v9

    float-to-int v5, v5

    int-to-float v5, v5

    .line 127
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 134
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    add-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 135
    iget v7, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v7, v7

    .line 134
    sub-float/2addr v6, v7

    .line 135
    iget-object v7, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 134
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 142
    .local v1, "dy":F
    iget v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 144
    .local v2, "scale":F
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v9

    .line 150
    :goto_1
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 151
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v4, v0, v9

    float-to-int v4, v4

    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float v5, v1, v9

    float-to-int v5, v5

    .line 152
    iget v6, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    .line 151
    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 146
    .end local v2    # "scale":F
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 147
    .restart local v2    # "scale":F
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v9

    goto :goto_1

    .line 156
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "scale":F
    :pswitch_2
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 158
    iget v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    iget v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 159
    const/high16 v2, 0x3f800000    # 1.0f

    .line 165
    .restart local v2    # "scale":F
    :goto_2
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v9

    add-float/2addr v3, v9

    float-to-int v3, v3

    int-to-float v0, v3

    .line 166
    .restart local v0    # "dx":F
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v9

    add-float/2addr v3, v9

    float-to-int v3, v3

    int-to-float v1, v3

    .line 168
    .restart local v1    # "dy":F
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 169
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 171
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 172
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 173
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 174
    iget-object v6, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 173
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 175
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 161
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "scale":F
    :cond_2
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 162
    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 161
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .restart local v2    # "scale":F
    goto :goto_2

    .line 178
    .end local v2    # "scale":F
    :pswitch_3
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 179
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 180
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 181
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 182
    iget-object v6, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 181
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 183
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 186
    :pswitch_4
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 187
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 188
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 189
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 190
    iget-object v6, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 189
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 191
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 194
    :pswitch_5
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 195
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 196
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 197
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 198
    iget-object v6, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 197
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 199
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 247
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    if-lez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 250
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 251
    iget v2, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mCircleRadius:F

    .line 252
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 248
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 254
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 255
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 256
    iget v2, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mCircleRadius:F

    iget v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 257
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 253
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 245
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 261
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 262
    iget v2, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mCircleRadius:F

    .line 263
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 259
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    return v0
.end method

.method public getCircleRadius()F
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mCircleRadius:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 269
    const/4 v0, -0x3

    return v0
.end method

.method protected getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 223
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 241
    invoke-direct {p0}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setMatrix()V

    .line 218
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 273
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 376
    iput p1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderColor:I

    .line 377
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 371
    iput p1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    .line 372
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 370
    return-void
.end method

.method public setCircleRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 367
    iput p1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mCircleRadius:F

    .line 366
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 278
    return-void
.end method

.method protected setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 105
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 106
    invoke-direct {p0}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setMatrix()V

    .line 99
    :cond_1
    return-void
.end method
