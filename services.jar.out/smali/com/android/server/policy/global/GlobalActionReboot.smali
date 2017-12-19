.class public Lcom/android/server/policy/global/GlobalActionReboot;
.super Landroid/view/View;
.source "GlobalActionReboot.java"


# static fields
.field public static final HIDE_TIME:J = 0xfaL

.field public static final SHOW_TIME:J = 0x15eL

.field public static final SHUTDOWN_TIME:J = 0x190L


# instance fields
.field public density:F

.field private mArcAngle:F

.field private mArcBeginAngle:F

.field private mArcColor:I

.field private mArcWidth:I

.field private mArrowWidth:I

.field mCancel:Z

.field private mInnerRingDiameter:I

.field private mLineColorNormal:I

.field private mLineColorPress:I

.field private mLineHeight:I

.field private mLineOffset:I

.field private mLineOffsetInit:I

.field private mLineOffsetScale:I

.field private mLineOffsetScaleInit:I

.field private mLineWidth:I

.field private mRingAngle:F

.field private mRingBeginAngle:F

.field private mRingWidthInc:I

.field private mRingWidthIncMax:I

.field private mScaleAnimator:Landroid/animation/ObjectAnimator;

.field private mScaleArcPaint:Landroid/graphics/Paint;

.field private mScaleListener:Landroid/animation/Animator$AnimatorListener;

.field private mScaleRingAlpha:I

.field private mScaleRingColor:I

.field private mScaleRingWH:I

.field private mTipMsg:Ljava/lang/String;

.field private mTipPaddingBottom:I

.field private mTipPaint:Landroid/graphics/Paint;

.field private mTipTextSize:F

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/global/GlobalActionReboot;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/global/GlobalActionReboot;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->resetScale()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x6

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    const/high16 v0, 0x42280000    # 42.0f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipTextSize:F

    .line 43
    iput v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineColorNormal:I

    .line 44
    const v0, -0xcc00cd

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineColorPress:I

    .line 45
    iput v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineWidth:I

    .line 46
    const/16 v0, 0x36

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineHeight:I

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineOffsetInit:I

    .line 48
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineOffset:I

    .line 50
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineOffsetScale:I

    .line 51
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineOffsetScaleInit:I

    .line 54
    iput v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcColor:I

    .line 55
    const v0, -0x66666667

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingColor:I

    .line 56
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingAlpha:I

    .line 58
    const/high16 v0, -0x3d900000    # -60.0f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcBeginAngle:F

    .line 60
    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingBeginAngle:F

    .line 62
    const/16 v0, 0x7e

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mInnerRingDiameter:I

    .line 63
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingWidthIncMax:I

    .line 64
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingWidthInc:I

    .line 66
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingWH:I

    .line 68
    iput v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    .line 70
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingBeginAngle:F

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingAngle:F

    .line 72
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcBeginAngle:F

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcAngle:F

    .line 74
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArrowWidth:I

    .line 75
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaddingBottom:I

    .line 393
    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mCancel:Z

    .line 79
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->init()V

    .line 77
    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x42b40000    # 90.0f

    .line 338
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 339
    .local v6, "centerX":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingWH:I

    div-int/lit8 v7, v0, 0x2

    .line 340
    .local v7, "centerY":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mInnerRingDiameter:I

    div-int/lit8 v8, v0, 0x2

    .line 341
    .local v8, "innerCircle":I
    new-instance v1, Landroid/graphics/RectF;

    add-int/lit8 v0, v8, 0x1

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int v0, v6, v0

    int-to-float v0, v0

    .line 342
    add-int/lit8 v2, v8, 0x1

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v2, v7, v2

    int-to-float v2, v2

    .line 343
    add-int/lit8 v3, v8, 0x1

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    int-to-float v3, v3

    .line 344
    add-int/lit8 v4, v8, 0x1

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v7

    int-to-float v4, v4

    .line 341
    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 347
    .local v1, "rect2":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 349
    iget v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingAngle:F

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingAngle:F

    add-float/2addr v0, v9

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v0, v3, v0

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingBeginAngle:F

    add-float/2addr v3, v9

    sub-float v3, v0, v3

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 337
    return-void
.end method

