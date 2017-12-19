.class public Lcom/android/server/policy/global/GlobalActionHostView;
.super Landroid/widget/FrameLayout;
.source "GlobalActionHostView.java"

# interfaces
.implements Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;
.implements Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/global/GlobalActionHostView$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final HIDE_TIME:J = 0x1f4L

.field public static final REBOOT_TIME:J = 0x12cL

.field public static final SHOW_TIME:J = 0x1f4L

.field public static final SHUTDOWN_TIME:J = 0x190L

.field private static TAG:Ljava/lang/String; = null

.field public static final TIME_REBOOT_CANCEL:J = 0x320L


# instance fields
.field private isRebootOrShutdown:Z

.field private isRebootPending:Z

.field private mAnimatorObjectCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

.field private mCancelView:Lcom/android/server/policy/global/CancelButton;

.field private mClick:Landroid/view/View$OnClickListener;

.field private mColorP0:I

.field private mColorP1:I

.field private mColorP2:I

.field private mColorP3:I

.field private mColorP4:I

.field private mColorP5:I

.field private mConverAlpha:I

.field private mConverColor:I

.field private mCoverPaint:Landroid/graphics/Paint;

.field private mFillPaint:Landroid/graphics/Paint;

.field private mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

.field private mInitConverAlpha:I

.field private mLocked:Z

.field protected mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

.field private mP0:F

.field private mP1:F

.field private mP2:F

.field private mP3:F

.field private mP4:F

.field private mP5:F

.field private mPositionFactor:F

.field private mRebootView:Lcom/android/server/policy/global/RebootButton;

.field private mRect:Landroid/graphics/Rect;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSwipeHelper:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

.field private mX0:F

.field private mX1:F

.field private mY0:F

