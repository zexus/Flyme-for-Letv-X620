.class public Lcom/android/server/policy/global/RebootButton;
.super Lcom/android/server/policy/global/CircleButton;
.source "RebootButton.java"


# static fields
.field private static final DEFAULT_SWEEP_ANGLE:I = 0x12c

.field private static final DELAY_TIME_ARC_ARROW_IN:J = 0xafL

.field private static final DELAY_TIME_ARC_ARROW_SCALE_OUT:J = 0x12cL

.field private static final TIME_ARC_ARROW_IN:J = 0x2bcL

.field private static final TIME_ARC_ARROW_ROTATE_OUT:J = 0x28aL

.field private static final TIME_ARC_ARROW_SCALE_OUT:J = 0x1f4L


# instance fields
.field private DEFAULT_ARC_RADIUS:I

.field private DEFAULT_ARROW_RADIUS:I

.field private mArcArrowColor:I

.field private mArcArrowIn:Landroid/animation/ObjectAnimator;

.field private mArcArrowPaint:Landroid/graphics/Paint;

.field private mArcArrowRotateOut:Landroid/animation/ObjectAnimator;

.field private mArcArrowScaleOut:Landroid/animation/ObjectAnimator;

.field private mArcRadius:I

.field private mArcStartAngle:I

.field private mArcSweepAngle:I

.field private mArrowAngle:I

.field private mArrowOffsetAngle:I

.field private mArrowRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/CircleButton;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/global/CircleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/global/CircleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/server/policy/global/RebootButton;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 142
    .local v6, "centerX":I
    iget v0, p0, Lcom/android/server/policy/global/RebootButton;->mScaleRingWH:I

    div-int/lit8 v7, v0, 0x2

    .line 143
    .local v7, "centerY":I
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcRadius:I

    sub-int v0, v6, v0

    int-to-float v0, v0

    .line 144
    iget v2, p0, Lcom/android/server/policy/global/RebootButton;->mArcRadius:I

    sub-int v2, v7, v2

    int-to-float v2, v2

    .line 145
    iget v3, p0, Lcom/android/server/policy/global/RebootButton;->mArcRadius:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    .line 146
    iget v4, p0, Lcom/android/server/policy/global/RebootButton;->mArcRadius:I

    add-int/2addr v4, v7

    int-to-float v4, v4

    .line 143
    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 147
    .local v1, "rectF":Landroid/graphics/RectF;
    iget v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcStartAngle:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcSweepAngle:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 140
    return-void
.end method

