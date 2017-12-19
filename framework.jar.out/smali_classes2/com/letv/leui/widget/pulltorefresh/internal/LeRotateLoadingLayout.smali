.class public Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;
.super Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;
.source "LeRotateLoadingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;,
        Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;
    }
.end annotation


# static fields
.field private static final ANGLE_MAX_SWEEP:F = -330.0f

.field private static final ANGLE_OFFSET:F = -90.0f

.field private static final ARROW_PAINT_WIDTH:F = 2.0f

.field private static final BALLNUM:I = 0x6

.field private static final BALL_RADIUS_FACTOR:F = 1.2f

.field private static final BALL_RADIUS_MAX:F = 10.0f

.field private static final BOXSIZE_COEF:F = 2.2f

.field private static final CIRCLE_PAINT_WIDTH:F = 6.0f

.field private static final DISMISS_DURATION:I = 0xfa

.field private static final DURATION_ARROW:I = 0x15e

.field private static final DURATION_ROTATE:I = 0x1f4

.field private static final HEADERIMAGE_SIZE:I = 0x64

.field private static final REFRESH_STOP_ANGLE:F = 0.0f

.field private static final START_ANGLE:F = 270.0f

.field private static final WHITE:I = -0x1


# instance fields
.field private animator:Landroid/animation/ObjectAnimator;

.field private animatorCanbeStarted:Z

.field private arrowShape:Lcom/letv/leui/widget/LeArrowShape;

