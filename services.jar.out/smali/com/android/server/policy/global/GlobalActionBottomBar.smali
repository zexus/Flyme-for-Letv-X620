.class public Lcom/android/server/policy/global/GlobalActionBottomBar;
.super Landroid/view/View;
.source "GlobalActionBottomBar.java"


# static fields
.field public static final HIDE_TIME:J = 0xfaL

.field public static final SHOW_TIME:J = 0x15eL

.field public static final SHUTDOWN_TIME:J = 0x190L


# instance fields
.field public density:F

.field private mArcBeginAngle:F

.field private mArcColor:I

.field private mArcWidth:I

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

.field private mRingWidthInc:I

.field private mRingWidthIncMax:I

.field private mScaleAnimator:Landroid/animation/ObjectAnimator;

.field private mScaleArcPaint:Landroid/graphics/Paint;

.field private mScaleListener:Landroid/animation/Animator$AnimatorListener;

.field private mScaleRingAlpha:I

.field private mScaleRingColor:I

.field private mScaleRingWH:I

.field private mTipMsg:Ljava/lang/String;

.field private mTipPaint:Landroid/graphics/Paint;

.field private mTipTextSize:F

.field private paint:Landroid/graphics/Paint;

.field private startAngle:F


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/global/GlobalActionBottomBar;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/global/GlobalActionBottomBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->resetScale()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x6

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    const/high16 v0, 0x42280000    # 42.0f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipTextSize:F

    .line 43
    iput v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineColorNormal:I

    .line 44
    const v0, -0xcc00cd

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineColorPress:I

    .line 45
    iput v3, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineWidth:I

    .line 46
    const/16 v0, 0x36

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineHeight:I

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffsetInit:I

    .line 48
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffset:I

    .line 50
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffsetScale:I

    .line 51
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffsetScaleInit:I

    .line 54
    iput v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcColor:I

    .line 55
    const v0, -0x66666667

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingColor:I

    .line 56
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingAlpha:I

    .line 58
    const/high16 v0, -0x3d900000    # -60.0f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcBeginAngle:F

    .line 60
    const/16 v0, 0x7e

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mInnerRingDiameter:I

    .line 61
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mRingWidthIncMax:I

    .line 62
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mRingWidthInc:I

    .line 64
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingWH:I

    .line 66
    iput v3, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcWidth:I

    .line 68
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcBeginAngle:F

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->startAngle:F

    .line 342
    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mCancel:Z

    .line 72
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->init()V

    .line 70
    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 280
    .local v6, "centerX":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingWH:I

    div-int/lit8 v7, v0, 0x2

    .line 281
    .local v7, "centerY":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mInnerRingDiameter:I

    div-int/lit8 v8, v0, 0x2

    .line 282
    .local v8, "innerCircle":I
    new-instance v1, Landroid/graphics/RectF;

    add-int/lit8 v0, v8, 0x1

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int v0, v6, v0

    int-to-float v0, v0

    .line 283
    add-int/lit8 v2, v8, 0x1

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v2, v7, v2

    int-to-float v2, v2

    .line 284
    add-int/lit8 v3, v8, 0x1

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    int-to-float v3, v3

    .line 285
    add-int/lit8 v4, v8, 0x1

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v7

    int-to-float v4, v4

    .line 282
    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 288
    .local v1, "rect2":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 290
    iget v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->startAngle:F

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->startAngle:F

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v3, v0

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 278
    return-void
.end method

