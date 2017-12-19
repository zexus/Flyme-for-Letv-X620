.class public Lcom/letv/leui/widget/LeProgressBar;
.super Landroid/widget/ProgressBar;
.source "LeProgressBar.java"


# static fields
.field private static final CIRCLE_TEXT_TYPE:I = 0x2

.field private static final CIRCLE_TYPE:I = 0x0

.field private static final HORIZONTAL_TYPE:I = 0x1


# instance fields
.field private DEBUG:Z

.field private LOG_TAG:Ljava/lang/String;

.field animator:Landroid/animation/ValueAnimator;

.field backgroundProgressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private centerX:I

.field private centerY:I

.field circleRadius:I

.field private copyIphoneDividerWidth:I

.field horizontalProgressHeight:I

.field private inCompleteColor:I

.field private iphonePaint:Landroid/graphics/Paint;

.field isAnimated:Z

.field private isCopyIphone:Z

.field private isPause:Z

.field private loadingColor:I

.field private loadingZebra:I

.field private mSaveLayerRectF:Landroid/graphics/RectF;

.field private maxHeight:I

.field private maxWidth:I

.field private minHeight:I

.field private minWidth:I

.field offset:I

.field private onlyIndeterminate:Z

.field private oval:Landroid/graphics/RectF;

.field p:Landroid/graphics/Path;

.field private padding:F

.field private paintProgressCircle:Landroid/graphics/Paint;

.field private paintProgressText:Landroid/graphics/Paint;

.field private paintProgressUnCompleteCircle:Landroid/graphics/Paint;

.field pi:F

.field private progressBackgroundColor:I

.field private progressBarCircleRect:Landroid/graphics/RectF;

.field private progressColor:I

.field progressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private progressString:Ljava/lang/String;

.field private progressTextRect:Landroid/graphics/Rect;

.field roundRadius:I

.field shader:Landroid/graphics/BitmapShader;

.field shapeBmp:Landroid/graphics/Bitmap;

.field shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private strokeWidth:I

.field private sweepAngle:F

.field private textColor:I

.field private textSize:I

.field private type:I

