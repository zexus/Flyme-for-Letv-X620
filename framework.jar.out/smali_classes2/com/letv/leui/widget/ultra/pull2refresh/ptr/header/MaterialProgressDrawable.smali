.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;,
        Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$EndCurveInterpolator;,
        Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$StartCurveInterpolator;,
        Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$OvalShadow;,
        Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$1;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x535

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_OFFSET_ANGLE:F = 5.0f

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 8.75f

.field private static final CENTER_RADIUS_LARGE:F = 12.5f

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field public static final DEFAULT:I = 0x1

.field private static final EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x1e000000

.field public static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final NUM_POINTS:F = 5.0f

.field private static final SHADOW_RADIUS:F = 3.5f

.field private static final START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.75f


# instance fields
.field private final COLORS:[I

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundColor:I

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mFinishAnimation:Landroid/view/animation/Animation;

.field private mHeight:D

.field private mParent:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mShadow:Landroid/graphics/drawable/ShapeDrawable;

.field private mWidth:D


# direct methods
.method static synthetic -get0()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mParent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRotationCount:F

    return v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;F)F
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRotationCount:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 49
    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$EndCurveInterpolator;

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$EndCurveInterpolator;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$EndCurveInterpolator;)V

    sput-object v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 50
    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$StartCurveInterpolator;

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$StartCurveInterpolator;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$StartCurveInterpolator;)V

    sput-object v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 86
    const v0, -0x36cbc9

    .line 87
    const v1, -0xc8a40f

    .line 88
    const v2, -0x82dc2

    .line 89
    const v3, -0xcb5cb0

    .line 85
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->COLORS:[I

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$1;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;)V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 130
    iput-object p2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mParent:Landroid/view/View;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 132
    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    .line 133
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->COLORS:[I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->updateSizes(I)V

    .line 135
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setupAnimators()V

    .line 129
    return-void
.end method

.method private getRotation()F
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRotation:F

    return v0
.end method

.method private setSizeParameters(DDDDFF)V
    .locals 7
    .param p1, "progressCircleWidth"    # D
    .param p3, "progressCircleHeight"    # D
    .param p5, "centerRadius"    # D
    .param p7, "strokeWidth"    # D
    .param p9, "arrowWidth"    # F
    .param p10, "arrowHeight"    # F

    .prologue
    .line 140
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    .line 141
    .local v1, "ring":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 142
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 143
    .local v2, "screenDensity":F
    float-to-double v4, v2

    mul-double/2addr v4, p1

    iput-wide v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mWidth:D

    .line 144
    float-to-double v4, v2

    mul-double/2addr v4, p3

    iput-wide v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mHeight:D

    .line 145
    double-to-float v3, p7

    mul-float/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 146
    float-to-double v4, v2

    mul-double/2addr v4, p5

    invoke-virtual {v1, v4, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    .line 147
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 148
    mul-float v3, p9, v2

    mul-float v4, p10, v2

    invoke-virtual {v1, v3, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 149
    iget-wide v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mWidth:D

    double-to-int v3, v4

    iget-wide v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mHeight:D

    double-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setInsets(II)V

    .line 150
    iget-wide v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mWidth:D

    invoke-direct {p0, v4, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setUp(D)V

    .line 139
    return-void
.end method

.method private setUp(D)V
    .locals 9
    .param p1, "diameter"    # D

    .prologue
    .line 154
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->init(Landroid/content/Context;)V

    .line 155
    const/high16 v4, 0x3fe00000    # 1.75f

    invoke-static {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->dp2px(F)I

    move-result v3

    .line 156
    .local v3, "shadowYOffset":I
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->dp2px(F)I

    move-result v2

    .line 157
    .local v2, "shadowXOffset":I
    const/high16 v4, 0x40600000    # 3.5f

    invoke-static {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->dp2px(F)I

    move-result v0

    .line 158
    .local v0, "mShadowRadius":I
    new-instance v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$OvalShadow;

    double-to-int v4, p1

    invoke-direct {v1, p0, v0, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$OvalShadow;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;II)V

    .line 159
    .local v1, "oval":Landroid/graphics/drawable/shapes/OvalShape;
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mShadow:Landroid/graphics/drawable/ShapeDrawable;

    .line 160
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 161
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mShadow:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 163
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mShadow:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    int-to-float v5, v0

    int-to-float v6, v2

    int-to-float v7, v3

    const/high16 v8, 0x1e000000

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 153
    return-void
.end method

.method private setupAnimators()V
    .locals 6

    .prologue
    .line 328
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    .line 329
    .local v2, "ring":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;
    new-instance v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$2;

    invoke-direct {v1, p0, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$2;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;)V

    .line 345
    .local v1, "finishRingAnimation":Landroid/view/animation/Animation;
    sget-object v3, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 346
    const-wide/16 v4, 0x29a

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 347
    new-instance v3, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$3;

    invoke-direct {v3, p0, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$3;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 364
    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$4;

    invoke-direct {v0, p0, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$4;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;)V

    .line 390
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 391
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 392
    sget-object v3, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 393
    const-wide/16 v4, 0x535

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 394
    new-instance v3, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$5;

    invoke-direct {v3, p0, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$5;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 413
    iput-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mFinishAnimation:Landroid/view/animation/Animation;

    .line 414
    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 327
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 249
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mShadow:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mShadow:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mShadow:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 255
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 256
    .local v1, "saveCount":I
    iget v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 257
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v2, p1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 258
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 248
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mHeight:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mWidth:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 288
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 5

    .prologue
    .line 293
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 294
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 295
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 296
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    .line 297
    .local v1, "animator":Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 295
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    :cond_1
    const/4 v4, 0x1

    return v4

    .line 301
    .end local v1    # "animator":Landroid/view/animation/Animation;
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setAlpha(I)V

    .line 266
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 194
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    .line 193
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mBackgroundColor:I

    .line 222
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 220
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 271
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2
    .param p1, "colors"    # [I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 234
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 232
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 214
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 213
    return-void
.end method

.method setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 282
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRotation:F

    .line 283
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->invalidateSelf()V

    .line 281
    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1
    .param p1, "startAngle"    # F
    .param p2, "endAngle"    # F

    .prologue
    .line 204
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 205
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 203
    return-void
.end method

.method public showArrow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 186
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 307
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 309
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mFinishAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 305
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 313
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 314
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setRotation(F)V

    .line 322
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 323
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 324
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->mRing:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 319
    return-void
.end method

.method public updateSizes(I)V
    .locals 14
    .param p1, "size"    # I

    .prologue
    const-wide/high16 v2, 0x404c000000000000L    # 56.0

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    .line 174
    if-nez p1, :cond_0

    .line 175
    const-wide/high16 v6, 0x4029000000000000L    # 12.5

    .line 176
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x40c00000    # 6.0f

    move-object v1, p0

    move-wide v4, v2

    .line 175
    invoke-direct/range {v1 .. v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 173
    :goto_0
    return-void

    .line 178
    :cond_0
    const-wide v6, 0x4021800000000000L    # 8.75

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    .line 179
    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x40a00000    # 5.0f

    move-object v1, p0

    move-wide v2, v12

    move-wide v4, v12

    .line 178
    invoke-direct/range {v1 .. v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    goto :goto_0
.end method