.method private drawArcArrow(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/RebootButton;->drawArc(Landroid/graphics/Canvas;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/RebootButton;->drawArrow(Landroid/graphics/Canvas;)V

    .line 131
    return-void
.end method

.method private drawArrow(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/global/RebootButton;->getWidth()I

    move-result v2

    div-int/lit8 v13, v2, 0x2

    .line 156
    .local v13, "centerX":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/global/RebootButton;->mScaleRingWH:I

    div-int/lit8 v14, v2, 0x2

    .line 159
    .local v14, "centerY":I
    int-to-double v10, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/global/RebootButton;->mArcRadius:I

    int-to-double v0, v2

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/global/RebootButton;->mArcStartAngle:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/global/RebootButton;->mArcSweepAngle:I

    add-int/2addr v2, v7

    int-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v10, v10, v16

    double-to-float v5, v10

    .line 160
    .local v5, "x":F
    int-to-double v10, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/global/RebootButton;->mArcRadius:I

    int-to-double v0, v2

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/global/RebootButton;->mArcStartAngle:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/global/RebootButton;->mArcSweepAngle:I

    add-int/2addr v2, v7

    int-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v10, v10, v16

    double-to-float v6, v10

    .line 162
    .local v6, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 164
    .local v15, "seq":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/global/RebootButton;->mArcStartAngle:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/global/RebootButton;->mArcSweepAngle:I

    add-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/global/RebootButton;->mArrowOffsetAngle:I

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 166
    float-to-double v10, v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/global/RebootButton;->mArrowRadius:I

    int-to-double v0, v2

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/global/RebootButton;->mArrowAngle:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v18, v20

    const-wide v20, 0x4076800000000000L    # 360.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v10, v10, v16

    double-to-float v3, v10

    .line 167
    .local v3, "x1":F
    float-to-double v10, v6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/global/RebootButton;->mArrowRadius:I

    int-to-double v0, v2

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/global/RebootButton;->mArrowAngle:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v18, v20

    const-wide v20, 0x4076800000000000L    # 360.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v10, v10, v16

    double-to-float v4, v10

    .line 168
    .local v4, "y1":F
    float-to-double v10, v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/global/RebootButton;->mArrowRadius:I

    int-to-double v0, v2

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/global/RebootButton;->mArrowAngle:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v18, v20

    const-wide v20, 0x4076800000000000L    # 360.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v10, v10, v16

    double-to-float v8, v10

    .line 169
    .local v8, "x2":F
    float-to-double v10, v6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/global/RebootButton;->mArrowRadius:I

    int-to-double v0, v2

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/global/RebootButton;->mArrowAngle:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v18, v20

    const-wide v20, 0x4076800000000000L    # 360.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v10, v10, v16

    double-to-float v9, v10

    .line 171
    .local v9, "y2":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/global/RebootButton;->mArcArrowPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/global/RebootButton;->mArcArrowPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v10, v5

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 174
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 154
    return-void
.end method

.method private initArcArrowParams()V
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/android/server/policy/global/RebootButton;->DEFAULT_ICON_RADIUS:I

    iput v0, p0, Lcom/android/server/policy/global/RebootButton;->DEFAULT_ARC_RADIUS:I

    .line 68
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/RebootButton;->dipToPx(F)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/RebootButton;->DEFAULT_ARROW_RADIUS:I

    .line 70
    iget v0, p0, Lcom/android/server/policy/global/RebootButton;->DEFAULT_ARC_RADIUS:I

    iput v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcRadius:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowColor:I

    .line 72
    const/16 v0, -0x3c

    iput v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcStartAngle:I

    .line 73
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcSweepAngle:I

    .line 74
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/policy/global/RebootButton;->mArrowAngle:I

    .line 75
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/policy/global/RebootButton;->mArrowOffsetAngle:I

    .line 76
    iget v0, p0, Lcom/android/server/policy/global/RebootButton;->DEFAULT_ARROW_RADIUS:I

    iput v0, p0, Lcom/android/server/policy/global/RebootButton;->mArrowRadius:I

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 83
    iget-object v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/RebootButton;->DEFAULT_PAINT_STROKE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    return-void
.end method

.method private loadArcArrowAnimator()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/high16 v13, 0x3fc00000    # 1.5f

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 102
    const-string/jumbo v6, "arrowScale"

    new-array v7, v12, [I

    aput v10, v7, v10

    iget v8, p0, Lcom/android/server/policy/global/RebootButton;->DEFAULT_ARROW_RADIUS:I

    aput v8, v7, v11

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 103
    .local v4, "arrowScaleIn":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "arcScale"

    new-array v7, v12, [I

    aput v10, v7, v10

    iget v8, p0, Lcom/android/server/policy/global/RebootButton;->DEFAULT_ARC_RADIUS:I

    aput v8, v7, v11

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 104
    .local v2, "arcScaleIn":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "arcRotate"

    const/16 v7, 0x12c

    filled-new-array {v10, v7}, [I

    move-result-object v7

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 105
    .local v1, "arcRotate":Landroid/animation/PropertyValuesHolder;
    new-array v6, v14, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v10

    aput-object v2, v6, v11

    aput-object v4, v6, v12

    invoke-static {p0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowIn:Landroid/animation/ObjectAnimator;

    .line 106
    iget-object v6, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowIn:Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0x2bc

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 107
    iget-object v6, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowIn:Landroid/animation/ObjectAnimator;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    iget-object v6, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowIn:Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0xaf

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 110
    const-string/jumbo v6, "arrowScale"

    new-array v7, v12, [I

    iget v8, p0, Lcom/android/server/policy/global/RebootButton;->DEFAULT_ARROW_RADIUS:I

    aput v8, v7, v10

    aput v10, v7, v11

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 111
    .local v5, "arrowScaleOut":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "arcScale"

    new-array v7, v12, [I

    iget v8, p0, Lcom/android/server/policy/global/RebootButton;->DEFAULT_ARC_RADIUS:I

    aput v8, v7, v10

    aput v10, v7, v11

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 112
    .local v3, "arcScaleOut":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "arcArrowAlpha"

    const/16 v7, 0xff

    filled-new-array {v7, v10}, [I

    move-result-object v7

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 113
    .local v0, "arcArrowAlphaOut":Landroid/animation/PropertyValuesHolder;
    new-array v6, v14, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v6, v10

    aput-object v3, v6, v11

    aput-object v0, v6, v12

    invoke-static {p0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowScaleOut:Landroid/animation/ObjectAnimator;

    .line 114
    iget-object v6, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowScaleOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 115
    iget-object v6, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowScaleOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 116
    iget-object v6, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowScaleOut:Landroid/animation/ObjectAnimator;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 118
    const-string/jumbo v6, "arcArrowRotate"

    const/16 v7, -0x3c

    const/16 v8, 0x12c

    filled-new-array {v7, v8}, [I

    move-result-object v7

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowRotateOut:Landroid/animation/ObjectAnimator;

    .line 119
    iget-object v6, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowRotateOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0x28a

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 120
    iget-object v6, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowRotateOut:Landroid/animation/ObjectAnimator;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    return-void
.end method

.method private setArcArrowAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    invoke-virtual {p0}, Lcom/android/server/policy/global/RebootButton;->invalidate()V

    .line 223
    return-void
.end method

.method private setArcArrowRotate(I)V
    .locals 0
    .param p1, "startAngle"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/android/server/policy/global/RebootButton;->mArcStartAngle:I

    .line 183
    invoke-virtual {p0}, Lcom/android/server/policy/global/RebootButton;->invalidate()V

    .line 181
    return-void
.end method

.method private setArcRotate(I)V
    .locals 0
    .param p1, "sweepAngle"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/android/server/policy/global/RebootButton;->mArcSweepAngle:I

    .line 194
    invoke-virtual {p0}, Lcom/android/server/policy/global/RebootButton;->invalidate()V

    .line 192
    return-void
.end method

.method private setArcScale(I)V
    .locals 0
    .param p1, "arcRadius"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/android/server/policy/global/RebootButton;->mArcRadius:I

    .line 215
    invoke-virtual {p0}, Lcom/android/server/policy/global/RebootButton;->invalidate()V

    .line 213
    return-void
.end method

.method private setArrowScale(I)V
    .locals 0
    .param p1, "arrowRadius"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/android/server/policy/global/RebootButton;->mArrowRadius:I

    .line 204
    invoke-virtual {p0}, Lcom/android/server/policy/global/RebootButton;->invalidate()V

    .line 202
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/server/policy/global/RebootButton;->isClickable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    return-void

    .line 258
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 259
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/server/policy/global/RebootButton;->mTipOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowScaleOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/RebootButton;->mCircleOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 260
    new-instance v1, Lcom/android/server/policy/global/RebootButton$2;

    invoke-direct {v1, p0, p0}, Lcom/android/server/policy/global/RebootButton$2;-><init>(Lcom/android/server/policy/global/RebootButton;Lcom/android/server/policy/global/CircleButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 273
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 254
    return-void
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/RebootButton;->drawArcArrow(Landroid/graphics/Canvas;)V

    .line 124
    return-void
.end method

.method public hide(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/server/policy/global/RebootButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/global/RebootButton;->isCancel:Z

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/global/RebootButton;->cancel()V

    .line 244
    return-void
.end method

.method public bridge synthetic hintRingArea(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton;->hintRingArea(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected initParams()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/policy/global/RebootButton;->initArcArrowParams()V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/RebootButton;->resetParams(Z)V

    .line 60
    invoke-direct {p0}, Lcom/android/server/policy/global/RebootButton;->loadArcArrowAnimator()V

    .line 57
    return-void
.end method

.method public bridge synthetic onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reBoot()V
    .locals 3

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/server/policy/global/RebootButton;->isClickable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    return-void

    .line 283
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 284
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/server/policy/global/RebootButton;->mCircleOutFirst:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/RebootButton;->mTipOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowScaleOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowRotateOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 285
    iget-object v1, p0, Lcom/android/server/policy/global/RebootButton;->mCircleOutSecond:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/RebootButton;->mCircleOutFirst:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 286
    new-instance v1, Lcom/android/server/policy/global/CircleButton$ClickableControlListener;

    invoke-direct {v1, p0}, Lcom/android/server/policy/global/CircleButton$ClickableControlListener;-><init>(Lcom/android/server/policy/global/CircleButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 279
    return-void
.end method

.method protected resetParams(Z)V
    .locals 1
    .param p1, "isReset"    # Z

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton;->resetParams(Z)V

    .line 90
    iput v0, p0, Lcom/android/server/policy/global/RebootButton;->mArcRadius:I

    .line 91
    iput v0, p0, Lcom/android/server/policy/global/RebootButton;->mArrowRadius:I

    .line 88
    return-void
.end method

.method public bridge synthetic setAlaphaWhenDrag(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton;->setAlaphaWhenDrag(F)V

    return-void
.end method

.method public show(Z)V
    .locals 3
    .param p1, "animation"    # Z

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/server/policy/global/RebootButton;->isClickable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 233
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/server/policy/global/RebootButton;->mCircleIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/RebootButton;->mArcArrowIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/RebootButton;->mTipIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 234
    new-instance v1, Lcom/android/server/policy/global/RebootButton$1;

    invoke-direct {v1, p0, p0}, Lcom/android/server/policy/global/RebootButton$1;-><init>(Lcom/android/server/policy/global/RebootButton;Lcom/android/server/policy/global/CircleButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 241
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 228
    return-void
.end method
