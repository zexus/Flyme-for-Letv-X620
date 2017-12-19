.class public Lcom/letv/leui/widget/BallsLoadingProgressBar;
.super Landroid/view/View;
.source "BallsLoadingProgressBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/BallsLoadingProgressBar$EmptyAnimatorListener;,
        Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;,
        Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;
    }
.end annotation


# instance fields
.field private bounceAnim:Landroid/animation/Animator;

.field private mAnimators:[Landroid/animation/ObjectAnimator;

.field private mBallColor:I

.field private mBallDistance:F

.field private mBallExpandRadius:F

.field private mBallNormalRadius:F

.field private mBalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/widget/BallsLoadingShapeHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mDuration:I

.field private mGravity:I

.field private mIsAnimLoading:Z

.field private mIsFinish:Z

.field private mIsFirstRun:Z

.field private mProcessBarListener:Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

.field private mSumWidth:F


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/BallsLoadingProgressBar;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    return v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFinish:Z

    return v0
.end method

.method static synthetic -get4(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mProcessBarListener:Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/BallsLoadingProgressBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsAnimLoading:Z

    return p1
.end method

.method static synthetic -set1(Lcom/letv/leui/widget/BallsLoadingProgressBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFinish:Z

    return p1
.end method

.method static synthetic -set2(Lcom/letv/leui/widget/BallsLoadingProgressBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFirstRun:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->createAnimStep2()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->createEndAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x5

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    .line 23
    const v0, -0xaf509b

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallColor:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mCount:I

    .line 24
    const/high16 v0, 0x42100000    # 36.0f

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    const/high16 v0, 0x42900000    # 72.0f

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallExpandRadius:F

    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallDistance:F

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFirstRun:Z

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mGravity:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v8, 0x12c

    const/4 v3, 0x1

    const v2, -0xaf509b

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    .line 23
    iput v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallColor:I

    iput v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    iput v7, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mCount:I

    .line 24
    const/high16 v1, 0x42100000    # 36.0f

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    const/high16 v1, 0x42900000    # 72.0f

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallExpandRadius:F

    const/high16 v1, 0x42a00000    # 80.0f

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallDistance:F

    .line 25
    iput-boolean v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFirstRun:Z

    .line 27
    iput v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mGravity:I

    .line 47
    sget-object v1, Lcom/android/internal/R$styleable;->BallsLoadingProgressBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallColor:I

    .line 49
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    .line 50
    iget v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallExpandRadius:F

    .line 51
    iget v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    mul-double/2addr v2, v4

    double-to-int v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallDistance:F

    .line 52
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mCount:I

    .line 53
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    .line 54
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mGravity:I

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    invoke-direct {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->initBall()V

    .line 45
    return-void
.end method

.method private addBall(FF)Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 68
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 69
    .local v0, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    iget v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 70
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 71
    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-direct {v3, v1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 72
    .local v3, "shapeHolder":Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    invoke-virtual {v3, p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setX(F)V

    .line 73
    invoke-virtual {v3, p2}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setY(F)V

    .line 74
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 75
    .local v2, "paint":Landroid/graphics/Paint;
    iget v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    invoke-virtual {v3, v2}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    .line 77
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 78
    return-object v3
.end method

.method private createAnimStep2()V
    .locals 5

    .prologue
    .line 127
    iget-boolean v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFirstRun:Z

    if-eqz v3, :cond_1

    .line 128
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFirstRun:Z

    .line 129
    iget-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/animation/ObjectAnimator;

    iput-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 132
    iget-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-direct {p0, v3, v1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->setExpandAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 133
    .local v0, "expandAnimation":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    aput-object v0, v3, v1

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "expandAnimation":Landroid/animation/ObjectAnimator;
    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    .line 137
    iget-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    new-instance v4, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;

    invoke-direct {v4, p0, p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;-><init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    iget-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    check-cast v3, Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 126
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_1
    return-void
.end method

.method private createBeginAnimation()V
    .locals 6

    .prologue
    .line 82
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    if-nez v4, :cond_2

    .line 83
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/animation/ObjectAnimator;

    iput-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    .line 84
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Landroid/animation/ObjectAnimator;

    .line 86
    .local v3, "shrinkAnims":[Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 88
    iget-object v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-direct {p0, v4, v1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getZero2DoubleAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v5, v1

    .line 90
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-direct {p0, v4, v1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getDouble2NormalAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    array-length v2, v4

    :goto_1
    if-ge v1, v2, :cond_1

    .line 93
    move v0, v1

    .line 94
    .local v0, "finalI":I
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v4, v4, v1

    new-instance v5, Lcom/letv/leui/widget/BallsLoadingProgressBar$1;

    invoke-direct {v5, p0, p0, v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar$1;-><init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;Lcom/letv/leui/widget/BallsLoadingProgressBar;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    .end local v0    # "finalI":I
    :cond_1
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    .line 105
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    new-instance v5, Lcom/letv/leui/widget/BallsLoadingProgressBar$2;

    invoke-direct {v5, p0, p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar$2;-><init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 120
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    array-length v2, v4

    :goto_2
    if-ge v1, v2, :cond_2

    .line 121
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    check-cast v4, Landroid/animation/AnimatorSet;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 81
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "shrinkAnims":[Landroid/animation/ObjectAnimator;
    :cond_2
    return-void
.end method

.method private createEndAnim()V
    .locals 6

    .prologue
    .line 154
    iget-boolean v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFinish:Z

    if-eqz v4, :cond_2

    .line 155
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/animation/ObjectAnimator;

    iput-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    .line 156
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Landroid/animation/ObjectAnimator;

    .line 157
    .local v3, "normal2DoubleAnims":[Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 159
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-direct {p0, v4, v1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getNormal2DoubleAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    .line 161
    iget-object v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-direct {p0, v4, v1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getDouble2ZeroAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v5, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_0
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    array-length v2, v4

    :goto_1
    if-ge v1, v2, :cond_1

    .line 164
    move v0, v1

    .line 165
    .local v0, "finalI":I
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v4, v4, v1

    new-instance v5, Lcom/letv/leui/widget/BallsLoadingProgressBar$4;

    invoke-direct {v5, p0, p0, v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar$4;-><init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;Lcom/letv/leui/widget/BallsLoadingProgressBar;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 175
    .end local v0    # "finalI":I
    :cond_1
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    .line 176
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    new-instance v5, Lcom/letv/leui/widget/BallsLoadingProgressBar$5;

    invoke-direct {v5, p0, p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar$5;-><init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    array-length v2, v4

    :goto_2
    if-ge v1, v2, :cond_2

    .line 195
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    check-cast v4, Landroid/animation/AnimatorSet;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 153
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "normal2DoubleAnims":[Landroid/animation/ObjectAnimator;
    :cond_2
    return-void
.end method

.method private getDouble2NormalAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .param p2, "orderId"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 264
    const-string/jumbo v5, "width"

    new-array v6, v11, [F

    .line 265
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    mul-float/2addr v7, v12

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    aput v7, v6, v10

    .line 264
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 266
    .local v4, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "height"

    new-array v6, v11, [F

    .line 267
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    mul-float/2addr v7, v12

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    aput v7, v6, v10

    .line 266
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 268
    .local v3, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "x"

    new-array v6, v11, [F

    .line 269
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    aput v7, v6, v10

    .line 268
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 270
    .local v1, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "y"

    new-array v6, v11, [F

    .line 271
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    aput v7, v6, v10

    .line 270
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 272
    .local v2, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    .line 273
    aput-object v4, v5, v9

    aput-object v3, v5, v10

    aput-object v1, v5, v11

    const/4 v6, 0x3

    aput-object v2, v5, v6

    .line 272
    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 273
    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    .line 272
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 274
    .local v0, "d2nAnim":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 275
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 276
    return-object v0
.end method

.method private getDouble2ZeroAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .param p2, "orderId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 245
    const-string/jumbo v5, "width"

    new-array v6, v12, [F

    .line 246
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    mul-float/2addr v7, v9

    aput v7, v6, v10

    aput v8, v6, v11

    .line 245
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 247
    .local v4, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "height"

    new-array v6, v12, [F

    .line 248
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    mul-float/2addr v7, v9

    aput v7, v6, v10

    aput v8, v6, v11

    .line 247
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 249
    .local v3, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "x"

    new-array v6, v12, [F

    .line 250
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    aput v7, v6, v10

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v11

    .line 249
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 251
    .local v1, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "y"

    new-array v6, v12, [F

    .line 252
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    aput v7, v6, v10

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v11

    .line 251
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 253
    .local v2, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    .line 254
    aput-object v4, v5, v10

    aput-object v3, v5, v11

    aput-object v1, v5, v12

    const/4 v6, 0x3

    aput-object v2, v5, v6

    .line 253
    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 254
    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    .line 253
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 255
    .local v0, "d2zAnim":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 257
    return-object v0
.end method

.method private getNormal2DoubleAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .param p2, "orderId"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 283
    const-string/jumbo v5, "width"

    new-array v6, v11, [F

    .line 284
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    mul-float/2addr v7, v12

    aput v7, v6, v10

    .line 283
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 285
    .local v4, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "height"

    new-array v6, v11, [F

    .line 286
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    mul-float/2addr v7, v12

    aput v7, v6, v10

    .line 285
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 287
    .local v3, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "x"

    new-array v6, v11, [F

    .line 288
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    aput v7, v6, v10

    .line 287
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 289
    .local v1, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "y"

    new-array v6, v11, [F

    .line 290
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    aput v7, v6, v10

    .line 289
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 291
    .local v2, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    .line 292
    aput-object v4, v5, v9

    aput-object v3, v5, v10

    aput-object v1, v5, v11

    const/4 v6, 0x3

    aput-object v2, v5, v6

    .line 291
    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 292
    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    .line 291
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 293
    .local v0, "n2dAnim":Landroid/animation/ObjectAnimator;
    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    mul-int/2addr v5, p2

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 294
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 295
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 296
    return-object v0
.end method

.method private getZero2DoubleAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .param p2, "orderId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 225
    const-string/jumbo v5, "width"

    new-array v6, v12, [F

    .line 226
    aput v8, v6, v10

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    mul-float/2addr v7, v9

    aput v7, v6, v11

    .line 225
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 227
    .local v3, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "height"

    new-array v6, v12, [F

    .line 228
    aput v8, v6, v10

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    mul-float/2addr v7, v9

    aput v7, v6, v11

    .line 227
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 229
    .local v2, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "x"

    new-array v6, v12, [F

    .line 230
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v10

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    aput v7, v6, v11

    .line 229
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 231
    .local v0, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "y"

    new-array v6, v12, [F

    .line 232
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v10

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    aput v7, v6, v11

    .line 231
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 233
    .local v1, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    .line 234
    aput-object v3, v5, v10

    aput-object v2, v5, v11

    aput-object v0, v5, v12

    const/4 v6, 0x3

    aput-object v1, v5, v6

    .line 233
    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 234
    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    .line 233
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 235
    .local v4, "z2dAnim":Landroid/animation/ObjectAnimator;
    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    mul-int/2addr v5, p2

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 236
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 237
    invoke-virtual {v4, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 238
    return-object v4
.end method

.method private getZero2Normal(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .param p2, "orderId"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 205
    const-string/jumbo v5, "width"

    new-array v6, v11, [F

    .line 206
    aput v8, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    aput v7, v6, v10

    .line 205
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 207
    .local v3, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "height"

    new-array v6, v11, [F

    .line 208
    aput v8, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    aput v7, v6, v10

    .line 207
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 209
    .local v2, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "x"

    new-array v6, v11, [F

    .line 210
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    add-float/2addr v7, v8

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    aput v7, v6, v10

    .line 209
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 211
    .local v0, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "y"

    new-array v6, v11, [F

    .line 212
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    add-float/2addr v7, v8

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    aput v7, v6, v10

    .line 211
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 213
    .local v1, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    .line 214
    aput-object v3, v5, v9

    aput-object v2, v5, v10

    aput-object v0, v5, v11

    const/4 v6, 0x3

    aput-object v1, v5, v6

    .line 213
    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 214
    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    .line 213
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 215
    .local v4, "z2nAnim":Landroid/animation/ObjectAnimator;
    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v5, v5, 0x2

    mul-int/2addr v5, p2

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 216
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 217
    invoke-virtual {v4, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    return-object v4
.end method

.method private initBall()V
    .locals 4

    .prologue
    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mCount:I

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    int-to-float v2, v0

    iget v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallDistance:F

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->addBall(FF)Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-virtual {v1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallExpandRadius:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mSumWidth:F

    .line 60
    return-void
.end method

.method private initParams()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFinish:Z

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsAnimLoading:Z

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    .line 331
    return-void
.end method

.method private measureHeight(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 416
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 417
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 419
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 420
    move v0, v2

    .line 429
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 422
    .end local v0    # "result":I
    :cond_1
    iget v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallExpandRadius:F

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    .line 423
    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getPaddingBottom()I

    move-result v4

    .line 422
    add-int v0, v3, v4

    .line 424
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 426
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 391
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 392
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 394
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 395
    move v0, v2

    .line 405
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 397
    .end local v0    # "result":I
    :cond_1
    iget v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mSumWidth:F

    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 398
    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    .line 397
    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 399
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 401
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private setExpandAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .param p2, "orderId"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 300
    const-string/jumbo v5, "width"

    new-array v6, v10, [F

    .line 301
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    aput v7, v6, v11

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    mul-float/2addr v7, v12

    aput v7, v6, v9

    .line 300
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 302
    .local v4, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "height"

    new-array v6, v10, [F

    .line 303
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    aput v7, v6, v11

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    mul-float/2addr v7, v12

    aput v7, v6, v9

    .line 302
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 304
    .local v3, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "x"

    new-array v6, v10, [F

    .line 305
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    aput v7, v6, v11

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    aput v7, v6, v9

    .line 304
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 306
    .local v1, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "y"

    new-array v6, v10, [F

    .line 307
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    aput v7, v6, v11

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    aput v7, v6, v9

    .line 306
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 308
    .local v2, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    .line 309
    aput-object v4, v5, v11

    aput-object v3, v5, v9

    aput-object v1, v5, v10

    const/4 v6, 0x3

    aput-object v2, v5, v6

    .line 308
    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 309
    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    .line 308
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 310
    .local v0, "expandAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 311
    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 312
    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v5, v5, 0x2

    mul-int/2addr v5, p2

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 313
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 314
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 315
    return-object v0
.end method


# virtual methods
.method public addAnimProcessBarListener(Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mProcessBarListener:Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

    .line 477
    return-void
.end method

.method public cancleAnimProcessBarListener(Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

    .prologue
    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mProcessBarListener:Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

    .line 481
    return-void
.end method

.method public getBallColor()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallColor:I

    return v0
.end method

.method public getBallDistance()F
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallDistance:F

    return v0
.end method

.method public getBallNormalRadius()F
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mCount:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mGravity:I

    return v0
.end method

.method public initAnimProcessBar()V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->initBall()V

    .line 473
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsAnimLoading:Z

    return v0
.end method

.method public loadFinish()V
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsAnimLoading:Z

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFinish:Z

    .line 340
    :cond_0
    return-void
.end method

.method public loadStart()V
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsAnimLoading:Z

    if-eqz v0, :cond_0

    .line 324
    return-void

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->initParams()V

    .line 327
    invoke-direct {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->createBeginAnimation()V

    .line 328
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 321
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->invalidate()V

    .line 486
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 353
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 354
    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float v2, v5, v7

    .line 355
    .local v2, "heighoff":F
    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float v4, v5, v7

    .line 356
    .local v4, "wightoff":F
    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float v3, v5, v7

    .line 357
    .local v3, "offset":F
    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mGravity:I

    packed-switch v5, :pswitch_data_0

    .line 372
    :goto_0
    iget-object v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ball$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    .line 373
    .local v0, "ball":Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v5

    add-float/2addr v5, v4

    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v6

    add-float/2addr v6, v2

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 374
    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 375
    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v5

    neg-float v5, v5

    sub-float/2addr v5, v4

    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v6

    neg-float v6, v6

    sub-float/2addr v6, v2

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 359
    .end local v0    # "ball":Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .end local v1    # "ball$iterator":Ljava/util/Iterator;
    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v6, v7

    sub-float v2, v5, v6

    .line 360
    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mSumWidth:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    add-float v4, v5, v3

    goto :goto_0

    .line 364
    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v6, v7

    sub-float v2, v5, v6

    goto :goto_0

    .line 368
    :pswitch_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mSumWidth:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    add-float v4, v5, v3

    goto :goto_0

    .line 352
    .restart local v1    # "ball$iterator":Ljava/util/Iterator;
    :cond_0
    return-void

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->measureWidth(I)I

    move-result v0

    .line 385
    invoke-direct {p0, p2}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->measureHeight(I)I

    move-result v1

    .line 384
    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->setMeasuredDimension(II)V

    .line 383
    return-void
.end method

.method public setBallColor(I)V
    .locals 0
    .param p1, "ballColor"    # I

    .prologue
    .line 437
    iput p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallColor:I

    .line 436
    return-void
.end method

.method public setBallDistance(F)V
    .locals 0
    .param p1, "ballDistance"    # F

    .prologue
    .line 470
    iput p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallDistance:F

    .line 469
    return-void
.end method

.method public setBallNormalRadius(F)V
    .locals 1
    .param p1, "ballNormalRadius"    # F

    .prologue
    .line 461
    iput p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    .line 462
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallExpandRadius:F

    .line 460
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 453
    iput p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mCount:I

    .line 452
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 445
    iput p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    .line 444
    return-void
.end method

.method public setGravity(Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;)V
    .locals 1
    .param p1, "gravity"    # Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    .prologue
    .line 495
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mGravity:I

    .line 494
    return-void
.end method