.method private drawCenterLine(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 273
    .local v6, "center":I
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 275
    int-to-float v1, v6

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffset:I

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffsetInit:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v6

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffsetInit:I

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 270
    return-void
.end method

.method private drawScaleArc(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 295
    .local v6, "centerX":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingWH:I

    div-int/lit8 v7, v0, 0x2

    .line 296
    .local v7, "centerY":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mInnerRingDiameter:I

    div-int/lit8 v8, v0, 0x2

    .line 297
    .local v8, "innerCircle":I
    new-instance v1, Landroid/graphics/RectF;

    add-int/lit8 v0, v8, 0x1

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int v0, v6, v0

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mRingWidthInc:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 298
    add-int/lit8 v2, v8, 0x1

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v2, v7, v2

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mRingWidthInc:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 299
    add-int/lit8 v3, v8, 0x1

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mRingWidthInc:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 300
    add-int/lit8 v4, v8, 0x1

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v7

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mRingWidthInc:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 297
    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 303
    .local v1, "rect2":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleArcPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 305
    iget v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->startAngle:F

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->startAngle:F

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v3, v0

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleArcPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 293
    return-void
.end method

.method private drawScaleCenterLine(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 311
    .local v6, "center":I
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 313
    int-to-float v1, v6

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffset:I

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffsetInit:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffsetScale:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v6

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffsetInit:I

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleArcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 308
    return-void
.end method

.method private drawTip(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 237
    .local v0, "seq":I
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 238
    .local v1, "textWidth":F
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipMsg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 239
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipPaint:Landroid/graphics/Paint;

    .line 238
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 240
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 235
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->density:F

    .line 78
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->initLine()V

    .line 79
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->initArc()V

    .line 80
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->initTip()V

    .line 75
    return-void
.end method

.method private initArc()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcColor:I

    .line 110
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcWidth:I

    .line 111
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcBeginAngle:F

    .line 112
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mInnerRingDiameter:I

    .line 114
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingWH:I

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->paint:Landroid/graphics/Paint;

    .line 117
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 121
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 123
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->initScaleArc()V

    .line 108
    return-void
.end method

.method private initLine()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineColorNormal:I

    .line 101
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineColorPress:I

    .line 102
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineWidth:I

    .line 103
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineHeight:I

    .line 104
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffsetInit:I

    .line 99
    return-void
.end method

.method private initScale()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 368
    new-instance v3, Lcom/android/server/policy/global/GlobalActionBottomBar$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/global/GlobalActionBottomBar$1;-><init>(Lcom/android/server/policy/global/GlobalActionBottomBar;)V

    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleListener:Landroid/animation/Animator$AnimatorListener;

    .line 390
    const-string/jumbo v3, "innerRingWidthInc"

    new-array v4, v8, [I

    aput v6, v4, v6

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mRingWidthIncMax:I

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 391
    .local v2, "ringScale":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v3, "scaleRingAlpha"

    new-array v4, v8, [I

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingAlpha:I

    aput v5, v4, v6

    aput v6, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 392
    .local v1, "ringAlpha":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v3, "lineOffsetScale"

    new-array v4, v8, [I

    aput v6, v4, v6

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffsetScaleInit:I

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 393
    .local v0, "lineScale":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 394
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x834

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 395
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const v5, 0x3fb33333    # 1.4f

    invoke-direct {v4, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 396
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 397
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 398
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 367
    return-void
.end method

.method private initScaleArc()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingColor:I

    .line 130
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingColor:I

    shr-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingAlpha:I

    .line 131
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mRingWidthIncMax:I

    .line 133
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffsetScaleInit:I

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleArcPaint:Landroid/graphics/Paint;

    .line 136
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleArcPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 140
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 142
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->initScale()V

    .line 128
    return-void
.end method

.method private initTip()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040608

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipMsg:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipTextSize:F

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineColorNormal:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 93
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 95
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 84
    return-void
.end method

.method private resetScale()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingAlpha:I

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 337
    iput v3, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffsetScale:I

    .line 338
    iput v3, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mRingWidthInc:I

    .line 339
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->invalidate()V

    .line 335
    return-void
.end method

.method private setInnerRingWidthInc(I)V
    .locals 0
    .param p1, "ringWidthInc"    # I

    .prologue
    .line 331
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mRingWidthInc:I

    .line 332
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->invalidate()V

    .line 330
    return-void
.end method

.method private setLineOffsetScale(I)V
    .locals 0
    .param p1, "lineOffsetScale"    # I

    .prologue
    .line 326
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffsetScale:I

    .line 327
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->invalidate()V

    .line 325
    return-void
.end method

.method private setScaleRingAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->invalidate()V

    .line 320
    return-void
.end method


# virtual methods
.method public destroyMarquee()V
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->stopMarquee()V

    .line 345
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 347
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 343
    :cond_0
    return-void
.end method

.method public final getBottomBarWidth()I
    .locals 3

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "tipWidth":I
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->density:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 158
    :cond_0
    iget v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingWH:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public hide(Z)V
    .locals 4
    .param p1, "animation"    # Z

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 412
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 411
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 413
    const/4 v1, 0x0

    .line 411
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 410
    return-void
.end method

.method public hintRingArea(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 189
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 190
    .local v3, "location":[I
    invoke-virtual {p0, v3}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getLocationInWindow([I)V

    .line 192
    new-instance v2, Landroid/graphics/Rect;

    aget v4, v3, v9

    aget v5, v3, v8

    aget v6, v3, v9

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v3, v8

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 194
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingWH:I

    if-le v4, v5, :cond_0

    .line 195
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingWH:I

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 196
    .local v0, "bottomOffsetY":I
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v0

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 198
    .end local v0    # "bottomOffsetY":I
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingWH:I

    if-le v4, v5, :cond_1

    .line 199
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleRingWH:I

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 201
    .local v1, "dx":I
    invoke-virtual {v2, v1, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 204
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
    .line 213
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    return-void

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 220
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionBottomBar;->drawScaleArc(Landroid/graphics/Canvas;)V

    .line 221
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionBottomBar;->drawArc(Landroid/graphics/Canvas;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionBottomBar;->drawScaleCenterLine(Landroid/graphics/Canvas;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionBottomBar;->drawCenterLine(Landroid/graphics/Canvas;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionBottomBar;->drawTip(Landroid/graphics/Canvas;)V

    .line 212
    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 178
    .local v0, "result":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v0

    .line 180
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/global/GlobalActionBottomBar;->hintRingArea(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public reBoot()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public setAlaphaWhenDrag(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 162
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 163
    :cond_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/global/GlobalActionBottomBar;->setAlpha(F)V

    .line 161
    return-void
.end method

.method public setAngleArc(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 248
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mArcBeginAngle:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->startAngle:F

    .line 249
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->invalidate()V

    .line 247
    return-void
.end method

.method public setCustomerText(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipMsg:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setLineHeightOffset(I)V
    .locals 0
    .param p1, "lineOffset"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineOffset:I

    .line 267
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->invalidate()V

    .line 265
    return-void
.end method

.method public setTipAlapha(I)V
    .locals 3
    .param p1, "alapha"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->invalidate()V

    .line 256
    return-void
.end method

.method public show(Z)V
    .locals 5
    .param p1, "animation"    # Z

    .prologue
    const/4 v4, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 404
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 403
    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->setTranslationY(F)V

    .line 405
    invoke-virtual {p0, v4}, Lcom/android/server/policy/global/GlobalActionBottomBar;->setAlpha(F)V

    .line 406
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->animate()Landroid/view/ViewPropertyAnimator;

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

    .line 407
    const/high16 v1, 0x3f800000    # 1.0f

    .line 406
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 401
    return-void
.end method

.method public shutDown()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x190

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 421
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 422
    .local v4, "set":Landroid/animation/AnimatorSet;
    const-string/jumbo v5, "angleArc"

    new-array v6, v10, [F

    const/4 v7, 0x0

    aput v7, v6, v8

    const/high16 v7, 0x43160000    # 150.0f

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 423
    .local v0, "angleArc":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "LineHeightOffset"

    new-array v6, v10, [I

    aput v8, v6, v8

    iget v7, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mLineHeight:I

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 424
    .local v1, "lineOffset":Landroid/animation/PropertyValuesHolder;
    new-array v5, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 425
    .local v2, "objectAni":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 426
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const v6, 0x3f8ccccd    # 1.1f

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 428
    const-string/jumbo v5, "tipAlapha"

    const/16 v6, 0xc8

    filled-new-array {v6, v8}, [I

    move-result-object v6

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 429
    .local v3, "objectTip":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 430
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const v6, 0x3fe66666    # 1.8f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 432
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 433
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 420
    return-void
.end method

.method public startMarquee()V
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mCancel:Z

    .line 359
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x41a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 360
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 356
    return-void
.end method

.method public stopMarquee()V
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mCancel:Z

    if-eqz v0, :cond_0

    return-void

    .line 353
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mCancel:Z

    .line 351
    return-void
.end method