.field zebraLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "styleRes"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    const-class v1, Lcom/letv/leui/widget/LeProgressBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->LOG_TAG:Ljava/lang/String;

    .line 26
    iput-boolean v4, p0, Lcom/letv/leui/widget/LeProgressBar;->DEBUG:Z

    .line 38
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeProgressBar;->isPause:Z

    .line 40
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    .line 50
    iput v3, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    .line 68
    iput v3, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    .line 70
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    .line 72
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeProgressBar;->isAnimated:Z

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    .line 78
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressUnCompleteCircle:Landroid/graphics/Paint;

    .line 81
    const/16 v1, 0x2d

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->textSize:I

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->textColor:I

    .line 83
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->inCompleteColor:I

    .line 84
    const/16 v1, 0xa

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->strokeWidth:I

    .line 92
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressTextRect:Landroid/graphics/Rect;

    .line 93
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBarCircleRect:Landroid/graphics/RectF;

    .line 265
    const v1, 0x40490fda

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    .line 436
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    .line 111
    sget-object v1, Lcom/android/internal/R$styleable;->LeProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    .local v0, "t":Landroid/content/res/TypedArray;
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    if-ne v5, v1, :cond_1

    .line 114
    invoke-direct {p0, p2}, Lcom/letv/leui/widget/LeProgressBar;->obtainAttribute(Landroid/util/AttributeSet;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressColor:I

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingColor:I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBackgroundColor:I

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingZebra:I

    .line 121
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    .line 122
    const/16 v1, 0x9

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    .line 123
    const/4 v1, 0x4

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    .line 124
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    .line 125
    const/4 v1, 0x7

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    .line 126
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    .line 127
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    const-string/jumbo v1, "mOnlyIndeterminate"

    invoke-static {p0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeProgressBar;->onlyIndeterminate:Z

    .line 132
    const-string/jumbo v1, "mMaxWidth"

    invoke-static {p0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->maxWidth:I

    .line 133
    const-string/jumbo v1, "mMaxHeight"

    invoke-static {p0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->maxHeight:I

    .line 134
    const-string/jumbo v1, "mMinWidth"

    invoke-static {p0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->minWidth:I

    .line 135
    const-string/jumbo v1, "mMinHeight"

    invoke-static {p0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->minHeight:I

    .line 139
    invoke-direct {p0}, Lcom/letv/leui/widget/LeProgressBar;->initAnimator()V

    .line 141
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LeProgressBar;->createRoundRectShape(F)Landroid/graphics/drawable/shapes/Shape;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 142
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LeProgressBar;->createRoundRectShape(F)Landroid/graphics/drawable/shapes/Shape;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->backgroundProgressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 143
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LeProgressBar;->createRoundRectShape(F)Landroid/graphics/drawable/shapes/Shape;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 144
    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    shl-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeBmp:Landroid/graphics/Bitmap;

    .line 145
    new-instance v1, Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->createShaderBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->shader:Landroid/graphics/BitmapShader;

    .line 147
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v1, :cond_0

    .line 148
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->iphonePaint:Landroid/graphics/Paint;

    .line 149
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->iphonePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->iphonePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_0
.end method

.method private createRoundRectShape(F)Landroid/graphics/drawable/shapes/Shape;
    .locals 4
    .param p1, "radiu"    # F

    .prologue
    const/4 v3, 0x0

    .line 498
    const/16 v2, 0x8

    new-array v0, v2, [F

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 v2, 0x1

    aput p1, v0, v2

    const/4 v2, 0x2

    aput p1, v0, v2

    const/4 v2, 0x3

    aput p1, v0, v2

    const/4 v2, 0x4

    aput p1, v0, v2

    const/4 v2, 0x5

    aput p1, v0, v2

    const/4 v2, 0x6

    aput p1, v0, v2

    const/4 v2, 0x7

    aput p1, v0, v2

    .line 499
    .local v0, "outerR":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 500
    .local v1, "shape":Landroid/graphics/drawable/shapes/RoundRectShape;
    return-object v1
.end method

.method private drawColorBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "color"    # I

    .prologue
    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 473
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 474
    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 472
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private drawLoading(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 482
    new-instance v0, Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->createShaderBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->shader:Landroid/graphics/BitmapShader;

    .line 484
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 485
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 487
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeProgressBar;->isAnimated:Z

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 480
    :cond_0
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 341
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->mSaveLayerRectF:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeProgressBar;->isPause:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    :goto_0
    const/16 v2, 0x1f

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 344
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 345
    invoke-direct {p0}, Lcom/letv/leui/widget/LeProgressBar;->updateProgressBounds()V

    .line 346
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->backgroundProgressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 347
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 348
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 350
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 351
    .local v8, "step":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgress()I

    move-result v0

    if-gt v7, v0, :cond_1

    .line 352
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v1, v7

    mul-float/2addr v1, v8

    add-float/2addr v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    .line 353
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v3, v7

    mul-float/2addr v3, v8

    add-float/2addr v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/letv/leui/widget/LeProgressBar;->iphonePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 352
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 351
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 341
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "i":I
    .end local v8    # "step":F
    :cond_0
    const/16 v0, 0xff

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 339
    return-void
.end method

.method private getProgressAngle()F
    .locals 2

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgress()I

    move-result v0

    mul-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    return v0
.end method

.method private initAnimator()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, v1

    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    shl-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->animator:Landroid/animation/ValueAnimator;

    .line 158
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 160
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 161
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/letv/leui/widget/LeProgressBar$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeProgressBar$1;-><init>(Lcom/letv/leui/widget/LeProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 170
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/letv/leui/widget/LeProgressBar$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeProgressBar$2;-><init>(Lcom/letv/leui/widget/LeProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    return-void
.end method

.method private obtainAttribute(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    .line 505
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->LeProgressBar:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 506
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->textSize:I

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->textSize:I

    .line 507
    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->textColor:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->textColor:I

    .line 508
    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->inCompleteColor:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->inCompleteColor:I

    .line 509
    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->strokeWidth:I

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->strokeWidth:I

    .line 511
    const-string/jumbo v1, "mMinWidth"

    invoke-static {p0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->minWidth:I

    .line 512
    const-string/jumbo v1, "mMinHeight"

    invoke-static {p0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->minHeight:I

    .line 514
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 516
    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->strokeWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    .line 518
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 519
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 520
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 521
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 522
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    const-string/jumbo v2, "helve-neue-light"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 524
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressUnCompleteCircle:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->inCompleteColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 525
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressUnCompleteCircle:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->strokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 526
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressUnCompleteCircle:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 527
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressUnCompleteCircle:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 529
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 530
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->strokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 531
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 532
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 533
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 535
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->sweepAngle:F

    .line 504
    return-void
.end method

.method private updateProgressBounds()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getMax()I

    move-result v3

    int-to-float v1, v3

    .line 406
    .local v1, "max":F
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgress()I

    move-result v3

    int-to-float v2, v3

    .line 407
    .local v2, "progress":F
    new-instance v0, Landroid/graphics/Rect;

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingLeft:I

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I

    div-int/lit8 v3, v3, 0x2

    :goto_0
    add-int/2addr v5, v3

    .line 408
    iget v6, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingTop:I

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I

    :goto_1
    add-int/2addr v6, v3

    .line 409
    iget v7, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingLeft:I

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I

    div-int/lit8 v3, v3, 0x2

    :goto_2
    add-int/2addr v3, v7

    int-to-float v7, v3

    .line 410
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getWidth()I

    move-result v3

    iget v8, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingRight:I

    sub-int/2addr v3, v8

    iget v8, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingLeft:I

    sub-int v8, v3, v8

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I

    :goto_3
    sub-int v3, v8, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, v1

    .line 409
    add-float/2addr v3, v7

    float-to-int v3, v3

    .line 411
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingBottom:I

    sub-int/2addr v7, v8

    .line 412
    iget-boolean v8, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v8, :cond_0

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I

    .line 411
    :cond_0
    sub-int v4, v7, v4

    .line 407
    invoke-direct {v0, v5, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 413
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/letv/leui/widget/LeProgressBar;->progressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 414
    iget-object v3, p0, Lcom/letv/leui/widget/LeProgressBar;->progressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->progressColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    iget-object v3, p0, Lcom/letv/leui/widget/LeProgressBar;->backgroundProgressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    return-void

    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    move v3, v4

    .line 407
    goto :goto_0

    :cond_2
    move v3, v4

    .line 408
    goto :goto_1

    :cond_3
    move v3, v4

    .line 409
    goto :goto_2

    :cond_4
    move v3, v4

    .line 410
    goto :goto_3
.end method


# virtual methods
.method createShaderBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 441
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 442
    .local v1, "paint1":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 444
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeBmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingColor:I

    invoke-direct {p0, v2, v3}, Lcom/letv/leui/widget/LeProgressBar;->drawColorBitmap(Landroid/graphics/Bitmap;I)V

    .line 446
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 448
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingZebra:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 450
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 451
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    neg-int v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 452
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    neg-int v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    shr-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 453
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    shr-int/lit8 v3, v3, 0x1

    neg-int v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 454
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 455
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 457
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 459
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 460
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 461
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    shr-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 462
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 463
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    shl-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 464
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 465
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 467
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeBmp:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public drawProgressBarWithText(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressString:Ljava/lang/String;

    .line 568
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgress()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/letv/leui/widget/LeProgressBar;->progressString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, p0, Lcom/letv/leui/widget/LeProgressBar;->progressTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 570
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressString:Ljava/lang/String;

    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->centerX:I

    iget-object v3, p0, Lcom/letv/leui/widget/LeProgressBar;->progressTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->centerY:I

    iget-object v5, p0, Lcom/letv/leui/widget/LeProgressBar;->progressTextRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 572
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBarCircleRect:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressUnCompleteCircle:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 573
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBarCircleRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->sweepAngle:F

    iget-object v5, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 566
    return-void
.end method

.method public getHorizontalProgressHeight()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    return v0
.end method

.method public getLoadingColor()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingColor:I

    return v0
.end method

.method public getLoadingZebra()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingZebra:I

    return v0
.end method

.method public getProgressBackgroundColor()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBackgroundColor:I

    return v0
.end method

.method public getProgressColor()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->textSize:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    return v0
.end method

.method public getZebraLength()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeProgressBar;->isPause:Z

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    monitor-enter p0

    .line 270
    :try_start_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeProgressBar;->onlyIndeterminate:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 271
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeProgressBar;->drawLoading(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 268
    return-void

    .line 272
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeProgressBar;->onlyIndeterminate:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 274
    :cond_3
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeProgressBar;->onlyIndeterminate:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 326
    :cond_4
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 327
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeProgressBar;->drawProgressBarWithText(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 272
    :cond_5
    :try_start_2
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 273
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeProgressBar;->drawProgress(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 275
    :cond_6
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 276
    .local v5, "paint":Landroid/graphics/Paint;
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 277
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 280
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBackgroundColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    new-instance v8, Landroid/graphics/RectF;

    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingRight:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getHeight()I

    move-result v4

    iget v9, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingBottom:I

    sub-int/2addr v4, v9

    int-to-float v4, v4

    invoke-direct {v8, v0, v1, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 283
    .local v8, "temp":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    add-float/2addr v2, v4

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 284
    iget v4, v8, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v4, v9

    iget v9, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    int-to-float v9, v9

    add-float/2addr v4, v9

    iget v9, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 283
    invoke-virtual {v0, v1, v2, v4, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 286
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 288
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    invoke-direct {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgressAngle()F

    move-result v3

    .line 290
    .local v3, "angle":F
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 292
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 293
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 295
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 296
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 297
    iget-object v4, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v4, v9

    iget v9, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v4, v9

    .line 298
    iget-object v9, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget v10, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 295
    invoke-direct {v0, v1, v2, v4, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 301
    const/4 v7, 0x0

    .line 302
    .local v7, "offsetY":F
    const/4 v6, 0x0

    .line 304
    .local v6, "offsetX":F
    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_7

    .line 305
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v4, v3

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v10, v12, v10

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v7, v0

    .line 306
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x43870000    # 270.0f

    add-float/2addr v4, v3

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v6, v0

    .line 318
    :goto_1
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 320
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 321
    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 322
    iget-object v4, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v4, v9

    iget v9, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v4, v9

    .line 323
    iget-object v9, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget v10, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 320
    invoke-direct {v0, v1, v2, v4, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 324
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 307
    :cond_7
    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_8

    .line 308
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v12

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v7, v0

    .line 310
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v6, v0

    goto/16 :goto_1

    .line 311
    :cond_8
    const/high16 v0, 0x43870000    # 270.0f

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_9

    .line 312
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v12

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v7, v0

    .line 313
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v6, v0

    goto/16 :goto_1

    .line 315
    :cond_9
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v4, v3

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v10, v12, v10

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v7, v0

    .line 316
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x43870000    # 270.0f

    add-float/2addr v4, v3

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v6, v0

    goto/16 :goto_1

    .line 328
    .end local v3    # "angle":F
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "offsetX":F
    .end local v7    # "offsetY":F
    .end local v8    # "temp":Landroid/graphics/RectF;
    :cond_a
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    if-nez v0, :cond_1

    .line 329
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    monitor-enter p0

    .line 362
    const/4 v1, 0x0

    .line 363
    .local v1, "dw":I
    const/4 v0, 0x0

    .line 365
    .local v0, "dh":I
    :try_start_0
    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 366
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 367
    .local v3, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 368
    .local v2, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 369
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 370
    if-ne v3, v6, :cond_0

    .line 371
    const/16 v4, 0xc8

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 373
    :cond_0
    if-ne v2, v6, :cond_1

    .line 374
    const/16 v4, 0xc8

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 376
    :cond_1
    div-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/letv/leui/widget/LeProgressBar;->centerX:I

    .line 377
    div-int/lit8 v4, v0, 0x2

    iput v4, p0, Lcom/letv/leui/widget/LeProgressBar;->centerY:I

    .line 379
    iget-object v4, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBarCircleRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    iget v6, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    int-to-float v7, v1

    iget v8, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    sub-float/2addr v7, v8

    int-to-float v8, v0

    iget v9, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    sub-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 401
    .end local v2    # "heightMode":I
    .end local v3    # "widthMode":I
    :goto_0
    const/4 v4, 0x0

    invoke-static {v1, p1, v4}, Lcom/letv/leui/widget/LeProgressBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, p2, v5}, Lcom/letv/leui/widget/LeProgressBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/letv/leui/widget/LeProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 360
    return-void

    .line 382
    :cond_2
    :try_start_1
    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    if-nez v4, :cond_5

    .line 383
    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->minHeight:I

    if-ge v4, v5, :cond_4

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->minWidth:I

    if-ge v4, v5, :cond_4

    .line 384
    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->minWidth:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 385
    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->minHeight:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 396
    :cond_3
    :goto_1
    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingLeft:I

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 397
    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingTop:I

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    goto :goto_0

    .line 387
    :cond_4
    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    add-int/2addr v4, v5

    mul-int/lit8 v0, v4, 0x2

    move v1, v0

    goto :goto_1

    .line 390
    :cond_5
    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    .line 391
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    .line 392
    iget-boolean v4, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v4, :cond_3

    .line 393
    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v8, 0x0

    .line 421
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 422
    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 423
    div-int/lit8 v1, p1, 0x2

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->centerX:I

    .line 424
    div-int/lit8 v1, p2, 0x2

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->centerY:I

    .line 425
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBarCircleRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    int-to-float v4, p1

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    sub-float/2addr v4, v5

    int-to-float v5, p2

    iget v6, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 420
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    .line 428
    .local v0, "centerX":F
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingLeft:I

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v0, v4

    float-to-int v4, v4

    .line 429
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v0

    float-to-int v6, v6

    .line 428
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 430
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->backgroundProgressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingLeft:I

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 431
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v8, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->mSaveLayerRectF:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public setHorizontalProgressHeight(I)V
    .locals 0
    .param p1, "horizontalProgressHeight"    # I

    .prologue
    .line 246
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    .line 245
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 494
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 493
    return-void
.end method

.method public setLoadingColor(I)V
    .locals 0
    .param p1, "loadingColor"    # I

    .prologue
    .line 198
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingColor:I

    .line 197
    return-void
.end method

.method public setLoadingZebra(I)V
    .locals 0
    .param p1, "loadingZebra"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingZebra:I

    .line 205
    return-void
.end method

.method public setPause(Z)V
    .locals 0
    .param p1, "isPause"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeProgressBar;->isPause:Z

    .line 253
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .param p1, "progressBackgroundColor"    # I

    .prologue
    .line 222
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBackgroundColor:I

    .line 221
    return-void
.end method

.method public setProgressColor(I)V
    .locals 0
    .param p1, "progressColor"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressColor:I

    .line 213
    return-void
.end method

.method public setProgressTextTint(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 562
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 563
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->invalidate()V

    .line 560
    return-void
.end method

.method public declared-synchronized setProgressWithText(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    monitor-enter p0

    .line 557
    int-to-float v0, p1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    :try_start_0
    iput v0, p0, Lcom/letv/leui/widget/LeProgressBar;->sweepAngle:F

    .line 558
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 556
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 553
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->textColor:I

    .line 552
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I

    .prologue
    .line 543
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->textSize:I

    .line 544
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 545
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->invalidate()V

    .line 542
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    .line 237
    return-void
.end method

.method public setZebraLength(I)V
    .locals 0
    .param p1, "zebraLength"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    .line 229
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method