.field private mY1:F


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/global/GlobalActionHostView;)Lcom/android/server/policy/global/CancelButton;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/global/GlobalActionHostView;)Lcom/android/server/policy/global/RebootButton;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/global/GlobalActionHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->cancel()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/global/GlobalActionHostView;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "animationListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionHostView;->reboot(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "GlobalAction"

    sput-object v0, Lcom/android/server/policy/global/GlobalActionHostView;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x64

    const/high16 v4, 0x3f000000    # 0.5f

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mPositionFactor:F

    .line 54
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverColor:I

    .line 55
    iput v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mInitConverAlpha:I

    .line 56
    iput v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverAlpha:I

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRect:Landroid/graphics/Rect;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mFillPaint:Landroid/graphics/Paint;

    .line 61
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    .line 62
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    .line 64
    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootPending:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootOrShutdown:Z

    .line 183
    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mX0:F

    .line 184
    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mY0:F

    .line 185
    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mX1:F

    .line 186
    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mY1:F

    .line 189
    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP0:I

    .line 190
    const/16 v0, 0xe1

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP1:I

    .line 191
    invoke-static {v5, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP2:I

    .line 192
    const/16 v0, 0x50

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP3:I

    .line 193
    invoke-static {v5, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP4:I

    .line 194
    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP5:I

    .line 197
    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP0:F

    .line 198
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP1:F

    .line 199
    iput v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP2:F

    .line 200
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP3:F

    .line 201
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP4:F

    .line 202
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP5:F

    .line 379
    new-instance v0, Lcom/android/server/policy/global/GlobalActionHostView$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionHostView$1;-><init>(Lcom/android/server/policy/global/GlobalActionHostView;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mClick:Landroid/view/View$OnClickListener;

    .line 75
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->initView()V

    .line 73
    return-void
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v0}, Lcom/android/server/policy/global/RebootButton;->cancel()V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v0}, Lcom/android/server/policy/global/CancelButton;->cancel()V

    .line 374
    :cond_1
    return-void
.end method

.method private drawConver(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 258
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 253
    return-void
.end method

.method private drawGradient(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v9, v9, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 216
    iget-object v8, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mFillPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    .line 217
    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mX0:F

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mY0:F

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mX1:F

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mY1:F

    .line 218
    const/4 v5, 0x6

    new-array v5, v5, [I

    iget v6, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP0:I

    aput v6, v5, v9

    iget v6, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP1:I

    aput v6, v5, v10

    iget v6, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP2:I

    aput v6, v5, v11

    iget v6, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP3:I

    aput v6, v5, v12

    iget v6, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP4:I

    aput v6, v5, v13

    iget v6, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP5:I

    const/4 v7, 0x5

    aput v6, v5, v7

    .line 219
    const/4 v6, 0x6

    new-array v6, v6, [F

    iget v7, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP0:F

    aput v7, v6, v9

    iget v7, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP1:F

    aput v7, v6, v10

    iget v7, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP2:F

    aput v7, v6, v11

    iget v7, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP3:F

    aput v7, v6, v12

    iget v7, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP4:F

    aput v7, v6, v13

    iget v7, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP5:F

    const/4 v9, 0x5

    aput v7, v6, v9

    .line 220
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 216
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 222
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 213
    return-void
.end method

.method private getDix(I)I
    .locals 1
    .param p1, "dimen"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getHandlerViewBottom()I
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mPositionFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initCoverPen()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 102
    return-void
.end method

.method private initShader()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mFillPaint:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mFillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    .line 80
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    .line 81
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->refreshScreenParams()V

    .line 83
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 84
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 85
    .local v1, "pagingTouchSlop":F
    new-instance v2, Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;-><init>(ILcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mSwipeHelper:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    .line 87
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060149

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverColor:I

    .line 89
    iget v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverColor:I

    shr-int/lit8 v2, v2, 0x18

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverAlpha:I

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mInitConverAlpha:I

    .line 91
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->initShader()V

    .line 93
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->initCoverPen()V

    .line 78
    return-void
.end method

.method private reboot(Landroid/animation/Animator$AnimatorListener;)V
    .locals 6
    .param p1, "animationListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v5, 0x1

    .line 332
    iput-boolean v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootPending:Z

    .line 334
    const-string/jumbo v1, "converAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverAlpha:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0xff

    aput v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 335
    .local v0, "objectAni":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 336
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 337
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 339
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 341
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->shutDown()V

    .line 343
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v1}, Lcom/android/server/policy/global/RebootButton;->reBoot()V

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v1}, Lcom/android/server/policy/global/CancelButton;->reBoot()V

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->stopMarquee()V

    .line 331
    return-void
.end method

.method private refreshScreenParams()V
    .locals 3

    .prologue
    .line 119
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    .line 120
    .local v0, "temp":I
    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    if-ge v1, v2, :cond_0

    .line 121
    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    iput v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    .line 122
    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public canSwipeToBottom()Z
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 425
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/RebootButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/CancelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/policy/global/GlobalActionHostView;->setAnimatorObjectCallback(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)V

    .line 423
    return-void
.end method

.method public destroyMarquee()V
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mLocked:Z

    if-eqz v0, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->destroyMarquee()V

    .line 267
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionHostView;->drawConver(Landroid/graphics/Canvas;)V

    .line 433
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionHostView;->drawGradient(Landroid/graphics/Canvas;)V

    .line 434
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 431
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 595
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    .line 597
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 598
    const/high16 v0, 0x400000

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionHostView;->setSystemUiVisibility(I)V

    .line 594
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 439
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootOrShutdown:Z

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lcom/android/server/policy/global/GlobalActionHostView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "host onInterceptTouchEvent is reboot or shutdown ok..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return v3

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mAnimatorObjectCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 445
    :cond_1
    sget-object v0, Lcom/android/server/policy/global/GlobalActionHostView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "host dispatchTouchEvent, mAnimatorObjectCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mAnimatorObjectCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return v3

    .line 449
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootPending:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 450
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->stopMarquee()V

    .line 456
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 451
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 452
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 454
    :cond_6
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/server/policy/global/GlobalActionHostView;->startMarquee(Z)V

    goto :goto_0

    .line 453
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    goto :goto_1
.end method

.method public getAnimatorObject()Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mAnimatorObjectCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    return-object v0
.end method

.method public getHostHeight()I
    .locals 1

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getThreshold()I
    .locals 3

    .prologue
    .line 579
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v1}, Lcom/android/server/policy/global/CancelButton;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v2}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getInitBottom()I

    move-result v2

    sub-int v0, v1, v2

    .line 581
    .local v0, "dis":I
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v1}, Lcom/android/server/policy/global/CancelButton;->getTop()I

    move-result v1

    div-int/lit8 v2, v0, 0xa

    sub-int/2addr v1, v2

    return v1

    .line 583
    .end local v0    # "dis":I
    :cond_0
    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v2}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getInitBottom()I

    move-result v2

    sub-int v0, v1, v2

    .line 584
    .restart local v0    # "dis":I
    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    div-int/lit8 v2, v0, 0xa

    sub-int/2addr v1, v2

    return v1
.end method

.method public hidden(Landroid/animation/Animator$AnimatorListener;)V
    .locals 6
    .param p1, "animationListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 308
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/global/RebootButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/global/CancelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    :cond_1
    const-string/jumbo v1, "gradientLength"

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    mul-int/lit8 v3, v3, 0x6

    aput v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 312
    .local v0, "objectAni":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 313
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 314
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 318
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v1, v5}, Lcom/android/server/policy/global/GlobalActionHandlerView;->hide(Z)V

    .line 321
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v1, v5}, Lcom/android/server/policy/global/RebootButton;->hide(Z)V

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v1, v5}, Lcom/android/server/policy/global/CancelButton;->hide(Z)V

    .line 324
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->stopMarquee()V

    .line 306
    return-void
