.class public Lcom/letv/leui/widget/GaussianBlurRenderer;
.super Ljava/lang/Object;
.source "GaussianBlurRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/GaussianBlurRenderer$1;
    }
.end annotation


# static fields
.field private static final MAX_BITMAP_SCALE_FACTOR:F = 0.25f

.field private static final MAX_BLUR_RADIUS:F = 25.0f

.field private static final MIN_BITMAP_SCALE_FACTOR:F = 0.01f

.field private static final TAG:Ljava/lang/String; = "BlurRenderer"


# instance fields
.field private mAfterView:Landroid/view/View;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapScaleFactor:F

.field private mBlurEnabled:Z

.field private mBlurRadius:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mInputAllocation:Landroid/renderscript/Allocation;

.field private mLocInScreenOfAfterView:[I

.field private mLocInScreenOfView:[I

.field private mLocationInWindow:[I

.field private mLogTime:Z

.field private mMatrixScale:Landroid/graphics/Matrix;

.field private mMatrixScaleInv:Landroid/graphics/Matrix;

.field private mOutputAllocation:Landroid/renderscript/Allocation;

.field private mRS:Landroid/renderscript/RenderScript;

.field private mScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private mView:Landroid/view/View;

.field private final onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/GaussianBlurRenderer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBlurEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/GaussianBlurRenderer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/GaussianBlurRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->drawOffscreenBitmap()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLogTime:Z

    .line 47
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmapScaleFactor:F

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBlurEnabled:Z

    .line 372
    new-instance v0, Lcom/letv/leui/widget/GaussianBlurRenderer$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/GaussianBlurRenderer$1;-><init>(Lcom/letv/leui/widget/GaussianBlurRenderer;)V

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 78
    iput-object p1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "afterView"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;-><init>(Landroid/view/View;)V

    .line 71
    iput-object p2, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    .line 69
    return-void
.end method

.method private adjustBitmapScaleFactor(I)V
    .locals 3
    .param p1, "radius"    # I

    .prologue
    .line 172
    const/16 v1, 0x64

    if-gt p1, v1, :cond_0

    .line 173
    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmapScaleFactor:F

    .line 171
    :goto_0
    return-void

    .line 175
    :cond_0
    int-to-float v1, p1

    const/high16 v2, 0x41c80000    # 25.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 176
    .local v0, "n":I
    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iput v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmapScaleFactor:F

    goto :goto_0
.end method

.method private drawOffscreenBitmap()V
    .locals 15

    .prologue
    .line 262
    const-wide/16 v6, 0x0

    .local v6, "startTime":J
    const-wide/16 v2, 0x0

    .line 264
    .local v2, "endTime":J
    iget-boolean v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLogTime:Z

    if-eqz v10, :cond_0

    .line 265
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 272
    :cond_0
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmapScaleFactor:F

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 273
    .local v5, "width":I
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmapScaleFactor:F

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 282
    .local v1, "height":I
    const/4 v10, 0x1

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 283
    const/4 v10, 0x1

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 286
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-eq v10, v5, :cond_5

    .line 288
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_2

    .line 289
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 293
    :cond_2
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 292
    invoke-static {v5, v1, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    .line 295
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    iget-object v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v10, v11}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v10

    iput-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mInputAllocation:Landroid/renderscript/Allocation;

    .line 296
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    iget-object v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v11}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v10

    iput-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mOutputAllocation:Landroid/renderscript/Allocation;

    .line 300
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScale:Landroid/graphics/Matrix;

    int-to-float v11, v5

    iget-object v12, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 301
    int-to-float v12, v1

    iget-object v13, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 300
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 302
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScale:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScaleInv:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 313
    :cond_3
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    if-eqz v10, :cond_6

    .line 314
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    iget-object v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfAfterView:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 315
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    iget-object v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfView:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 317
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    iget-object v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 318
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    iget-object v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    .line 319
    iget-object v12, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfView:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    iget-object v13, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfAfterView:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    sub-int/2addr v12, v13

    .line 318
    add-int/2addr v11, v12

    const/4 v12, 0x0

    aput v11, v10, v12

    .line 320
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    iget-object v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    .line 321
    iget-object v12, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfView:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    iget-object v13, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfAfterView:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    .line 320
    add-int/2addr v11, v12

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 328
    :goto_1
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 329
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScale:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 335
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    neg-int v11, v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 340
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 343
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    if-eqz v10, :cond_7

    .line 344
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10, v11}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 346
    const/4 v10, 0x2

    new-array v4, v10, [I

    .line 347
    .local v4, "locationInOwnWindow":[I
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 349
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 350
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v12, 0x0

    aget v12, v4, v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    .line 351
    iget-object v12, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    const/4 v13, 0x1

    aget v13, v4, v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    .line 350
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 352
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 354
    invoke-virtual {p0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->applyBlur()V

    .line 360
    .end local v4    # "locationInOwnWindow":[I
    :goto_2
    iget-boolean v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLogTime:Z

    if-eqz v10, :cond_4

    .line 361
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 362
    sub-long v10, v2, v6

    long-to-double v10, v10

    const-wide v12, 0x412e848000000000L    # 1000000.0

    div-double v8, v10, v12

    .line 363
    .local v8, "time":D
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v10, "0.00"

    invoke-direct {v0, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "df":Ljava/text/DecimalFormat;
    const-string/jumbo v10, "BlurRenderer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "take background consumes: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " milliseconds"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v8    # "time":D
    :cond_4
    return-void

    .line 287
    :cond_5
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-eq v10, v1, :cond_3

    goto/16 :goto_0

    .line 324
    :cond_6
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    iget-object v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationInWindow([I)V

    goto/16 :goto_1

    .line 357
    :cond_7
    iget-object v10, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10, v11}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 82
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    .line 84
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    .line 86
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfAfterView:[I

    .line 87
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfView:[I

    .line 90
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScale:Landroid/graphics/Matrix;

    .line 91
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScaleInv:Landroid/graphics/Matrix;

    .line 94
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    .line 95
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 81
    return-void
.end method

.method private recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mInputAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 106
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mInputAllocation:Landroid/renderscript/Allocation;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mOutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 111
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mOutputAllocation:Landroid/renderscript/Allocation;

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 116
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 121
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    .line 124
    :cond_4
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    .line 125
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    .line 126
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfAfterView:[I

    .line 127
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfView:[I

    .line 128
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScale:Landroid/graphics/Matrix;

    .line 129
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScaleInv:Landroid/graphics/Matrix;

    .line 98
    return-void
.end method


# virtual methods
.method public applyBlur()V
    .locals 12

    .prologue
    .line 222
    const-wide/16 v4, 0x0

    .local v4, "startTime":J
    const-wide/16 v2, 0x0

    .line 224
    .local v2, "endTime":J
    iget-boolean v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLogTime:Z

    if-eqz v1, :cond_0

    .line 225
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mInputAllocation:Landroid/renderscript/Allocation;

    iget-object v8, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v8}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 231
    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v8, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 232
    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v8, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 235
    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mOutputAllocation:Landroid/renderscript/Allocation;

    iget-object v8, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v8}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 237
    iget-boolean v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLogTime:Z

    if-eqz v1, :cond_1

    .line 238
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 239
    sub-long v8, v2, v4

    long-to-double v8, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double v6, v8, v10

    .line 240
    .local v6, "time":D
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "df":Ljava/text/DecimalFormat;
    const-string/jumbo v1, "BlurRenderer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pic width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 243
    const-string/jumbo v9, "px, height = "

    .line 242
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 243
    iget-object v9, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 242
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 244
    const-string/jumbo v9, "px, blur time: "

    .line 242
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 244
    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    .line 242
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 244
    const-string/jumbo v9, " milliseconds"

    .line 242
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v6    # "time":D
    :cond_1
    return-void
.end method

.method public drawToCanvas(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 252
    iget-boolean v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBlurEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScaleInv:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 251
    :cond_0
    return-void
.end method

.method public getBlurAfterView()Landroid/view/View;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    return-object v0
.end method

.method public getBlurEnabled()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBlurEnabled:Z

    return v0
.end method

.method public getBlurRadius()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBlurRadius:I

    return v0
.end method

.method public isOffscreenCanvas(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->init()V

    .line 157
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 153
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 168
    invoke-direct {p0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->recycle()V

    .line 164
    return-void
.end method

.method public setBitmapScaleFactor(F)V
    .locals 1
    .param p1, "scaleFactor"    # F

    .prologue
    .line 133
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 134
    const p1, 0x3c23d70a    # 0.01f

    .line 139
    :cond_0
    :goto_0
    iput p1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmapScaleFactor:F

    .line 132
    return-void

    .line 135
    :cond_1
    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 136
    const/high16 p1, 0x3e800000    # 0.25f

    goto :goto_0
.end method

.method public setBlurAfterView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    .line 383
    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 0
    .param p1, "blurEnabled"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBlurEnabled:Z

    .line 146
    return-void
.end method

.method public setBlurRadius(I)V
    .locals 3
    .param p1, "radius"    # I

    .prologue
    .line 184
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 185
    return-void

    .line 188
    :cond_0
    const-string/jumbo v0, "BlurRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->adjustBitmapScaleFactor(I)V

    .line 193
    int-to-float v0, p1

    iget v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmapScaleFactor:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 195
    const/16 v0, 0x19

    if-le p1, v0, :cond_1

    .line 196
    const/16 p1, 0x19

    .line 199
    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBlurRadius:I

    .line 201
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 183
    :cond_2
    return-void
.end method
