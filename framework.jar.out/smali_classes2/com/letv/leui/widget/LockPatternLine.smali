.class public Lcom/letv/leui/widget/LockPatternLine;
.super Ljava/lang/Object;
.source "LockPatternLine.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;
    }
.end annotation


# static fields
.field private static final COLOR_NORMAL:I = -0x7f000001

.field private static final COLOR_WRONG:I = -0x7f010000

.field private static final LINE_ALPHA:Ljava/lang/String; = "lineAlpha"

.field private static final LINE_COLOR:Ljava/lang/String; = "lineColor"

.field private static final LINE_DISAPPEAR:Ljava/lang/String; = "lineDisappear"

.field private static final strokeWidth:I = 0x5


# instance fields
.field private factorX:F

.field private factorY:F

.field private lineAlpha:F

.field private lineColor:I

.field private lineDisappear:F

.field private mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

.field private mLineErrorAnimator:Landroid/animation/AnimatorSet;

.field private mMovePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/LockMovePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveTimes:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPaint2:Landroid/graphics/Paint;

.field private final mPath2:Landroid/graphics/Path;

.field private final mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/LockPatternLine;)Lcom/letv/leui/widget/LockMovePoint;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/LockPatternLine;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mMovePoints:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/LockPatternLine;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mMoveTimes:I

    return v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/LockPatternLine;Lcom/letv/leui/widget/LockMovePoint;)Lcom/letv/leui/widget/LockMovePoint;
    .locals 0

    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    return-object p1
.end method