.end method

.method public hintCancelRect(FF)Z
    .locals 1
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public hintSwipeRect(FF)Z
    .locals 6
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    const/4 v5, 0x1

    .line 515
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 516
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionHostView;->getLocationInWindow([I)V

    .line 517
    aget v2, v0, v5

    .line 519
    .local v2, "startY":I
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v3, v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getLocationInWindow([I)V

    .line 521
    aget v3, v0, v5

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v4}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 522
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getMeasuredHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0x9

    add-int/2addr v4, v2

    .line 520
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 523
    .local v1, "minEndY":I
    int-to-float v3, v2

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    int-to-float v3, v1

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    .line 524
    return v5

    .line 525
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public installHost(Z)V
    .locals 8
    .param p1, "isLocked"    # Z

    .prologue
    const v7, 0x10501dc

    const v6, 0x10501db

    .line 140
    iput-boolean p1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mLocked:Z

    .line 141
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-nez v4, :cond_0

    .line 142
    const/4 v2, 0x0

    .line 145
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Lcom/android/server/policy/global/RebootButton;

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/policy/global/RebootButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    .line 146
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    const v5, 0x104060d

    invoke-virtual {v4, v5}, Lcom/android/server/policy/global/RebootButton;->setCustomerText(I)V

    .line 147
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v4}, Lcom/android/server/policy/global/RebootButton;->getBottomBarWidth()I

    move-result v0

    .line 148
    .local v0, "calendWidth":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 149
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0, v6}, Lcom/android/server/policy/global/GlobalActionHostView;->getDix(I)I

    move-result v4

    .line 150
    const/16 v5, 0x53

    .line 148
    invoke-direct {v2, v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 151
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0, v7}, Lcom/android/server/policy/global/GlobalActionHostView;->getDix(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 152
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    div-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v0, v5}, Lcom/android/server/policy/global/RebootButton;->getMargin(II)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 153
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {p0, v4, v2}, Lcom/android/server/policy/global/GlobalActionHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance v4, Lcom/android/server/policy/global/CancelButton;

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/policy/global/CancelButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    .line 157
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    const v5, 0x104060e

    invoke-virtual {v4, v5}, Lcom/android/server/policy/global/CancelButton;->setCustomerText(I)V

    .line 158
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v4}, Lcom/android/server/policy/global/CancelButton;->getBottomBarWidth()I

    move-result v0

    .line 159
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 160
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0, v6}, Lcom/android/server/policy/global/GlobalActionHostView;->getDix(I)I

    move-result v4

    .line 161
    const/16 v5, 0x55

    .line 159
    invoke-direct {v2, v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 162
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0, v7}, Lcom/android/server/policy/global/GlobalActionHostView;->getDix(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 163
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    div-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v0, v5}, Lcom/android/server/policy/global/CancelButton;->getMargin(II)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 164
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {p0, v4, v2}, Lcom/android/server/policy/global/GlobalActionHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v4, Lcom/android/server/policy/global/GlobalActionHandlerView;

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mLocked:Z

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/global/GlobalActionHandlerView;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    .line 168
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getHandlerViewBottom()I

    move-result v1

    .line 169
    .local v1, "initHandlerViewBottom":I
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v4}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getRegionHeight()I

    move-result v3

    .line 170
    .local v3, "regionHeight":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, -0x1

    const/16 v5, 0x31

    invoke-direct {v2, v4, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 171
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    sub-int v4, v1, v3

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 172
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v4, v1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->setInitBottom(I)V

    .line 173
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {p0, v4, v2}, Lcom/android/server/policy/global/GlobalActionHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v4}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getGlobalActionAnimatorCallback()Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/policy/global/GlobalActionHostView;->setAnimatorObjectCallback(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)V

    .line 176
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v4, p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->setHostViewCallback(Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;)V

    .line 178
    const/4 v2, 0x0

    .line 139
    .end local v0    # "calendWidth":I
    .end local v1    # "initHandlerViewBottom":I
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "regionHeight":I
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->destroyMarquee()V

    .line 264
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 262
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 464
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootOrShutdown:Z

    if-eqz v1, :cond_0

    .line 465
    sget-object v1, Lcom/android/server/policy/global/GlobalActionHostView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "host onInterceptTouchEvent is reboot or shutdown ok..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return v0

    .line 469
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootPending:Z

    if-eqz v1, :cond_2

    .line 470
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->stopMarquee()V

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-interface {v1}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->hiddenWindow()V

    .line 473
    :cond_1
    return v0

    .line 476
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mAnimatorObjectCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_4

    .line 477
    :cond_3
    sget-object v1, Lcom/android/server/policy/global/GlobalActionHostView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "host onInterceptTouchEvent, mAnimatorObjectCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mAnimatorObjectCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return v0

    .line 481
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mLocked:Z

    if-eqz v1, :cond_5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 483
    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mSwipeHelper:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_6
    return v0
