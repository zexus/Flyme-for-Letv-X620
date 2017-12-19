.class abstract Lcom/android/server/policy/global/CircleButton;
.super Landroid/view/View;
.source "CircleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/global/CircleButton$ClickableControlListener;
    }
.end annotation


# static fields
.field private static final TIME_CICLE_IN:J = 0x2bcL

.field private static final TIME_CICLE_OUT_FIRST:J = 0x12cL

.field private static final TIME_CICLE_OUT_SECOND:J = 0x1f4L

.field private static final TIME_TIP_IN:J = 0x2bcL

.field private static final TIME_TIP_OUT:J = 0x320L


# instance fields
.field private final DEFAULT_CIRCLE_RADIUS:I

.field protected final DEFAULT_ICON_RADIUS:I

.field protected final DEFAULT_PAINT_STROKE_WIDTH:I

.field public density:F

.field protected isCancel:Z

.field private mCircleColor:I

.field protected mCircleIn:Landroid/animation/ObjectAnimator;

.field protected mCircleOut:Landroid/animation/ObjectAnimator;

.field protected mCircleOutFirst:Landroid/animation/ObjectAnimator;

.field protected mCircleOutSecond:Landroid/animation/ObjectAnimator;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCircleRadius:I

.field protected mScaleRingWH:I

.field private mTipColor:I

.field protected mTipIn:Landroid/animation/ObjectAnimator;

.field private mTipMsg:Ljava/lang/String;

.field protected mTipOut:Landroid/animation/ObjectAnimator;

.field private mTipPaddingBottom:I

.field private mTipPaint:Landroid/graphics/Paint;

.field private mTipTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/CircleButton;->dipToPx(F)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_CIRCLE_RADIUS:I

    .line 31
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/CircleButton;->dipToPx(F)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_ICON_RADIUS:I

    .line 33
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_PAINT_STROKE_WIDTH:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/CircleButton;->isCancel:Z

    .line 61
    invoke-direct {p0}, Lcom/android/server/policy/global/CircleButton;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/CircleButton;->dipToPx(F)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_CIRCLE_RADIUS:I

    .line 31
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/CircleButton;->dipToPx(F)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_ICON_RADIUS:I

    .line 33
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_PAINT_STROKE_WIDTH:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/CircleButton;->isCancel:Z

    .line 65
    invoke-direct {p0}, Lcom/android/server/policy/global/CircleButton;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/CircleButton;->dipToPx(F)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_CIRCLE_RADIUS:I

    .line 31
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/CircleButton;->dipToPx(F)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_ICON_RADIUS:I

    .line 33
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_PAINT_STROKE_WIDTH:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/CircleButton;->isCancel:Z

    .line 70
    invoke-direct {p0}, Lcom/android/server/policy/global/CircleButton;->init()V

    .line 68
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 217
    .local v0, "centerX":I
    iget v2, p0, Lcom/android/server/policy/global/CircleButton;->mScaleRingWH:I

    div-int/lit8 v1, v2, 0x2

    .line 218
    .local v1, "centerY":I
    int-to-float v2, v0

    int-to-float v3, v1

    iget v4, p0, Lcom/android/server/policy/global/CircleButton;->mCircleRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/policy/global/CircleButton;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 215
    return-void
.end method