.method static synthetic -set1(Lcom/letv/leui/widget/LockPatternLine;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/LockPatternLine;->mMoveTimes:I

    return p1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const v0, -0x7f000001

    iput v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineColor:I

    .line 31
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineDisappear:F

    .line 32
    iput v1, p0, Lcom/letv/leui/widget/LockPatternLine;->factorY:F

    iput v1, p0, Lcom/letv/leui/widget/LockPatternLine;->factorX:F

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    .line 48
    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternLine;->mView:Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/LockPatternLine;->lineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->getPaint2()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint2:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lineColor"    # I

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const v0, -0x7f000001

    iput v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineColor:I

    .line 31
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineDisappear:F

    .line 32
    iput v1, p0, Lcom/letv/leui/widget/LockPatternLine;->factorY:F

    iput v1, p0, Lcom/letv/leui/widget/LockPatternLine;->factorX:F

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    .line 39
    iput p2, p0, Lcom/letv/leui/widget/LockPatternLine;->lineColor:I

    .line 40
    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternLine;->mView:Landroid/view/View;

    .line 41
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->getPaint2()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint2:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    .line 38
    return-void
.end method

.method private cancelLineAnim()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mLineErrorAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mLineErrorAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mLineErrorAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 97
    :cond_0
    return-void
.end method

.method private getLineColorAnim()Landroid/animation/ObjectAnimator;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 109
    const-string/jumbo v2, "lineColor"

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 110
    iget v4, p0, Lcom/letv/leui/widget/LockPatternLine;->lineColor:I

    aput v4, v3, v5

    const/high16 v4, -0x7f010000

    aput v4, v3, v6

    .line 109
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 111
    .local v1, "pvColor":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    .line 112
    aput-object v1, v2, v5

    .line 111
    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 112
    const-wide/16 v4, 0xaf

    .line 111
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 113
    .local v0, "colorAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 115
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 116
    return-object v0
.end method

.method private getLineDisappearAnim(Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 7
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    const/4 v6, 0x1

    .line 86
    const-string/jumbo v2, "lineDisappear"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 88
    .local v1, "pvColor":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    .line 89
    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 88
    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 89
    const-wide/16 v4, 0xaf

    .line 88
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 90
    .local v0, "colorAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 91
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 92
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 93
    return-object v0

    .line 86
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 67
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 69
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 71
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 72
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    return-object v0
.end method

.method private getPaint2()Landroid/graphics/Paint;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 159
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 160
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 161
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 162
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 164
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 165
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    const/high16 v1, -0x7f010000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    return-object v0
.end method


# virtual methods
.method public doError()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->cancelLineAnim()V

    .line 78
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->getLineColorAnim()Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 79
    .local v1, "lineColorAnim":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 80
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 81
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 82
    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mLineErrorAnimator:Landroid/animation/AnimatorSet;

    .line 76
    return-void
.end method

.method public doLineErrorDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 172
    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    if-eqz v4, :cond_2

    .line 173
    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 174
    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mMovePoints:Ljava/util/List;

    iget v5, p0, Lcom/letv/leui/widget/LockPatternLine;->mMoveTimes:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/letv/leui/widget/LockPatternLine;->setError(Ljava/util/List;I)V

    .line 175
    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LockMovePoint;->getCurX()F

    move-result v0

    .line 176
    .local v0, "curX":F
    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LockMovePoint;->getCurY()F

    move-result v1

    .line 177
    .local v1, "curY":F
    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LockMovePoint;->getMoveX()F

    move-result v2

    .line 178
    .local v2, "moveX":F
    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LockMovePoint;->getMoveY()F

    move-result v3

    .line 179
    .local v3, "moveY":F
    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    cmpl-float v4, v0, v2

    if-nez v4, :cond_0

    move v5, v2

    :goto_0
    cmpl-float v4, v1, v3

    if-nez v4, :cond_1

    move v4, v3

    :goto_1
    invoke-virtual {v6, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 180
    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 170
    .end local v0    # "curX":F
    .end local v1    # "curY":F
    .end local v2    # "moveX":F
    .end local v3    # "moveY":F
    :goto_2
    return-void

    .line 179
    .restart local v0    # "curX":F
    .restart local v1    # "curY":F
    .restart local v2    # "moveX":F
    .restart local v3    # "moveY":F
    :cond_0
    sub-float v4, v2, v0

    iget v5, p0, Lcom/letv/leui/widget/LockPatternLine;->factorX:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v0

    move v5, v4

    goto :goto_0

    :cond_1
    sub-float v4, v3, v1

    iget v7, p0, Lcom/letv/leui/widget/LockPatternLine;->factorY:F

    mul-float/2addr v4, v7

    add-float/2addr v4, v1

    goto :goto_1

    .line 183
    .end local v0    # "curX":F
    .end local v1    # "curY":F
    .end local v2    # "moveX":F
    .end local v3    # "moveY":F
    :cond_2
    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public doNewError(Ljava/util/ArrayList;Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;)V
    .locals 3
    .param p2, "listener"    # Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/widget/LockMovePoint;",
            ">;",
            "Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "mLockMovePoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/widget/LockMovePoint;>;"
    const/4 v2, 0x0

    .line 150
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 151
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LockPatternLine;->getMoveAnim(Ljava/util/List;Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 154
    .local v0, "moveAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 155
    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    return-void
.end method

.method public drawLine(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->cancelLineAnim()V

    .line 62
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 60
    return-void
.end method

.method public endAnime()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mLineErrorAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 103
    return-void
.end method

.method public getFactorX()F
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/letv/leui/widget/LockPatternLine;->factorX:F

    return v0
.end method

.method public getFactorY()F
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/letv/leui/widget/LockPatternLine;->factorY:F

    return v0
.end method

.method public getLineAlpha()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineAlpha:F

    return v0
.end method

.method public getLineColor()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getLineDisappear()F
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineDisappear:F

    return v0
.end method

.method public getMoveAnim(Ljava/util/List;Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;)Landroid/animation/ObjectAnimator;
    .locals 8
    .param p2, "listener"    # Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/LockMovePoint;",
            ">;",
            "Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/widget/LockMovePoint;>;"
    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 188
    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternLine;->mMovePoints:Ljava/util/List;

    .line 189
    iput v7, p0, Lcom/letv/leui/widget/LockPatternLine;->mMoveTimes:I

    .line 190
    const-string/jumbo v3, "factorY"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 192
    .local v2, "pvMoveY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v3, "factorX"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 194
    .local v1, "pvMoveX":Landroid/animation/PropertyValuesHolder;
    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    .line 195
    aput-object v2, v3, v7

    aput-object v1, v3, v6

    .line 194
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 195
    const-wide/16 v4, 0xc8

    .line 194
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 196
    .local v0, "moveAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 197
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 198
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 200
    new-instance v3, Lcom/letv/leui/widget/LockPatternLine$1;

    invoke-direct {v3, p0, p2}, Lcom/letv/leui/widget/LockPatternLine$1;-><init>(Lcom/letv/leui/widget/LockPatternLine;Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 229
    return-object v0

    .line 190
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 192
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 145
    return-void
.end method

.method public resetLine()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->cancelLineAnim()V

    .line 57
    iget v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineColor:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LockPatternLine;->setLineColor(I)V

    .line 55
    return-void
.end method

.method public setError(Ljava/util/List;I)V
    .locals 6
    .param p2, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/LockMovePoint;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/widget/LockMovePoint;>;"
    move v0, p2

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 253
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/LockMovePoint;

    .line 254
    .local v2, "p":Lcom/letv/leui/widget/LockMovePoint;
    iget-object v3, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LockMovePoint;->getCurX()F

    move-result v4

    invoke-virtual {v2}, Lcom/letv/leui/widget/LockMovePoint;->getCurY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 255
    iget-object v3, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LockMovePoint;->getMoveX()F

    move-result v4

    invoke-virtual {v2}, Lcom/letv/leui/widget/LockMovePoint;->getMoveY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    .end local v2    # "p":Lcom/letv/leui/widget/LockMovePoint;
    :cond_0
    return-void
.end method

.method public setFactorX(F)V
    .locals 0
    .param p1, "factorX"    # F

    .prologue
    .line 245
    iput p1, p0, Lcom/letv/leui/widget/LockPatternLine;->factorX:F

    .line 244
    return-void
.end method

.method public setFactorY(F)V
    .locals 0
    .param p1, "factorY"    # F

    .prologue
    .line 237
    iput p1, p0, Lcom/letv/leui/widget/LockPatternLine;->factorY:F

    .line 236
    return-void
.end method

.method public setLineAlpha(F)V
    .locals 0
    .param p1, "lineAlpha"    # F

    .prologue
    .line 133
    iput p1, p0, Lcom/letv/leui/widget/LockPatternLine;->lineAlpha:F

    .line 132
    return-void
.end method

.method public setLineColor(I)V
    .locals 1
    .param p1, "lineColor"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    return-void
.end method

.method public setLineDisappear(F)V
    .locals 0
    .param p1, "lineDisappear"    # F

    .prologue
    .line 141
    iput p1, p0, Lcom/letv/leui/widget/LockPatternLine;->lineDisappear:F

    .line 140
    return-void
.end method