.field private ballCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private ballColor:[I

.field private ballRadius:F

.field public cancelAnimator:Z

.field private colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

.field private duration:I

.field private holder:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

.field private isPullToRefresh:Z

.field private isRefreshing:Z

.field private isReleaseToRefresh:Z

.field private mAngle:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mHeaderImageMatrix:Landroid/graphics/Matrix;

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mUseCenter:Z

.field private mWidth:I

.field private paintColor:I

.field private radius:F

.field public refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

.field private relativeCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private startAngle:F

.field private stopAngle:F


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Lcom/letv/leui/widget/LeArrowShape;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->arrowShape:Lcom/letv/leui/widget/LeArrowShape;

    return-object v0
.end method

.method static synthetic -get10(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get11(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    return v0
.end method

.method static synthetic -get12(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->relativeCenters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get13(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->stopAngle:F

    return v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)[I
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    return-object v0
.end method

.method static synthetic -get4(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->holder:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    return-object v0
.end method

.method static synthetic -get5(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isRefreshing:Z

    return v0
.end method

.method static synthetic -get6(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get7(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic -get8(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic -get9(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    return v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animatorCanbeStarted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isRefreshing:Z

    return p1
.end method

.method static synthetic -set2(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;F)F
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->stopAngle:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->startDismiss()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 54
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->COLOR:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    .line 64
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->cancelAnimator:Z

    .line 65
    iput-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    .line 78
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mUseCenter:Z

    .line 79
    const/high16 v0, 0x43870000    # 270.0f

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->startAngle:F

    .line 80
    iput-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    .line 81
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isReleaseToRefresh:Z

    .line 82
    iput-boolean v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isPullToRefresh:Z

    .line 83
    iput-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 84
    iput-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    .line 92
    iput-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->arrowShape:Lcom/letv/leui/widget/LeArrowShape;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->paintColor:I

    .line 95
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isRefreshing:Z

    .line 506
    iput-boolean v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animatorCanbeStarted:Z

    .line 133
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->duration:I

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    .line 136
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->paintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 142
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    .line 143
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 144
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    invoke-direct {v0, p0, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->holder:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    .line 145
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->setImageViewLayoutParams()V

    .line 146
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->initVariable()V

    .line 129
    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        -0x12e1e0
        -0x93db3a
        -0xe54e15
        -0x752ed9
        -0x2800
        -0x7600
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;
    .param p5, "paintColor"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 123
    iput p5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->paintColor:I

    .line 124
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    return-void
.end method

.method private drawBalls()V
    .locals 6

    .prologue
    const v2, 0xffffff

    .line 387
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 388
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->WHITE:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    if-ne v1, v2, :cond_0

    .line 392
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    :goto_1
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 398
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    const v5, 0x41055555

    .line 397
    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 401
    const/4 v1, 0x0

    iput v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mAngle:F

    .line 386
    return-void
.end method

.method private drawLeArrow()V
    .locals 4

    .prologue
    .line 470
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;)V

    .line 471
    .local v0, "arrowHolder":Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;->setAngle(F)V

    .line 473
    const-string/jumbo v2, "angle"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 474
    .local v1, "drawArrowAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 475
    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 477
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 478
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->paintColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    new-instance v2, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$5;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$5;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 490
    new-instance v2, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;

    invoke-direct {v2, p0, v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 502
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 469
    return-void

    .line 473
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initAnimator()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 273
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 274
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 275
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 277
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$1;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 298
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 271
    return-void
.end method

.method private initVariable()V
    .locals 12

    .prologue
    .line 149
    const/16 v3, 0x64

    iput v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    .line 150
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    iput v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    .line 151
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    :goto_0
    int-to-float v3, v3

    const v4, 0x400ccccd    # 2.2f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->radius:F

    .line 152
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    if-lez v3, :cond_1

    .line 154
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 155
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    if-nez v3, :cond_0

    .line 156
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    .line 157
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->radius:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->radius:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->radius:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->radius:F

    add-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mRectF:Landroid/graphics/RectF;

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->arrowShape:Lcom/letv/leui/widget/LeArrowShape;

    if-nez v3, :cond_1

    .line 160
    new-instance v3, Lcom/letv/leui/widget/LeArrowShape;

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v3, v4, v5, v6}, Lcom/letv/leui/widget/LeArrowShape;-><init>(FZF)V

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->arrowShape:Lcom/letv/leui/widget/LeArrowShape;

    .line 163
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    .line 164
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->relativeCenters:Ljava/util/List;

    .line 166
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->radius:F

    const/high16 v4, 0x41200000    # 10.0f

    sub-float v0, v3, v4

    .line 167
    .local v0, "drawRadius":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x6

    if-ge v1, v3, :cond_3

    .line 168
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 169
    .local v2, "pointF":Landroid/graphics/PointF;
    float-to-double v4, v0

    int-to-float v3, v1

    .line 165
    const/high16 v6, 0x42700000    # 60.0f

    .line 169
    mul-float/2addr v3, v6

    float-to-double v6, v3

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    add-double/2addr v4, v6

    double-to-float v3, v4

    .line 170
    float-to-double v4, v0

    int-to-float v6, v1

    .line 165
    const/high16 v7, 0x42700000    # 60.0f

    .line 170
    mul-float/2addr v6, v7

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    sub-double v4, v6, v4

    double-to-float v4, v4

    .line 169
    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 171
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->relativeCenters:Ljava/util/List;

    new-instance v4, Landroid/graphics/PointF;

    float-to-double v6, v0

    int-to-float v5, v1

    .line 165
    const/high16 v8, 0x42700000    # 60.0f

    .line 172
    mul-float/2addr v5, v8

    float-to-double v8, v5

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v5, v6

    .line 173
    float-to-double v6, v0

    int-to-float v8, v1

    .line 165
    const/high16 v9, 0x42700000    # 60.0f

    .line 173
    mul-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 172
    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 151
    .end local v0    # "drawRadius":F
    .end local v1    # "i":I
    .end local v2    # "pointF":Landroid/graphics/PointF;
    :cond_2
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    goto/16 :goto_0

    .line 148
    .restart local v0    # "drawRadius":F
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method private setImageViewLayoutParams()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 115
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 116
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 118
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    return-void
.end method

.method private startDismiss()V
    .locals 4

    .prologue
    .line 315
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_1

    .line 316
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 317
    .local v0, "dismissAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 319
    new-instance v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 339
    new-instance v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$4;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$4;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 349
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 314
    .end local v0    # "dismissAnimator":Landroid/animation/ValueAnimator;
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->resetImageHeader()V

    .line 353
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    invoke-interface {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;->refreshHeaderCompleteInternal()V

    goto :goto_0

    .line 316
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startRotation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 359
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animatorCanbeStarted:Z

    if-eqz v0, :cond_1

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mAngle:F

    .line 361
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->holder:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    const-string/jumbo v1, "angle"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mAngle:F

    aput v3, v2, v5

    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mAngle:F

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->initAnimator()V

    .line 366
    iput-boolean v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animatorCanbeStarted:Z

    .line 367
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 358
    :cond_1
    return-void
.end method


# virtual methods
.method public forceRefreshingImpl()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->drawBalls()V

    .line 412
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->refreshingImpl()V

    .line 403
    return-void
.end method

.method public getAnimator()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public getBallColor()[I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    return-object v0
.end method

.method public getColorStyle()Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->duration:I

    return v0
.end method

.method protected onPullImpl(F)V
    .locals 14
    .param p1, "scaleOfLayout"    # F

    .prologue
    const/4 v13, -0x1

    const/high16 v12, 0x41200000    # 10.0f

    const v11, 0x3f99999a    # 1.2f

    const v10, 0x3f555555

    const/4 v9, 0x0

    .line 200
    move v1, p1

    .line 201
    .local v1, "scale":F
    iget-boolean v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isPullToRefresh:Z

    if-eqz v4, :cond_5

    .line 202
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    const v5, 0xffffff

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 203
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    const v5, 0xffffff

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 204
    const v4, 0x3fa66666    # 1.3f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 205
    const v1, 0x3fa66666    # 1.3f

    .line 207
    :cond_0
    const v4, 0x3e99999a    # 0.3f

    sub-float v4, v1, v4

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float v1, v4, v5

    .line 209
    cmpl-float v4, v1, v9

    if-lez v4, :cond_9

    .line 211
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 212
    .local v2, "scale_int":I
    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    .line 213
    const/4 v2, 0x5

    .line 215
    :cond_1
    int-to-float v4, v2

    sub-float v3, v1, v4

    .line 216
    .local v3, "scale_offset":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 217
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->WHITE:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    if-ne v4, v5, :cond_2

    .line 218
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    :goto_1
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 225
    iget-object v7, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    const v8, 0x41055555

    .line 224
    invoke-virtual {v5, v6, v4, v8, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_2
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 228
    :cond_3
    cmpl-float v4, v3, v9

    if-eqz v4, :cond_4

    .line 229
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->WHITE:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    if-ne v4, v5, :cond_7

    .line 230
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    :goto_2
    cmpg-float v4, v3, v10

    if-gez v4, :cond_8

    .line 236
    mul-float v4, v11, v3

    mul-float/2addr v4, v12

    iput v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballRadius:F

    .line 240
    :goto_3
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballRadius:F

    iget-object v8, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 244
    :cond_4
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 255
    .end local v0    # "i":I
    .end local v2    # "scale_int":I
    .end local v3    # "scale_offset":F
    :goto_4
    iget-boolean v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isRefreshing:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_5

    .line 256
    iget-boolean v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animatorCanbeStarted:Z

    if-nez v4, :cond_5

    .line 257
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->cancelAnimator:Z

    .line 261
    :cond_5
    iget-boolean v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isReleaseToRefresh:Z

    if-eqz v4, :cond_6

    .line 265
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->startRotation()V

    .line 199
    :cond_6
    return-void

    .line 232
    .restart local v0    # "i":I
    .restart local v2    # "scale_int":I
    .restart local v3    # "scale_offset":F
    :cond_7
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 238
    :cond_8
    mul-float v4, v11, v3

    sub-float v5, v3, v10

    const v6, 0x4019999a    # 2.4f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v4, v12

    iput v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballRadius:F

    goto :goto_3

    .line 246
    .end local v0    # "i":I
    .end local v2    # "scale_int":I
    .end local v3    # "scale_offset":F
    :cond_9
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4
.end method

.method protected pullToRefreshImpl()V
    .locals 2

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isPullToRefresh:Z

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isReleaseToRefresh:Z

    .line 375
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 377
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected refreshingImpl()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isRefreshing:Z

    .line 418
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->startRotation()V

    .line 416
    return-void
.end method

.method protected releaseToRefreshImpl()V
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isReleaseToRefresh:Z

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isPullToRefresh:Z

    .line 525
    return-void
.end method

.method public resetImageHeader()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 517
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isPullToRefresh:Z

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isReleaseToRefresh:Z

    .line 519
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animatorCanbeStarted:Z

    .line 520
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mAngle:F

    .line 516
    return-void
.end method

.method protected resetImpl()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 508
    :cond_0
    return-void
.end method

.method public setBallColor(II)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "pos"    # I

    .prologue
    .line 40
    if-ltz p2, :cond_0

    const/4 v0, 0x6

    if-le p2, v0, :cond_1

    .line 41
    :cond_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    aput p1, v0, p2

    .line 39
    return-void
.end method

.method public setBallColor([I)V
    .locals 2
    .param p1, "ballColor"    # [I

    .prologue
    .line 34
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 35
    :cond_0
    return-void

    .line 37
    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    .line 33
    return-void
.end method

.method public setColorStyle(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;)V
    .locals 0
    .param p1, "colorStyle"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    .line 46
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->duration:I

    .line 111
    return-void
.end method

.method public setPaintColor(I)V
    .locals 1
    .param p1, "paintColor"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->paintColor:I

    .line 102
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    :cond_0
    return-void
.end method

.method public setRefreshCompletedListener(Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    .line 97
    return-void
.end method