.method private drawTip(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 227
    .local v0, "seq":I
    iget-object v2, p0, Lcom/android/server/policy/global/CircleButton;->mTipPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/server/policy/global/CircleButton;->mTipMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 228
    .local v1, "textWidth":F
    iget-object v2, p0, Lcom/android/server/policy/global/CircleButton;->mTipMsg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/CircleButton;->mTipPaddingBottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/policy/global/CircleButton;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 229
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 225
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/policy/global/CircleButton;->initViewParams()V

    .line 77
    invoke-direct {p0}, Lcom/android/server/policy/global/CircleButton;->initTipParams()V

    .line 78
    invoke-direct {p0}, Lcom/android/server/policy/global/CircleButton;->initCircleParams()V

    .line 79
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->initParams()V

    .line 81
    invoke-direct {p0}, Lcom/android/server/policy/global/CircleButton;->loadCircleAnimator()V

    .line 82
    invoke-direct {p0}, Lcom/android/server/policy/global/CircleButton;->loadTipAnimator()V

    .line 75
    return-void
.end method

.method private initCircleParams()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->mCircleColor:I

    .line 117
    iget v0, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_CIRCLE_RADIUS:I

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->mCircleRadius:I

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mCirclePaint:Landroid/graphics/Paint;

    .line 120
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/CircleButton;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 124
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 125
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_PAINT_STROKE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    return-void
.end method

.method private initTipParams()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040608

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipMsg:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipTextSize:F

    .line 99
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipColor:I

    .line 100
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipPaddingBottom:I

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipPaint:Landroid/graphics/Paint;

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/CircleButton;->mTipColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/CircleButton;->mTipTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 107
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 96
    return-void
.end method

.method private initViewParams()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->mScaleRingWH:I

    .line 90
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->density:F

    .line 88
    return-void
.end method

.method private loadCircleAnimator()V
    .locals 12

    .prologue
    .line 154
    const-string/jumbo v5, "circleAlpha"

    const/16 v6, 0xff

    const/4 v7, 0x0

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 156
    .local v1, "circleAlphaOut":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "circleAlpha"

    const/4 v6, 0x0

    const/16 v7, 0xff

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 157
    .local v0, "circleAlphaIn":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "circleScale"

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v7, v6, v8

    iget v7, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_CIRCLE_RADIUS:I

    const/4 v8, 0x1

    aput v7, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 158
    .local v2, "circleScaleIn":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/policy/global/CircleButton;->mCircleIn:Landroid/animation/ObjectAnimator;

    .line 159
    iget-object v5, p0, Lcom/android/server/policy/global/CircleButton;->mCircleIn:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x2bc

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 160
    iget-object v5, p0, Lcom/android/server/policy/global/CircleButton;->mCircleIn:Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 163
    const-string/jumbo v5, "circleScale"

    const/4 v6, 0x2

    new-array v6, v6, [I

    iget v7, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_CIRCLE_RADIUS:I

    const/4 v8, 0x0

    aput v7, v6, v8

    iget v7, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_CIRCLE_RADIUS:I

    int-to-double v8, v7

    const-wide v10, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v8, v10

    double-to-int v7, v8

    const/4 v8, 0x1

    aput v7, v6, v8

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/policy/global/CircleButton;->mCircleOutFirst:Landroid/animation/ObjectAnimator;

    .line 164
    iget-object v5, p0, Lcom/android/server/policy/global/CircleButton;->mCircleOutFirst:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 165
    iget-object v5, p0, Lcom/android/server/policy/global/CircleButton;->mCircleOutFirst:Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    const-string/jumbo v5, "circleScale"

    const/4 v6, 0x2

    new-array v6, v6, [I

    iget v7, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_CIRCLE_RADIUS:I

    int-to-double v8, v7

    const-wide v10, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v8, v10

    double-to-int v7, v8

    const/4 v8, 0x0

    aput v7, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v7, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 168
    .local v4, "circleScaleOutSecond":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/policy/global/CircleButton;->mCircleOutSecond:Landroid/animation/ObjectAnimator;

    .line 169
    iget-object v5, p0, Lcom/android/server/policy/global/CircleButton;->mCircleOutSecond:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 170
    iget-object v5, p0, Lcom/android/server/policy/global/CircleButton;->mCircleOutSecond:Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 172
    const-string/jumbo v5, "circleScale"

    const/4 v6, 0x2

    new-array v6, v6, [I

    iget v7, p0, Lcom/android/server/policy/global/CircleButton;->DEFAULT_CIRCLE_RADIUS:I

    const/4 v8, 0x0

    aput v7, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v7, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 173
    .local v3, "circleScaleOut":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/policy/global/CircleButton;->mCircleOut:Landroid/animation/ObjectAnimator;

    .line 174
    iget-object v5, p0, Lcom/android/server/policy/global/CircleButton;->mCircleOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 175
    iget-object v5, p0, Lcom/android/server/policy/global/CircleButton;->mCircleOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 176
    iget-object v5, p0, Lcom/android/server/policy/global/CircleButton;->mCircleOut:Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    return-void
.end method

.method private loadTipAnimator()V
    .locals 7

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x0

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 184
    const-string/jumbo v0, "tipAlpha"

    filled-new-array {v5, v6}, [I

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipIn:Landroid/animation/ObjectAnimator;

    .line 185
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipIn:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 186
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipIn:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 188
    const-string/jumbo v0, "tipAlpha"

    filled-new-array {v6, v5}, [I

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipOut:Landroid/animation/ObjectAnimator;

    .line 189
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 190
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipOut:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    return-void
.end method


# virtual methods
.method protected dipToPx(F)I
    .locals 3
    .param p1, "dpValue"    # F

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 359
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method protected abstract drawIcon(Landroid/graphics/Canvas;)V
.end method

.method public final getBottomBarWidth()I
    .locals 3

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "tipWidth":I
    iget-object v1, p0, Lcom/android/server/policy/global/CircleButton;->mTipMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/server/policy/global/CircleButton;->mTipPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/server/policy/global/CircleButton;->mTipMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/android/server/policy/global/CircleButton;->density:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 263
    :cond_0
    iget v1, p0, Lcom/android/server/policy/global/CircleButton;->mScaleRingWH:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public final getMargin(II)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "marginBase"    # I

    .prologue
    .line 273
    iget v1, p0, Lcom/android/server/policy/global/CircleButton;->mScaleRingWH:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int v0, p2, v1

    .line 274
    .local v0, "margin":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    return v1
.end method

.method public hintRingArea(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 306
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 307
    .local v3, "location":[I
    invoke-virtual {p0, v3}, Lcom/android/server/policy/global/CircleButton;->getLocationInWindow([I)V

    .line 309
    new-instance v2, Landroid/graphics/Rect;

    aget v4, v3, v9

    aget v5, v3, v8

    aget v6, v3, v9

    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v3, v8

    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 311
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/CircleButton;->mScaleRingWH:I

    if-le v4, v5, :cond_0

    .line 312
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/CircleButton;->mScaleRingWH:I

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 313
    .local v0, "bottomOffsetY":I
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v0

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 315
    .end local v0    # "bottomOffsetY":I
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/CircleButton;->mScaleRingWH:I

    if-le v4, v5, :cond_1

    .line 316
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/CircleButton;->mScaleRingWH:I

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 318
    .local v1, "dx":I
    invoke-virtual {v2, v1, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 321
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

.method protected abstract initParams()V
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 200
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/CircleButton;->drawCircle(Landroid/graphics/Canvas;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/CircleButton;->drawTip(Landroid/graphics/Canvas;)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/server/policy/global/CircleButton;->drawIcon(Landroid/graphics/Canvas;)V

    .line 198
    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 295
    .local v0, "result":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v0

    .line 297
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/global/CircleButton;->hintRingArea(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected resetParams(Z)V
    .locals 2
    .param p1, "isReset"    # Z

    .prologue
    const v1, 0xffffff

    .line 139
    if-nez p1, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/global/CircleButton;->mCircleRadius:I

    .line 143
    iput v1, p0, Lcom/android/server/policy/global/CircleButton;->mCircleColor:I

    .line 144
    iput v1, p0, Lcom/android/server/policy/global/CircleButton;->mTipColor:I

    .line 138
    return-void
.end method

.method public setAlaphaWhenDrag(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 278
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 279
    :cond_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/global/CircleButton;->setAlpha(F)V

    .line 277
    return-void
.end method

.method protected setCircleAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/CircleButton;->mCircleColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->invalidate()V

    .line 339
    return-void
.end method

.method protected setCircleScale(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/android/server/policy/global/CircleButton;->mCircleRadius:I

    .line 331
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->invalidate()V

    .line 329
    return-void
.end method

.method protected setCustomerText(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipMsg:Ljava/lang/String;

    .line 250
    return-void
.end method

.method protected setCustomerText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/server/policy/global/CircleButton;->mTipMsg:Ljava/lang/String;

    .line 242
    return-void
.end method

.method protected setTipAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/policy/global/CircleButton;->mTipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/CircleButton;->mTipColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    invoke-virtual {p0}, Lcom/android/server/policy/global/CircleButton;->invalidate()V

    .line 349
    return-void
.end method
