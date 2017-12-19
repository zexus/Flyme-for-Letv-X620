.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;
.super Landroid/view/View;
.source "SimpleLeLoadingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final BALL_NUM:I = 0x6

.field private static final DISAPPEAR_DURATION:I = 0x12c

.field private static final DURATION:I = 0x3e8

.field private static EVERY_DURATION:I = 0x0

.field private static PERCENT_OFFSET:I = 0x0

.field private static final ROTATE_DURATION:I = 0x384


# instance fields
.field private mAppearAnimators:[Landroid/animation/ObjectAnimator;

.field private mBallRadius:F

.field private mBalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDisappearAnim:Landroid/animation/AnimatorSet;

.field private mLastPercent:J

.field private mRotateAnim:Landroid/animation/ObjectAnimator;

.field private mViewRadius:F

.field private mViewSize:F

.field private rot:F


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x14c

    sput v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->PERCENT_OFFSET:I

    .line 31
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->PERCENT_OFFSET:I

    div-int/lit8 v0, v0, 0x6

    rsub-int v0, v0, 0xa6

    sput v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x6

    const/4 v6, -0x1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    .line 51
    const v4, 0x10100f4

    .line 52
    const v5, 0x10100f5

    .line 50
    filled-new-array {v4, v5}, [I

    move-result-object v0

    .line 54
    .local v0, "attrsArray":[I
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 55
    .local v3, "ta":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 56
    .local v2, "layout_width":I
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 57
    .local v1, "layout_height":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-direct {p0, v2, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->init(II)V

    .line 48
    return-void
.end method

.method private addBall(FFI)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "color"    # I

    .prologue
    .line 93
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 94
    .local v0, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    iget v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 95
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 96
    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-direct {v3, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 97
    .local v3, "shapeHolder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    invoke-virtual {v3, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setX(F)V

    .line 98
    invoke-virtual {v3, p2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setY(F)V

    .line 99
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 100
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    invoke-virtual {v3, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    .line 102
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 103
    return-object v3
.end method

.method private cancelRotateAnim()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 411
    :cond_0
    return-void
.end method

.method private getDirection(J)Z
    .locals 5
    .param p1, "curPer"    # J

    .prologue
    .line 426
    iget-wide v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mLastPercent:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 427
    .local v0, "isDown":Z
    :goto_0
    iput-wide p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mLastPercent:J

    .line 428
    return v0

    .line 426
    .end local v0    # "isDown":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isDown":Z
    goto :goto_0
.end method

.method private getNormal2Zero(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    .param p2, "orderId"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 235
    const-string/jumbo v5, "width"

    new-array v6, v10, [F

    .line 236
    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    .line 235
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 237
    .local v3, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "height"

    new-array v6, v10, [F

    .line 238
    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    .line 237
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 239
    .local v2, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "x"

    new-array v6, v10, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getX()F

    move-result v7

    aput v7, v6, v8

    .line 240
    iget v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mViewSize:F

    div-float/2addr v7, v12

    aput v7, v6, v9

    .line 239
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 241
    .local v0, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "y"

    new-array v6, v10, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getY()F

    move-result v7

    aput v7, v6, v8

    .line 242
    iget v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mViewSize:F

    div-float/2addr v7, v12

    aput v7, v6, v9

    .line 241
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 243
    .local v1, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    .line 244
    aput-object v3, v5, v8

    aput-object v2, v5, v9

    aput-object v0, v5, v10

    const/4 v6, 0x3

    aput-object v1, v5, v6

    .line 243
    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 244
    const-wide/16 v6, 0x12c

    .line 243
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 246
    .local v4, "z2nAnim":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    invoke-virtual {v4, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 248
    return-object v4
.end method

.method private getZero2Normal(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    .param p2, "orderId"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 190
    const-string/jumbo v5, "width"

    new-array v6, v11, [F

    .line 191
    aput v8, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    aput v7, v6, v10

    .line 190
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 192
    .local v3, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "height"

    new-array v6, v11, [F

    .line 193
    aput v8, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    aput v7, v6, v10

    .line 192
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 194
    .local v2, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "x"

    new-array v6, v11, [F

    .line 195
    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    div-float/2addr v8, v12

    add-float/2addr v7, v8

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getX()F

    move-result v7

    aput v7, v6, v10

    .line 194
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 196
    .local v0, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "y"

    new-array v6, v11, [F

    .line 197
    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    div-float/2addr v8, v12

    add-float/2addr v7, v8

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getY()F

    move-result v7

    aput v7, v6, v10

    .line 196
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 198
    .local v1, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    .line 199
    aput-object v3, v5, v9

    aput-object v2, v5, v10

    aput-object v0, v5, v11

    const/4 v6, 0x3

    aput-object v1, v5, v6

    .line 198
    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 201
    .local v4, "z2nAnim":Landroid/animation/ObjectAnimator;
    sget v5, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 203
    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v5}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 205
    return-object v4
.end method

.method private init(II)V
    .locals 2
    .param p1, "layout_width"    # I
    .param p2, "layout_height"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->getDefaultColorList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->prepare(II)V

    .line 66
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->preAnim()V

    .line 63
    return-void
.end method

.method private initBall()V
    .locals 12

    .prologue
    .line 82
    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mViewRadius:F

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    sub-float v0, v3, v4

    .line 83
    .local v0, "drawRadius":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 84
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 85
    .local v2, "pointF":Landroid/graphics/PointF;
    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mViewSize:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-double v4, v3

    float-to-double v6, v0

    int-to-float v3, v1

    .line 81
    const/high16 v8, 0x42700000    # 60.0f

    .line 85
    mul-float/2addr v3, v8

    float-to-double v8, v3

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    .line 86
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mViewSize:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    float-to-double v6, v0

    int-to-float v8, v1

    .line 81
    const/high16 v9, 0x42700000    # 60.0f

    .line 86
    mul-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v4, v4

    .line 85
    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 87
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v5, v6, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->addBall(FFI)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "pointF":Landroid/graphics/PointF;
    :cond_0
    return-void
.end method

.method private makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V
    .locals 4
    .param p1, "appearAnimator"    # Landroid/animation/ObjectAnimator;
    .param p2, "time"    # I

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    .line 420
    .local v0, "currentPlayTime":J
    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 421
    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 418
    :cond_0
    return-void
.end method

.method private preAnim()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->preAppearAnim()V

    .line 109
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->preRotateAnim2()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    .line 110
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->preDisappearAnim()V

    .line 107
    return-void
.end method

.method private preAppearAnim()V
    .locals 4

    .prologue
    .line 209
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 212
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-direct {p0, v2, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->getZero2Normal(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v0

    .line 213
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method private preDisappearAnim()V
    .locals 5

    .prologue
    .line 255
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mDisappearAnim:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_1

    .line 256
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Landroid/animation/ObjectAnimator;

    .line 257
    .local v2, "mAnimators":[Landroid/animation/ObjectAnimator;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 259
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-direct {p0, v3, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->getNormal2Zero(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    .line 260
    aget-object v3, v2, v0

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 261
    aget-object v3, v2, v0

    new-instance v4, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView$1;

    invoke-direct {v4, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView$1;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mDisappearAnim:Landroid/animation/AnimatorSet;

    .line 273
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mDisappearAnim:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView$2;

    invoke-direct {v4, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView$2;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 288
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mDisappearAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 253
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "mAnimators":[Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method private preRotateAnim()Landroid/animation/ObjectAnimator;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 147
    const-string/jumbo v2, "rotation"

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 148
    const/4 v4, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x43b40000    # 360.0f

    aput v4, v3, v6

    .line 147
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 149
    .local v1, "rotation":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v5

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x384

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 150
    .local v0, "rotateAnim":Landroid/animation/ObjectAnimator;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 151
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    return-object v0
.end method

.method private preRotateAnim2()Landroid/animation/ObjectAnimator;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 156
    const-string/jumbo v2, "rot"

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 157
    const/4 v4, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x43b40000    # 360.0f

    aput v4, v3, v6

    .line 156
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 160
    .local v1, "rotation":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v5

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x384

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 161
    .local v0, "rotateAnim":Landroid/animation/ObjectAnimator;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 162
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 163
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 183
    return-object v0
.end method

.method private prepare(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 139
    if-lt p2, p1, :cond_0

    move v0, p2

    .line 140
    .local v0, "size":I
    :goto_0
    int-to-float v1, v0

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mViewSize:F

    .line 141
    div-int/lit8 v1, v0, 0x8

    int-to-float v1, v1

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    .line 142
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mViewRadius:F

    .line 143
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->initBall()V

    .line 136
    return-void

    .line 139
    .end local v0    # "size":I
    :cond_0
    move v0, p1

    .restart local v0    # "size":I
    goto :goto_0
.end method

.method private restInit()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->initBall()V

    .line 454
    return-void
.end method


# virtual methods
.method public autoPull2RefreshAnim()V
    .locals 3

    .prologue
    .line 473
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "holder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    .line 474
    .local v0, "holder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    goto :goto_0

    .line 476
    .end local v0    # "holder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 477
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->resume()V

    .line 472
    :cond_1
    :goto_1
    return-void

    .line 478
    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 479
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method

.method public cancelAutoPull2RefreshAnim()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 488
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->setAllBallsAlpha(F)V

    .line 483
    return-void
.end method

.method public completeAnim()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mDisappearAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mDisappearAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 405
    :cond_0
    return-void
.end method

.method public getDefaultColorList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .local v0, "colorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v1, "#ed1e20"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    const-string/jumbo v1, "#8c50e7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    const-string/jumbo v1, "#1ab1eb"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    const-string/jumbo v1, "#80cb17"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    const-string/jumbo v1, "#ffd200"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    const-string/jumbo v1, "#ff8400"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-object v0
.end method

.method public getRot()F
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->rot:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v0, v2, 0x1

    .line 442
    .local v0, "x":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v1, v2, 0x1

    .line 443
    .local v1, "y":I
    add-int/lit16 v2, v0, 0x2a0

    add-int/lit16 v3, v1, 0x2a0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate(IIII)V

    .line 439
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 499
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 500
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 498
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->rot:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ball$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    .line 122
    .local v0, "ball":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getAlpha()I

    move-result v2

    if-lez v2, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getX()F

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getY()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 126
    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getX()F

    move-result v2

    neg-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getY()F

    move-result v3

    neg-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 114
    .end local v0    # "ball":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    :cond_2
    return-void
.end method

.method public resetOriginals()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->setRotation(F)V

    .line 431
    :cond_0
    return-void
.end method

.method public setAllBallsAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 492
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "holder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    .line 493
    .local v0, "holder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    goto :goto_0

    .line 491
    .end local v0    # "holder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    :cond_0
    return-void
.end method

.method public setEachColor4Balls(IIIIII)V
    .locals 4
    .param p1, "color1"    # I
    .param p2, "color2"    # I
    .param p3, "color3"    # I
    .param p4, "color4"    # I
    .param p5, "color5"    # I
    .param p6, "color6"    # I

    .prologue
    .line 459
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 460
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 467
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    .line 468
    .local v1, "shapeHolder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    .end local v1    # "shapeHolder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    :cond_0
    return-void
.end method

.method public setPercent(J)V
    .locals 9
    .param p1, "percent"    # J

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 295
    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->PERCENT_OFFSET:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->PERCENT_OFFSET:I

    int-to-long v2, v1

    sub-long/2addr p1, v2

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->getDirection(J)Z

    move-result v0

    .line 300
    .local v0, "isDown":Z
    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_3

    .line 301
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->cancelRotateAnim()V

    .line 302
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1, p2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 303
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 304
    if-nez v0, :cond_1

    .line 305
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v6

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 306
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v7

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 307
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v8

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 308
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 309
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate()V

    .line 294
    :cond_2
    :goto_0
    return-void

    .line 312
    :cond_3
    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_5

    .line 313
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->cancelRotateAnim()V

    .line 314
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v6

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    int-to-long v2, v2

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 315
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 316
    if-eqz v0, :cond_4

    .line 317
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v4

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 324
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate()V

    goto :goto_0

    .line 319
    :cond_4
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v7

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 320
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v8

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 321
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 322
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    goto :goto_1

    .line 325
    :cond_5
    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v1, v1, 0x3

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_7

    .line 326
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->cancelRotateAnim()V

    .line 327
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v7

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 328
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 329
    if-eqz v0, :cond_6

    .line 330
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v4

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 331
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v6

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 337
    :goto_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate()V

    goto/16 :goto_0

    .line 333
    :cond_6
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 334
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 335
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v8

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    goto :goto_2

    .line 338
    :cond_7
    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v1, v1, 0x4

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_9

    .line 339
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->cancelRotateAnim()V

    .line 340
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v8

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 341
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 342
    if-eqz v0, :cond_8

    .line 343
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v4

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 344
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v6

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 345
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v7

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 351
    :goto_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate()V

    goto/16 :goto_0

    .line 348
    :cond_8
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 349
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    goto :goto_3

    .line 352
    :cond_9
    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v1, v1, 0x5

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_b

    .line 353
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->cancelRotateAnim()V

    .line 354
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 355
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 356
    if-eqz v0, :cond_a

    .line 357
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v4

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 358
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v6

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 359
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v7

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 360
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v8

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 364
    :goto_4
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate()V

    goto/16 :goto_0

    .line 362
    :cond_a
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    goto :goto_4

    .line 365
    :cond_b
    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v1, v1, 0x6

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_d

    .line 366
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->cancelRotateAnim()V

    .line 367
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v2, v2, 0x5

    int-to-long v2, v2

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 368
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 369
    if-eqz v0, :cond_c

    .line 370
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v4

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 371
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v6

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 372
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v7

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 373
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v8

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 374
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 376
    :cond_c
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate()V

    goto/16 :goto_0

    .line 378
    :cond_d
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 379
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 380
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 381
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 382
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 383
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 384
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v4

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 385
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v6

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 386
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v7

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 387
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v8

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 388
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 389
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    .line 390
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate()V

    .line 392
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 393
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->resume()V

    goto/16 :goto_0

    .line 394
    :cond_e
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 395
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0
.end method

.method public setRot(F)V
    .locals 0
    .param p1, "rot"    # F

    .prologue
    .line 451
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->rot:F

    .line 450
    return-void
.end method