.method private drawCenterArc(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x42b40000    # 90.0f

    .line 295
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 296
    .local v6, "centerX":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingWH:I

    div-int/lit8 v7, v0, 0x2

    .line 297
    .local v7, "centerY":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mInnerRingDiameter:I

    div-int/lit8 v8, v0, 0x5

    .line 298
    .local v8, "innerCircle":I
    new-instance v1, Landroid/graphics/RectF;

    add-int/lit8 v0, v8, 0x1

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int v0, v6, v0

    int-to-float v0, v0

    .line 299
    add-int/lit8 v2, v8, 0x1

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v2, v7, v2

    int-to-float v2, v2

    .line 300
    add-int/lit8 v3, v8, 0x1

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    int-to-float v3, v3

    .line 301
    add-int/lit8 v4, v8, 0x1

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v7

    int-to-float v4, v4

    .line 298
    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 304
    .local v1, "rect2":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 307
    iget v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcAngle:F

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcAngle:F

    add-float/2addr v0, v9

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v0, v3, v0

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcBeginAngle:F

    add-float/2addr v3, v9

    sub-float v3, v0, v3

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 310
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionReboot;->drawCenterArcArrow(Landroid/graphics/Canvas;)V

    .line 294
    return-void
.end method

.method private drawCenterArcArrow(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 322
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 323
    .local v6, "centerX":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingWH:I

    div-int/lit8 v7, v0, 0x2

    .line 325
    .local v7, "centerY":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mInnerRingDiameter:I

    div-int/lit8 v8, v0, 0x5

    .line 327
    .local v8, "radius":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 329
    .local v9, "seq":I
    int-to-float v0, v8

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->density:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    int-to-double v4, v8

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->density:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-int v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 331
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArrowWidth:I

    sub-int v0, v6, v0

    int-to-float v1, v0

    int-to-float v2, v7

    int-to-float v3, v6

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 333
    int-to-float v1, v6

    int-to-float v2, v7

    int-to-float v3, v6

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArrowWidth:I

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 334
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 318
    return-void
.end method

.method private drawScaleArc(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x42b40000    # 90.0f

    .line 353
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 354
    .local v6, "centerX":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingWH:I

    div-int/lit8 v7, v0, 0x2

    .line 355
    .local v7, "centerY":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mInnerRingDiameter:I

    div-int/lit8 v8, v0, 0x2

    .line 356
    .local v8, "innerCircle":I
    new-instance v1, Landroid/graphics/RectF;

    add-int/lit8 v0, v8, 0x1

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int v0, v6, v0

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingWidthInc:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 357
    add-int/lit8 v2, v8, 0x1

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v2, v7, v2

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingWidthInc:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 358
    add-int/lit8 v3, v8, 0x1

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingWidthInc:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 359
    add-int/lit8 v4, v8, 0x1

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v7

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingWidthInc:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 356
    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 362
    .local v1, "rect2":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleArcPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 364
    iget v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingAngle:F

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingAngle:F

    add-float/2addr v0, v9

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v0, v3, v0

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingBeginAngle:F

    add-float/2addr v3, v9

    sub-float v3, v0, v3

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleArcPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 352
    return-void
.end method

.method private drawTip(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 256
    .local v0, "seq":I
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 257
    .local v1, "textWidth":F
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipMsg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 258
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaddingBottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaint:Landroid/graphics/Paint;

    .line 257
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 259
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 254
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->density:F

    .line 85
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->initLine()V

    .line 86
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->initArc()V

    .line 87
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->initTip()V

    .line 82
    return-void
.end method

.method private initArc()V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcColor:I

    .line 118
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcWidth:I

    .line 119
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingBeginAngle:F

    .line 120
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcBeginAngle:F

    .line 121
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mInnerRingDiameter:I

    .line 123
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingWH:I

    .line 125
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArrowWidth:I

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->paint:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 134
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->initScaleArc()V

    .line 116
    return-void
.end method

.method private initLine()V
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineColorNormal:I

    .line 109
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineColorPress:I

    .line 110
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineWidth:I

    .line 111
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineHeight:I

    .line 112
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineOffsetInit:I

    .line 107
    return-void
.end method

.method private initScale()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 419
    new-instance v3, Lcom/android/server/policy/global/GlobalActionReboot$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/global/GlobalActionReboot$1;-><init>(Lcom/android/server/policy/global/GlobalActionReboot;)V

    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleListener:Landroid/animation/Animator$AnimatorListener;

    .line 441
    const-string/jumbo v3, "innerRingWidthInc"

    new-array v4, v8, [I

    aput v6, v4, v6

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingWidthIncMax:I

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 442
    .local v2, "ringScale":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v3, "scaleRingAlpha"

    new-array v4, v8, [I

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingAlpha:I

    aput v5, v4, v6

    aput v6, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 443
    .local v1, "ringAlpha":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v3, "lineOffsetScale"

    new-array v4, v8, [I

    aput v6, v4, v6

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineOffsetScaleInit:I

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 444
    .local v0, "lineScale":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 445
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x834

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 446
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const v5, 0x3fb33333    # 1.4f

    invoke-direct {v4, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 447
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 448
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 449
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 418
    return-void
.end method

.method private initScaleArc()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingColor:I

    .line 141
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingColor:I

    shr-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingAlpha:I

    .line 142
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingWidthIncMax:I

    .line 144
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineOffsetScaleInit:I

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleArcPaint:Landroid/graphics/Paint;

    .line 147
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleArcPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 151
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 153
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->initScale()V

    .line 139
    return-void
.end method

.method private initTip()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 92
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040608

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipMsg:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipTextSize:F

    .line 94
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaddingBottom:I

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaint:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineColorNormal:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 101
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 91
    return-void
.end method

.method private resetScale()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 387
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingAlpha:I

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    iput v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineOffsetScale:I

    .line 389
    iput v3, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingWidthInc:I

    .line 390
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->invalidate()V

    .line 386
    return-void
.end method

.method private setInnerRingWidthInc(I)V
    .locals 0
    .param p1, "ringWidthInc"    # I

    .prologue
    .line 382
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingWidthInc:I

    .line 383
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->invalidate()V

    .line 381
    return-void
.end method

.method private setLineOffsetScale(I)V
    .locals 0
    .param p1, "lineOffsetScale"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineOffsetScale:I

    .line 378
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->invalidate()V

    .line 376
    return-void
.end method

.method private setScaleRingAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->invalidate()V

    .line 371
    return-void
.end method


# virtual methods
.method public destroyMarquee()V
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->stopMarquee()V

    .line 396
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 398
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 394
    :cond_0
    return-void
.end method

.method public final getBottomBarWidth()I
    .locals 3

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "tipWidth":I
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionReboot;->density:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 169
    :cond_0
    iget v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingWH:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public final getMargin(II)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "marginBase"    # I

    .prologue
    .line 178
    iget v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingWH:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int v0, p2, v1

    .line 179
    .local v0, "margin":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    return v1
.end method

.method public hide(Z)V
    .locals 4
    .param p1, "animation"    # Z

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 463
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 462
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 464
    const/4 v1, 0x0

    .line 462
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 461
    return-void
.end method

.method public hintRingArea(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 210
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 211
    .local v3, "location":[I
    invoke-virtual {p0, v3}, Lcom/android/server/policy/global/GlobalActionReboot;->getLocationInWindow([I)V

    .line 213
    new-instance v2, Landroid/graphics/Rect;

    aget v4, v3, v9

    aget v5, v3, v8

    aget v6, v3, v9

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v3, v8

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 215
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingWH:I

    if-le v4, v5, :cond_0

    .line 216
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingWH:I

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 217
    .local v0, "bottomOffsetY":I
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v0

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 219
    .end local v0    # "bottomOffsetY":I
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingWH:I

    if-le v4, v5, :cond_1

    .line 220
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleRingWH:I

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 222
    .local v1, "dx":I
    invoke-virtual {v2, v1, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 225
    .end local v1    # "dx":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    return v4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 235
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 236
    :cond_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 240
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionReboot;->drawScaleArc(Landroid/graphics/Canvas;)V

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionReboot;->drawArc(Landroid/graphics/Canvas;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionReboot;->drawCenterArc(Landroid/graphics/Canvas;)V

    .line 246
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionReboot;->drawTip(Landroid/graphics/Canvas;)V

    .line 233
    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 199
    .local v0, "result":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v0

    .line 201
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/global/GlobalActionReboot;->hintRingArea(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public reBoot()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x190

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 475
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 476
    .local v4, "set":Landroid/animation/AnimatorSet;
    const-string/jumbo v5, "angleArc"

    new-array v6, v10, [F

    const/4 v7, 0x0

    aput v7, v6, v8

    const/high16 v7, 0x435c0000    # 220.0f

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 477
    .local v0, "angleArc":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "LineHeightOffset"

    new-array v6, v10, [I

    aput v8, v6, v8

    iget v7, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineHeight:I

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 478
    .local v1, "lineOffset":Landroid/animation/PropertyValuesHolder;
    new-array v5, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 479
    .local v2, "objectAni":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 480
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const v6, 0x3f8ccccd    # 1.1f

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 482
    const-string/jumbo v5, "tipAlapha"

    const/16 v6, 0xc8

    filled-new-array {v6, v8}, [I

    move-result-object v6

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 483
    .local v3, "objectTip":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 484
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const v6, 0x3fe66666    # 1.8f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 486
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 487
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 474
    return-void
.end method

.method public setAlaphaWhenDrag(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 183
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 184
    :cond_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/global/GlobalActionReboot;->setAlpha(F)V

    .line 182
    return-void
.end method

.method public setAngleArc(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 267
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingBeginAngle:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mRingAngle:F

    .line 268
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcBeginAngle:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mArcAngle:F

    .line 269
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->invalidate()V

    .line 266
    return-void
.end method

.method public setCustomerText(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipMsg:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setLineHeightOffset(I)V
    .locals 0
    .param p1, "lineOffset"    # I

    .prologue
    .line 286
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mLineOffset:I

    .line 287
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->invalidate()V

    .line 285
    return-void
.end method

.method public setTipAlapha(I)V
    .locals 3
    .param p1, "alapha"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->invalidate()V

    .line 276
    return-void
.end method

.method public show(Z)V
    .locals 5
    .param p1, "animation"    # Z

    .prologue
    const/4 v4, 0x0

    .line 454
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 455
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 454
    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionReboot;->setTranslationY(F)V

    .line 456
    invoke-virtual {p0, v4}, Lcom/android/server/policy/global/GlobalActionReboot;->setAlpha(F)V

    .line 457
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionReboot;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 458
    const/high16 v1, 0x3f800000    # 1.0f

    .line 457
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 452
    return-void
.end method

.method public shutDown()V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public startMarquee()V
    .locals 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mCancel:Z

    .line 410
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x41a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 411
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 407
    return-void
.end method

.method public stopMarquee()V
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mCancel:Z

    if-eqz v0, :cond_0

    return-void

    .line 404
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionReboot;->mCancel:Z

    .line 402
    return-void
.end method