.end method

.method public onRebootOrShutdown(Z)V
    .locals 3
    .param p1, "reboot"    # Z

    .prologue
    .line 619
    sget-object v0, Lcom/android/server/policy/global/GlobalActionHostView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "host onRebootOrShutdown reboot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootOrShutdown:Z

    .line 618
    return-void
.end method

.method public onSwapToBottom()V
    .locals 1

    .prologue
    .line 548
    new-instance v0, Lcom/android/server/policy/global/GlobalActionHostView$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionHostView$2;-><init>(Lcom/android/server/policy/global/GlobalActionHostView;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionHostView;->reBoot(Landroid/animation/Animator$AnimatorListener;)V

    .line 547
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 488
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootOrShutdown:Z

    if-eqz v1, :cond_0

    .line 489
    sget-object v1, Lcom/android/server/policy/global/GlobalActionHostView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "host onTouchEvent is reboot or shutdown ok..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return v0

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-interface {v1}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->userActivity()V

    .line 494
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mLocked:Z

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 495
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mSwipeHelper:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public reBoot(Landroid/animation/Animator$AnimatorListener;)V
    .locals 6
    .param p1, "animationListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v5, 0x1

    .line 351
    iput-boolean v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootPending:Z

    .line 353
    const-string/jumbo v1, "converAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverAlpha:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0xff

    aput v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 354
    .local v0, "objectAni":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 355
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 356
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 358
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 360
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->reBoot()V

    .line 364
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v1}, Lcom/android/server/policy/global/RebootButton;->reBoot()V

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v1}, Lcom/android/server/policy/global/CancelButton;->reBoot()V

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->stopMarquee()V

    .line 350
    return-void
.end method

.method public setAlaphaWhenDrag(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/global/RebootButton;->setAlaphaWhenDrag(F)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/global/CancelButton;->setAlaphaWhenDrag(F)V

    .line 589
    :cond_1
    return-void
.end method

.method public setAnimatorObjectCallback(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mAnimatorObjectCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    .line 610
    return-void
.end method

.method public setBlackGrident(F)V
    .locals 6
    .param p1, "value"    # F

    .prologue
    .line 242
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    float-to-double v2, v1

    const-wide v4, 0x4003333333333333L    # 2.4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 243
    .local v0, "alpha":I
    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverAlpha:I

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionHostView;->setConverAlpha(I)V

    .line 226
    return-void
.end method

.method public setConverAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 248
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverAlpha:I

    .line 249
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->invalidate()V

    .line 247
    return-void
.end method

.method public setGradientLength(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 205
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    sub-int v0, p1, v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mY0:F

    .line 206
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mY1:F

    .line 207
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->invalidate()V

    .line 204
    return-void
.end method

.method public setMediatorCallback(Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;)V
    .locals 2
    .param p1, "viewMediatorCallback"    # Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    .line 605
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mSwipeHelper:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mSwipeHelper:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->setMediatorCallback(Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;)V

    .line 603
    :cond_0
    return-void
.end method

.method public show(Landroid/animation/Animator$AnimatorListener;)V
    .locals 6
    .param p1, "animationListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v5, 0x1

    .line 287
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/global/RebootButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/global/CancelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    :cond_1
    const-string/jumbo v1, "gradientLength"

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    mul-int/lit8 v3, v3, 0x6

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    aput v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 291
    .local v0, "objectAni":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 292
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 293
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 297
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v1, v5}, Lcom/android/server/policy/global/GlobalActionHandlerView;->show(Z)V

    .line 300
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v1, v5}, Lcom/android/server/policy/global/RebootButton;->show(Z)V

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v1, v5}, Lcom/android/server/policy/global/CancelButton;->show(Z)V

    .line 303
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/policy/global/GlobalActionHostView;->startMarquee(Z)V

    .line 285
    return-void
.end method

.method public startMarquee(Z)V
    .locals 1
    .param p1, "first"    # Z

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mLocked:Z

    if-eqz v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->startMarquee()V

    .line 279
    :cond_1
    return-void
.end method

.method public stopMarquee()V
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mLocked:Z

    if-eqz v0, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->stopMarquee()V

    .line 273
    :cond_1
    return-void
.end method
